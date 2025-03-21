library(shiny)
library(shinychat)
library(ellmer)
library(bslib)
library(htmltools)
library(jsonlite)

source("R/extract.R")

ui <- tagList(
  tags$head(
    tags$script(
      src = "shinylive-communication.js")
  ),
  page_sidebar(
    title = "Shiny App Generator",
    theme = bs_theme(bootswatch = "flatly"),
    sidebar = sidebar(
      width = 350,
      title = "App Requirements",
      chat_ui("chat", fill = TRUE),
      actionButton(
        "generate",
        "Generate Shiny App",
        class = "btn-primary btn-lg w-100 mt-3",
        icon = icon("robot")
      ),
      hr(),
      checkboxInput("showCode", "Show Code", value = TRUE),
      checkboxInput("showApp", "Show App", value = TRUE),
      tags$div(
        class = "text-muted mt-3",
        tags$p("This app uses AI to generate Shiny code based on your description."),
        tags$p("The generated app will be displayed in a shinylive iframe.")
      )
    ),
    card(
      full_screen = TRUE,
      card_header("Generated Shiny App"),
      card_body(
        tags$iframe(
          id = "shinylive-frame",
          src = "https://shinylive.io/r/editor/",
          width = "100%",
          height = "600px",
          style = "border: 1px solid #ddd;",
          allow = "clipboard-write"
        )
      ),
      card_footer(
        actionButton("copyCode", "Copy Code", class = "btn-primary"),
        actionButton("updateShinylive", "Update Preview", class = "btn-primary mt-3")
      )
    )
  )
)

server <- function(input, output, session) {
  # Initialize ellmer chat
  llm <- chat_openai(
    model = "gpt-4o-mini",
    system_prompt = "You are an expert R Shiny developer. Create clean, efficient Shiny apps based on user requests.
    Always provide complete, working code. Use modern Shiny practices and bslib for UI.
    Keep your explanations brief and focus on delivering working code."
  )

  # Store all files
  files <- reactiveVal(list(
    "app.R" = list(
      name = "app.R",
      content = "library(shiny)\n\nui <- fluidPage(\n  titlePanel(\"My Shiny App\")\n)\n\nserver <- function(input, output, session) {\n  \n}\n\nshinyApp(ui, server)",
      type = "text"
    )
  ))

  # Process user chat input and generate code
  observeEvent(input$chat_user_input, {
    user_message <- input$chat_user_input

    # Create a streaming response
    stream <- llm$stream_async(user_message)

    # Display the streaming response in the chat
    chat_append("chat", stream)

    # coro::async(function() {
    #   full_response <- ""
    #   for (chunk in stream) {
    #     full_response <- paste0(full_response, chunk)
    #   }
    #
    #   clean_code <- extract_and_format_code(full_response)
    #   if (length(clean_code) > 0) {
    #     current_tab <- input$codeTabset
    #     if (!is.null(current_tab) && current_tab != "+ New File") {
    #       new_files <- files()
    #       new_files[[current_tab]]$content <- clean_code
    #       files(new_files)
    #     }
    #   }
    # })()

    # get non-streaming response
    response <- llm$chat(user_message)
    print("LLM Response (first 100 chars):")
    print(substr(response, 1, 100))

    # extract code
    code <- extract_and_format_code(response)
    print(paste("Extracted code length:", length(code)))

    if (length(code) > 0) {
      # Update the files reactive value
      new_files <- files()
      new_files[["app.R"]]$content <- code
      files(new_files)
      session$sendCustomMessage("updateShinylive", files())
    }

  })

  # Send code to Shinylive
  observeEvent(input$updateShinylive, {

    print("Update button clicked")
    print(str(files()))

    file_list <- lapply(files(), function(file) {
      list(
        name = file$name,
        content = file$content,
        type = file$type
      )
    })

    print("Sending to Shinylive:")
    print(str(file_list))

    session$sendCustomMessage("sendToShinylive", list(
      files = file_list
    ))

  })

  # Get code from Shinylive
  observeEvent(input$getFromShinylive, {
    session$sendCustomMessage("getFromShinylive", list())
  })

  # Handle received files from Shinylive
  observeEvent(input$shinyliveCode, {
    receivedFiles <- input$shinyliveCode
    new_files <- files()

    for (file in receivedFiles) {
      new_files[[file$name]] <- file

      # Create output for the file if it doesn't exist
      output_id <- paste0(gsub("\\.", "_", file$name), "Code")

      # Update existing output or create new one
      output[[output_id]] <- renderText({ file$content })

      # Add new tab if it doesn't exist
      if (!file$name %in% names(files())) {
        insertTab(
          inputId = "codeTabset",
          tabPanel(file$name, verbatimTextOutput(output_id)),
          target = "+ New File",
          position = "before"
        )
      }
    }

    files(new_files)
  })

  # Generate share URL
  observeEvent(input$generateShareUrl, {
    file_list <- lapply(files(), function(file) {
      list(
        name = file$name,
        content = file$content,
        type = file$type
      )
    })

    encoded <- base64_enc(charToRaw(toJSON(list(files = file_list), auto_unbox = TRUE)))
    shareUrl <- paste0("https://shinylive.io/r/editor/#code=", encoded)
    updateTextInput(session, "shareUrl", value = shareUrl)
  })
}

shinyApp(ui, server)
