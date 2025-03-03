
#  ------------------------------------------------------------------------
#
# Title : General Utilities
#    By : Jimmy Briggs
#  Date : 2025-02-25
#
#  ------------------------------------------------------------------------

#' Package System File
#'
#' @description
#' Get the path to a system file within the package.
#'
#' @param ... Additional arguments passed to `system.file()`.
#'
#' @returns
#' A character string representing the path to the system file.
#'
#' @export
#'
#' @examples
#' pkg_sys("config/config.yml")
pkg_sys <- function(...) {
  system.file(..., package = "noclocksai")
}

extract_yaml <- function(resp) {

  yaml_pattern <- "```yaml\n(.*?)```"
  yaml_content <- stringr::str_extract(resp, stringr::regex(yaml_pattern, dotall = TRUE)) |>
    stringr::str_remove_all("```yaml") |>
    stringr::str_remove_all("```")

  if (length(yaml_content) == 0) {
    cli::cli_alert_danger("No YAML content found in response.")
    return(NULL)
  }

  yaml_content

}
