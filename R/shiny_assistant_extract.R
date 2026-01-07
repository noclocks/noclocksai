#' Code Extraction Functions for Shiny Assistant
#'
#' @description
#' Functions for extracting and processing code from markdown text,
#' specifically designed for use with the Shiny Assistant app.
#'
#' @name shiny_assistant_extract
NULL

#' Extract Shiny App Code from Markdown
#'
#' @description
#' Extracts Shiny app code from markdown text contained within
#' <SHINYAPP>...</SHINYAPP> tags and formats it for Shinylive.
#'
#' @param markdown_text Character string containing the markdown text
#' @return List of file objects for Shinylive (each with name, content, type)
#' @export
#'
#' @examples
#' \dontrun{
#' markdown <- "<SHINYAPP>\n```r\nlibrary(shiny)\nui <- fluidPage('Hello')\nserver <- function(input, output) {}\nshinyApp(ui, server)\n```\n</SHINYAPP>"
#' files <- shinyapp_tag_contents_to_filecontents(markdown)
#' }
shinyapp_tag_contents_to_filecontents <- function(markdown_text) {
  # 1) pull out the first <SHINYAPP>…</SHINYAPP> (or return empty)
  m <- regexpr("(?s)<SHINYAPP[^>]*>(.*?)</SHINYAPP>", markdown_text, perl = TRUE)
  if (m < 0) return(list())

  inner <- regmatches(markdown_text, m)
  # strip the tags
  inner <- sub("(?s)<SHINYAPP[^>]*>(.*?)</SHINYAPP>", "\\1", inner, perl = TRUE)

  # 2) extract any ```r ... ``` or ```R ... ``` blocks
  code_matches <- gregexpr("(?s)```[rR]?\\s*(.*?)```", inner, perl = TRUE)
  blocks       <- regmatches(inner, code_matches)[[1]]
  if (length(blocks) == 0) {
    # if no fenced blocks, treat entire inner as code
    code <- inner
  } else {
    # strip the fences
    code <- vapply(blocks,
                   function(b) sub("(?s)```[rR]?\\s*(.*?)```", "\\1", b, perl = TRUE),
                   character(1))
    code <- paste(code, collapse = "\n\n")
  }

  # 3) return as a single-file list
  list(
    list(
      name    = "app.R",
      content = code,
      type    = "application/R"
    )
  )
}

#' Extract Code Blocks from Markdown
#'
#' @description
#' Extracts code blocks of a specified language from markdown text.
#'
#' @param text Character string containing markdown text
#' @param lang Character string specifying the language (default: "r")
#' @return Character string with extracted code, or NULL if none found
#' @export
#'
#' @examples
#' \dontrun{
#' text <- "Some text\n```r\nprint('hello')\n```\nMore text"
#' code <- extract_code(text, "r")
#' }
extract_code <- function(text, lang = "r") {
  # Split the text by code block markers
  parts <- strsplit(text, "```", fixed = TRUE)[[1]]

  # If we have fewer than 3 parts, there's no complete code block
  if (length(parts) < 3) {
    return(NULL)
  }

  blocks <- character(0)

  # Process every other part starting from the second part
  for (i in seq(2, length(parts), 2)) {
    if (i <= length(parts)) {
      part <- parts[i]
      # Get the first line to check the language
      first_line <- strsplit(part, "\n")[[1]][1]
      first_line <- trimws(first_line)

      # Check if this part starts with the language identifier (case insensitive)
      if (grepl(paste0("^", lang, "$"), tolower(first_line))) {
        # Extract the code content after the language identifier (skip first line)
        code_lines <- strsplit(part, "\n")[[1]][-1]
        code_content <- paste(code_lines, collapse = "\n")
        blocks <- c(blocks, code_content)
      }
    }
  }

  # Return NULL if no blocks found
  if (length(blocks) == 0) {
    return(NULL)
  }

  # Join all blocks with a newline
  return(paste(blocks, collapse = "\n"))
}

#' Extract Multiple Code Blocks
#'
#' @description
#' Extracts multiple code blocks of a specified language from markdown text.
#'
#' @param markdown_text Character string containing markdown text
#' @param language Character string specifying the language (default: "R")
#' @return Character vector with each element containing a code block
#' @export
extract_code_blocks <- function(markdown_text, language = "R") {
  # Pattern to match code blocks
  pattern <- sprintf("```%s\\s*\\n(.*?)\\n```", language)

  # Extract all matches
  matches <- gregexpr(pattern, markdown_text, perl = TRUE, ignore.case = TRUE)

  if (matches[[1]][1] == -1) {
    return(character(0))
  }

  # Extract the code content (group 1)
  code_blocks <- regmatches(markdown_text, matches)[[1]]

  # Clean up the blocks (remove fences)
  code_blocks <- gsub(sprintf("```%s\\s*\\n|\\n```", language), "", code_blocks, ignore.case = TRUE)

  return(code_blocks)
}
