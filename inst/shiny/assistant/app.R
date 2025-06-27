# app.R
#  ------------------------------------------------------------------------
#  Title : Shiny Assistant App
#     By : Jimmy Briggs
#   Date : 2025-05-22
#  ------------------------------------------------------------------------

library(shiny)
library(bslib)
library(shinychat)
library(ellmer)
library(jsonlite)
library(base64enc)
library(stringr)
library(qs2)
library(tibble)
library(noclocksai)

ui <- tagList(
  tags$head(
    includeScript(system.file("www", "shinylive-communication.js", package = "noclocksai"))
  ),

  page_sidebar(
    title   = "Shiny App Generator",
    theme   = bs_theme(bootswatch = "flatly"),

    sidebar = sidebar(
      width = 350,
      title = "App Requirements",
      chat_mod_ui("chat", fill = TRUE),
      hr(),
      actionButton("clearEditor", "Clear Editor",
                   class = "btn-outline-warning w-100",
                   icon = icon("trash")),
      br(), br(),
      accordion(
        accordion_panel(
          title = "Package Tools",
          textInput("packageCheck", "Check specific packages:",
                    placeholder = "e.g., ggplot2, dplyr, leaflet"),
          div(class = "d-grid gap-2",
            actionButton("checkPackages", "Check Packages",
                         class = "btn-outline-info btn-sm"),
            actionButton("browsePackages", "Browse All Available",
                         class = "btn-outline-success btn-sm")
          )
        )
      ),
      br(),
      div(
        style = "font-size: 0.8em; color: #666;",
        p("💡 Tips:"),
        tags$ul(
          tags$li("Ask for specific Shiny components"),
          tags$li("Request modern UI with bslib"),
          tags$li("Mention specific packages you want to use"),
          tags$li("Code updates automatically"),
          tags$li("Use Shinylive's built-in Share button ↗️")
        )
      )
    ),

    card(
      full_screen  = TRUE,
      card_header  = "Live Shinylive Preview",
      card_body(
        # match this id exactly in JS!
        tags$iframe(
          id      = "shinylive-frame",
          src     = "https://shinylive.io/r/editor/",
          width   = "100%", height = "600px",
          style   = "border:1px solid #ddd;",
          allow   = "clipboard-write"
        )
      )
    )
  )
)

