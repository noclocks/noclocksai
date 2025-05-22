# app.R
#  ------------------------------------------------------------------------
# Title : Shiny Assistant App (R + shinychat + Shinylive)
#    By : Jimmy Briggs
#  Date : 2025-05-22
#  ------------------------------------------------------------------------

library(shiny)
library(bslib)
library(shinychat)
library(ellmer)
library(jsonlite)

source("R/extract.R")

ui <- tagList(
  tags$head(
    includeScript("www/shinylive-communication.js")
  ),

  page_sidebar(
    title   = "Shiny App Generator",
    theme   = bs_theme(bootswatch = "flatly"),

    sidebar = sidebar(
      width = 350,
      title = "App Requirements",
      chat_mod_ui("chat", fill = TRUE),
      actionButton("generateShareUrl", "Generate Share URL",
                   class = "btn-outline-secondary w-100 mt-3")
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
  llm <- ellmer::chat_openai(
    model         = "gpt-4o-mini",
    system_prompt = paste(
      "You are a terse R Shiny dev assistant.  ",
      "Given the prior full app code and the user's prompt,",
      "emit a complete, working Shiny app wrapped in <SHINYAPP>…</SHINYAPP>."
    )
  )

  # renderUI once—not needed in server, iframe is in the UI above

  # shinychat module: streams chat back; last_turn() is the S7 object
  last_turn <- chat_mod_server("chat", llm)

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

  # share URL button
  observeEvent(input$generateShareUrl, {
    # pull whatever code is currently in the iframe (if you wired shinyliveCode)
    files <- input$shinyliveCode
    if (length(files)) {
      payload <- jsonlite::toJSON(list(files = files), auto_unbox=TRUE)
      enc     <- base64_enc(charToRaw(payload))
      showModal(modalDialog(
        title = "Shareable URL",
        tags$a(href = paste0("https://shinylive.io/r/editor/#code=", enc),
               "Open in Shinylive", target = "_blank"),
        easyClose = TRUE
      ))
    }
  })
}

shinyApp(ui, server)
