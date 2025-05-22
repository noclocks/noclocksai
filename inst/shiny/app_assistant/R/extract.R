
#' Turn a <SHINYAPP>…</SHINYAPP> block into the file list Shinylive expects
#'
#' @param markdown_text A string containing the assistant’s reply
#' @returns A list of lists, each with elements name, content, and type
#' @export
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

#' Extract Code from Markdown
#'
#' @description
#' This function extracts code blocks of a specified language from markdown text.
#'
#' @param text The markdown text containing code blocks.
#' @param lang The language identifier to extract (default: "r").
#'
#' @returns
#' A character string containing the extracted code blocks.
#'
#' @export
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


#' Extract Code Blocks from Markdown
#'
#' This function extracts code blocks of a specified language from markdown text.
#' It handles both uppercase and lowercase language identifiers (e.g., 'R' and 'r').
#'
#' @param markdown_text The markdown text containing code blocks.
#' @param language The language identifier to extract (default: "R").
#'
#' @return A character vector with each element containing a code block.
#' @export
extract_code_blocks <- function(markdown_text, language = "R") {
  # Normalize language for comparison
  language <- tolower(language)

  # Split the text by code block markers
  parts <- strsplit(markdown_text, "```", fixed = TRUE)[[1]]

  # If we have fewer than 3 parts, there's no complete code block
  if (length(parts) < 3) {
    return(character(0))
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
      if (grepl(paste0("^", language, "$"), tolower(first_line))) {
        # Extract the code content after the language identifier (skip first line)
        code_lines <- strsplit(part, "\n")[[1]][-1]
        code_content <- paste(code_lines, collapse = "\n")
        blocks <- c(blocks, code_content)
      }
    }
  }

  return(blocks)
}

#' Merge Code Blocks into a Single String
#'
#' This function extracts code blocks of a specified language from markdown text
#' and merges them into a single string.
#'
#' @param markdown_text The markdown text containing code blocks.
#' @param language The language identifier to extract (default: "R").
#' @param separator String used to join blocks (default: "\n\n").
#'
#' @return A single string containing all merged code blocks.
#' @export
merge_code_blocks <- function(markdown_text, language = "R", separator = "\n\n") {
  blocks <- extract_code_blocks(markdown_text, language)

  if (length(blocks) == 0) {
    return("")
  }

  # Join all blocks with the specified separator
  merged_code <- paste(blocks, collapse = separator)
  return(merged_code)
}

#' Trim Code Block
#'
#' Removes leading/trailing whitespace and empty lines from a code block.
#'
#' @param code The code block to trim.
#'
#' @return A trimmed code block.
#' @export
trim_code <- function(code) {
  # Trim leading/trailing whitespace from each line
  lines <- strsplit(code, "\n", fixed = TRUE)[[1]]
  lines <- trimws(lines)

  # Remove empty lines at the beginning and end
  while (length(lines) > 0 && lines[1] == "") {
    lines <- lines[-1]
  }
  while (length(lines) > 0 && lines[length(lines)] == "") {
    lines <- lines[-length(lines)]
  }

  # Rejoin the lines
  return(paste(lines, collapse = "\n"))
}

#' Format Code Block
#'
#' Uses formatR to format a code block with consistent styling.
#'
#' @param code The code block to format.
#' @param keep_comments Whether to keep comments (default: TRUE).
#' @param style A list of formatting options to override defaults.
#'
#' @return A formatted code block.
#' @export
format_code <- function(code, keep_comments = TRUE, style = list()) {
  # Check if formatR is installed
  if (!requireNamespace("formatR", quietly = TRUE)) {
    warning("formatR package not installed. Returning unformatted code.")
    return(code)
  }

  # Default formatting options
  default_style <- list(
    comment = keep_comments,  # keep or remove comments
    pipe = TRUE,              # use native pipe |>
    arrow = TRUE,             # always use ->
    blank = FALSE,            # remove blank lines
    indent = 2L,              # indent with 2 spaces
    wrap = TRUE,              # wrap lines
    width.cutoff = 80L,       # wrap at 80 characters
    args.newline = TRUE       # place function args on new line
  )

  # Override defaults with any provided style options
  style_opts <- modifyList(default_style, style)

  # Apply formatting options
  formatted <- tryCatch({
    do.call(formatR::tidy_source,
            c(list(text = code, output = FALSE), style_opts))$text.tidy
  }, error = function(e) {
    warning("Error formatting code: ", e$message)
    return(code)  # Return original code if formatting fails
  })

  # Join lines if formatting was successful
  if (is.character(formatted) && length(formatted) > 0) {
    formatted <- paste(formatted, collapse = "\n")
  } else {
    formatted <- code  # Return original if something went wrong
  }

  return(formatted)
}

#' Extract and Format Code Blocks
#'
#' Extracts code blocks of a specified language from markdown text,
#' formats each block, and merges them.
#'
#' @param markdown_text The markdown text containing code blocks.
#' @param language The language identifier to extract (default: "R").
#' @param keep_comments Whether to keep comments when formatting (default: TRUE).
#' @param style A list of formatting options for format_code.
#' @param separator String used to join blocks (default: "\n\n").
#'
#' @return A single string containing all merged and formatted code blocks.
#' @export
extract_and_format_code <- function(markdown_text, language = "R",
                                    keep_comments = TRUE,
                                    style = list(),
                                    separator = "\n\n") {
  blocks <- extract_code_blocks(markdown_text, language)

  if (length(blocks) == 0) {
    return("")
  }

  # First trim each block
  blocks <- sapply(blocks, trim_code)

  # Then format each block
  if (requireNamespace("formatR", quietly = TRUE)) {
    blocks <- sapply(blocks, function(block) {
      format_code(block, keep_comments, style)
    })
  }

  # Join all blocks with the specified separator
  merged_code <- paste(blocks, collapse = separator)
  return(merged_code)
}

#' Write Extracted Code to a File
#'
#' Extracts code blocks, formats them, and writes to a file.
#'
#' @param markdown_text The markdown text containing code blocks.
#' @param file The output file path.
#' @param language The language identifier to extract (default: "R").
#' @param format Whether to format the code (default: TRUE).
#' @param style A list of formatting options.
#'
#' @return Invisibly returns TRUE if successful, FALSE otherwise.
#' @export
write_code_to_file <- function(markdown_text, file, language = "R",
                               format = TRUE, style = list()) {
  if (format && requireNamespace("formatR", quietly = TRUE)) {
    code <- extract_and_format_code(markdown_text, language, TRUE, style)
  } else {
    code <- merge_code_blocks(markdown_text, language)
  }

  if (code == "") {
    warning("No code blocks found for language: ", language)
    return(invisible(FALSE))
  }

  # Write to file
  status <- tryCatch({
    writeLines(code, file)
    TRUE
  }, error = function(e) {
    warning("Error writing to file: ", e$message)
    FALSE
  })

  return(invisible(status))
}
