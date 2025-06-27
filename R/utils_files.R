#' Parse `<SHINYAPP>` blocks into multiple file entries
#'
#' This function looks for `<FILE name="...">...</FILE>` tags inside a `<SHINYAPP>` block
#' and returns a list of file descriptors (name, content, type). If no explicit `<FILE>`
#' tags are found, it falls back to emitting a single "app.R" entry.
#'
#' @param text A single string containing the entire <SHINYAPP> block, including tags.
#' @returns A list of lists with elements:
#'   - name: The filename (e.g., "ui.R", "server.R").
#'   - content: The code/text inside the file.
#'   - type: File extension (lowercase, e.g. "r", "js", "html").
#' @export
#' @importFrom stringr str_match_all
#' @importFrom purrr map2
#' @importFrom rlang abort
extract_files <- function(text) {
  # look for FILE tags
  pattern <- "<FILE[^>]*name=\"([^\"]+)\"[^>]*>([\\s\\S]*?)</FILE>"
  matches <- stringr::str_match_all(text, pattern)[[1]]

  if (nrow(matches) > 0) {
    files <- purrr::map2(
      matches[, 2], # file name
      matches[, 3], # file content
      function(name, content) {
        ext <- tolower(tools::file_ext(name))
        list(
          name = name,
          content = content,
          type = if (nzchar(ext)) ext else "r"
        )
      }
    )
    return(files)
  }

  # fallback: no explicit FILE blocks
  if (!stringr::str_detect(text, "<SHINYAPP>.*</SHINYAPP>")) {
    rlang::abort("Input does not contain a <SHINYAPP> block.")
  }

  # strip outer tags
  inner <- stringr::str_replace_all(
    text,
    "(?s)^.*?<SHINYAPP>\\s*|\\s*</SHINYAPP>.*$", ""
  )

  list(list(
    name = "app.R",
    content = inner,
    type = "r"
  ))
}

#' Turn a `<SHINYAPP>…</SHINYAPP>` block into the file list shinylive expects
#'
#' @param markdown_text A string containing the assistant’s reply
#' @returns A list of lists, each with elements name, content, and type
#' @export
shinyapp_tag_contents_to_filecontents <- function(markdown_text) {
  # 1) pull out the first <SHINYAPP>…</SHINYAPP> block
  m <- regexpr("(?s)<SHINYAPP[^>]*>.*?</SHINYAPP>", markdown_text, perl = TRUE)
  if (m < 0) {
    return(list())
  }

  # 2) grab the full block (including tags)
  block <- regmatches(markdown_text, m)

  # 3) parse into individual files
  files <- extract_files(block)

  # 4) return list of file descriptors
  files
}