server <- function(input, output, session) {
  # Initialize chat with ellmer
  chat <- ellmer::chat_openai(
    model = "gpt-4o-mini",
    system_prompt = create_enhanced_system_prompt()
  )

  # shinychat module
  last_turn <- chat_mod_server("chat", chat)

  # track current editor content for context
  current_code <- reactiveVal("")

  observeEvent(input$editor_code, {
    if (length(input$editor_code) > 0 && !is.null(input$editor_code[[1]]$content)) {
      current_code(input$editor_code[[1]]$content)
    }
  })

  # intercept chat messages to check package availability
  observeEvent(input$`chat-user_input`,
    {
      user_message <- input$`chat-user_input`
      if (!is.null(user_message) && nchar(user_message) > 0) {
        # Extract potential package names from user message
        packages <- extract_package_names(user_message)

        if (length(packages) > 0) {
          # Generate detailed context for AI
          ai_context <- generate_package_context_for_ai(packages)

          if (nchar(ai_context) > 0) {
            # Show user-friendly notification
            simple_availability <- check_webr_packages(packages)
            available <- names(simple_availability)[simple_availability]
            unavailable <- names(simple_availability)[!simple_availability]

            notification_msg <- "Package Check:\n"
            if (length(available) > 0) {
              notification_msg <- paste0(notification_msg, "✅ Available: ", paste(available, collapse = ", "), "\n")
            }
            if (length(unavailable) > 0) {
              notification_msg <- paste0(notification_msg, "❌ Check dependencies: ", paste(unavailable, collapse = ", "))
            }

            showNotification(
              HTML(gsub("\n", "<br>", notification_msg)),
              duration = 6,
              type = if (length(unavailable) > 0) "warning" else "message"
            )

            # TODO: Inject ai_context into the LLM conversation
            # This would require ellmer to support context injection
            # For now, we prepare the context for potential future use
            cat("AI Context prepared:\n", ai_context, "\n")
          }
        }
      }
    },
    ignoreInit = TRUE
  )

  # whenever the assistant finishes, extract and push code
  observeEvent(last_turn(), {
    # get clean Markdown
    md    <- ellmer::contents_markdown(last_turn())
    # extract code from <SHINYAPP>…</SHINYAPP>
    files <- shinyapp_tag_contents_to_filecontents(md)

    if (length(files)) {
      # force type="text" so Shinylive treats it as UTF-8 text
      files <- lapply(files, function(f) {
        f$type <- "text"
        # just in case, strip any \0 bytes in the content
        f$content <- gsub("\\x00", "", f$content, perl=TRUE)
        f
      })

      # push it into the iframe
      session$sendCustomMessage("set-shinylive-content", list(files = files))
    }
  })

  # clear editor button
observeEvent(input$clearEditor, {
  showModal(modalDialog(
    title = "Clear Editor?",
    "This will remove all code from the Shinylive editor. Continue?",
    footer = tagList(
      modalButton("Cancel"),
      actionButton("confirmClear", "Clear", class = "btn-warning")
    )
  ))
})

observeEvent(input$confirmClear, {
  empty_files <- list(list(name = "app.R", content = "", type = "text"))
  session$sendCustomMessage("set-shinylive-content", list(files = empty_files))
  removeModal()
  showNotification("Editor cleared!", type = "message")
})

# package availability checker
observeEvent(input$checkPackages, {
  packages_input <- input$packageCheck
  if (!is.null(packages_input) && nchar(trimws(packages_input)) > 0) {
    packages <- trimws(strsplit(packages_input, ",")[[1]])
    packages <- packages[packages != ""]

    if (length(packages) > 0) {
      # Show loading notification
      loading_id <- showNotification("Analyzing packages...",
        duration = NULL, type = "message"
      )

      tryCatch({
        analysis <- analyze_package_dependencies(packages)
        removeNotification(loading_id)

        if (analysis$status == "error") {
          showModal(modalDialog(
            title = "Package Analysis Error",
            div(class = "alert alert-danger", analysis$message),
            footer = modalButton("Close"),
            easyClose = TRUE
          ))
          return()
        }

        # Create detailed results
        modal_content <- div()

        for (pkg in packages) {
          result <- analysis$results[[pkg]]

          # Package header
          status_class <- if (result$available) "success" else "danger"
          status_icon <- if (result$available) "✅" else "❌"

          pkg_section <- div(class = "mb-3",
            h5(class = paste0("text-", status_class),
               status_icon, " ", pkg),
            p(class = "mb-1", strong("Status: "), result$reason)
          )

          # Dependencies info
          if (length(result$dependencies) > 0) {
            pkg_section <- tagList(pkg_section,
              p(class = "mb-1",
                strong("Dependencies (", length(result$dependencies), "): "),
                paste(result$dependencies, collapse = ", ")
              )
            )
          }

          # Missing dependencies
          if (length(result$missing_deps) > 0) {
            pkg_section <- tagList(pkg_section,
              div(class = "alert alert-warning py-2",
                strong("Missing: "),
                paste(result$missing_deps, collapse = ", ")
              )
            )

            # Suggest alternatives
            alternatives <- suggest_package_alternatives(pkg)
            if (length(alternatives) > 0) {
              pkg_section <- tagList(pkg_section,
                div(class = "alert alert-info py-2",
                  strong("Consider alternatives: "),
                  paste(alternatives, collapse = ", ")
                )
              )
            }
          }

          modal_content <- tagList(modal_content, pkg_section, hr())
        }

        showModal(modalDialog(
          title = paste("Package Analysis -", length(packages), "package(s)"),
          size = "l",
          modal_content,
          footer = modalButton("Close"),
          easyClose = TRUE
        ))

      }, error = function(e) {
        removeNotification(loading_id)
        showNotification(paste("Analysis error:", e$message), type = "error")
      })

    }
  } else {
    showNotification("Please enter package names to check", type = "warning")
  }
})
# browse all packages button
observeEvent(input$browsePackages, {
  # Show loading notification
  loading_id <- showNotification("Loading package list...",
    duration = NULL, type = "message"
  )

  # Get detailed package info
  tryCatch(
    {
      pkg_info <- get_webr_package_details()

      removeNotification(loading_id)

      showModal(modalDialog(
        title = paste("webR Package Repository -", pkg_info$total_count, "packages available"),
        size = "l",
        div(
          h4("Popular Data Science Packages Available:"),
          tags$div(
            class = "mb-3",
            lapply(pkg_info$popular_available, function(pkg) {
              tags$span(class = "badge bg-success me-1 mb-1", pkg)
            })
          ),
          h4("Sample of All Available Packages:"),
          tags$div(
            class = "mb-3", style = "max-height: 300px; overflow-y: auto; font-family: monospace; font-size: 0.9em;",
            paste(pkg_info$sample_packages, collapse = ", ")
          ),
          hr(),
          p(
            class = "text-muted small",
            "Last updated:", pkg_info$last_updated,
            br(),
            "Full list available at: ",
            tags$a(
              href = "https://repo.r-wasm.org/", target = "_blank",
              "repo.r-wasm.org"
            )
          )
        ),
        footer = tagList(
          actionButton("refreshPackages", "Refresh List", class = "btn-outline-secondary"),
          modalButton("Close")
        ),
        easyClose = TRUE
      ))
    },
    error = function(e) {
      removeNotification(loading_id)
      showNotification(paste("Error loading packages:", e$message), type = "error")
    }
  )
})

# refresh packages button within modal
observeEvent(input$refreshPackages, {
  pkg_info <- get_webr_package_info(refresh_cache = TRUE)
  showNotification("Package list refreshed!", type = "success")
  removeModal()
})
}

shinyApp(ui, server)
