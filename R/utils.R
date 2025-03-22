
#  ------------------------------------------------------------------------
#
# Title : General Utilities
#    By : Jimmy Briggs
#  Date : 2025-02-25
#
#  ------------------------------------------------------------------------



# environment -----------------------------------------------------------------------------------------------------

env_is_testing <- function() {
  Sys.getenv("TESTTHAT") == "true"
}

env_is_rstudio <- function() {
  Sys.getenv("RSTUDIO") == "true"
}

env_is_positron <- function() {
  Sys.getenv("POSITRON") == "true"
}

env_is_github <- function() {
  Sys.getenv("GITHUB_ACTIONS") == "true"
}

env_is_vscode <- function() {
  Sys.getenv("VSCODE_IPYNB_PATH") != ""
}


`%||%` <- function(x, y) if (is.null(x)) y else x


# lists -----------------------------------------------------------------------------------------------------------

view_list <- function(list, ...) {

  listviewer::jsonedit(list, ...)

}


# R code evaluation -----------------------------------------------------------------------------------------------



evaluate_r_code <- function(code, on_console_out, on_console_err, on_plot, on_dataframe) {

  cli::cli_alert_info("Running R Code...\n")
  cli::cli_alert_info("Code: {cat(code, '\n', sep = '')}")

  evaluate::evaluate(
    code,
    envir = globalenv(),
    stop_on_error = 1L,
    output_handler = evaluate::new_output_handler(
      text = function(value) {
        on_console_out(as_str(value))
      },
      graphics = function(recorded_plot) {
        plot <- recorded_plot_to_png(recorded_plot)
        on_plot(plot$mime, plot$content)
      },
      message = function(cond) {
        on_console_out(as_str(conditionMessage(cond), "\n"))
      },
      warning = function(cond) {
        on_console_out(as_str("Warning: ", conditionMessage(cond), "\n"))
      },
      error = function(cond) {
        on_console_out(as_str("Error: ", conditionMessage(cond), "\n"))
      },
      value = function(value) {
        if (is.data.frame(value)) {
          on_dataframe(value)
        } else {
          printed_str <- as_str(capture.output(print(value)))
          if (nchar(printed_str) > 0 && !grepl("\n$", printed_str)) {
            printed_str <- paste0(printed_str, "\n")
          }
          on_console_out(printed_str)
        }
      }
    )
  )
  invisible()
}

#' Save a recorded plot to base64 encoded PNG
#'
#' @param recorded_plot Recorded plot to save
#' @param ... Additional arguments passed to [png()]
#' @noRd
recorded_plot_to_png <- function(recorded_plot, ...) {
  plot_file <- tempfile(fileext = ".png")
  on.exit(if (plot_file != "" && file.exists(plot_file)) unlink(plot_file))

  png(plot_file, ...)
  tryCatch(
    {
      replayPlot(recorded_plot)
    },
    finally = {
      dev.off()
    }
  )

  # Convert the plot to base64
  plot_data <- base64enc::base64encode(plot_file)
  list(mime = "image/png", content = plot_data)
}


# encoding --------------------------------------------------------------------------------------------------------

encode_df <- function(df, max_rows = 100, show_end = 10) {
  if (nrow(df) == 0) {
    return(paste(collapse = "\n", capture.output(print(tibble::as.tibble(df)))))
  }
  if (nrow(df) <= max_rows) {
    return(df_to_json(df))
  }
  head_rows <- df[1:max_rows, ]
  tail_rows <- df[(nrow(df) - show_end + 1):nrow(df), ]
  paste(collapse = "\n", c(
    df_to_json(head_rows),
    sprintf("... %d rows omitted ...", nrow(df) - max_rows),
    df_to_json(tail_rows))
  )
}

df_to_json <- function(df) {
  jsonlite::toJSON(df, dataframe = "rows", na = "string")
}

# pkg_sys ---------------------------------------------------------------------------------------------------------

#' Package System File
#'
#' @rdname pkg_sys
#'
#' @description
#' Get the path to a system file within the package.
#'
#' Various other `pkg_sys_*` functions are available to help with specific file paths:
#'
#' - `pkg_sys_template()`: Get the path to a template file.
#' - `pkg_sys_prompt()`: Get the path to a prompt file.
#' - `pkg_sys_extdata()`: Get the path to an external data file.
#' - `pkg_sys_config()`: Get the path to a configuration file.
#' - `pkg_sys_database()`: Get the path to a database file.
#' - `pkg_sys_www()`: Get the path to a `www` (i.e. Shiny App Resource) file.
#'
#' @param ... Additional arguments passed to `system.file()`.
#'
#' @returns
#' A character string representing the path to the system file.
#'
#' @export
#'
#' @importFrom fs path
#'
#' @examples
#' # retrieve the path to the package configuration file
#' pkg_sys("config/config.yml")
#'
#' # or use the shorthand function dedicated for configs
#' pkg_sys_config("config.yml")
pkg_sys <- function(...) {
  system.file(..., package = "noclocksai")
}

#' @rdname pkg_sys
#' @export
pkg_sys_template <- function(...) {
  pkg_sys(fs::path("templates", ...))
}

#' @rdname pkg_sys
#' @export
pkg_sys_prompt <- function(...) {
  pkg_sys(fs::path("prompts", ...))
}

#' @rdname pkg_sys
#' @export
pkg_sys_extdata <- function(...) {
  pkg_sys(fs::path("extdata", ...))
}

#' @rdname pkg_sys
#' @export
pkg_sys_config <- function(...) {
  pkg_sys(fs::path("config", ...))
}

#' @rdname pkg_sys
#' @export
pkg_sys_database <- function(...) {
  pkg_sys(fs::path("db", ...))
}

#' @rdname pkg_sys
#' @export
pkg_sys_www <- function(...) {
  pkg_sys(fs::path("www", ...))
}

# regex patterns / extraction -------------------------------------------------------------------------------------

#' Get Regex Code Pattern
#'
#' @description
#' Get a regular expression pattern for extracting code blocks from a markdown string.
#'
#' For example, to extract R code from a string, you need a pattern to match the following:
#'
#' ````
#' ```R
#' # some R code
#' ```
#' ````
#'
#' This function returns a pattern that can be used to extract the code block from the string.
#'
#' In the above example with R code the pattern would be: `(?s)(?<=```(r|R)\n).*?(?=```)`.
#'
#' @param lang The language of the code block to extract. If left `NULL`, the pattern will match any language
#'   using a wildcard `.*?` to match the language name.
#'
#' @returns
#' A regular expression pattern for extracting code blocks from a markdown string.
#'
#' @export
#'
#' @importFrom glue glue
#'
#' @examples examples/ex_get_regex_code_pattern.R
get_regex_code_pattern <- function(lang = NULL) {

  if (is.null(lang)) return("(?s)(?<=```).*?(?=```)")

  lang_match <- paste0("(", tolower(lang), "|", toupper(lang), ")")

  glue::glue("(?s)(?<=```{lang_match}\\n).*?(?=```)")
}

#' Extract Code
#'
#' @description
#' Extract code blocks from a markdown string.
#'
#' This function extracts code blocks from a markdown string using a regular expression pattern.
#'
#' @param text A character string representing the text to extract code blocks from.
#'
#' @param lang The language of the code block to extract. If left `NULL`, the pattern will attempt to
#'   match any language.
#'
#' @param print Logical. If `TRUE`, the extracted code block content will be printed to the console.
#'   Defaults to `FALSE`.
#'
#' @returns
#' A character string representing the extracted code block content.
#'
#' @export
#'
#' @seealso [get_regex_code_pattern()] for more information on the regular expression pattern used to extract code blocks.
#'
#' @importFrom stringr str_extract
#' @importFrom cli cli_abort
#'
#' @examples examples/ex_extract_code.R
extract_code <- function(text, lang = NULL, print = FALSE) {

  pattern <- get_regex_code_pattern(lang)
  content <- stringr::str_extract(text, pattern)

  if (length(content) == 0) {
    cli::cli_abort("No code block content found in provided {.arg resp} argument.")
  }

  if (print) cat(content, sep = "\n")

  content
}
