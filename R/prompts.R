
#  ------------------------------------------------------------------------
#
# Title : Prompts
#    By : Jimmy Briggs
#  Date : 2025-02-28
#
#  ------------------------------------------------------------------------

#' Prompts
#'
#' @name prompts
#'
#' @description
#' A collection of functions for generating prompts for the chat agent.
#'
#' Functions:
#'
#' - `prompt_default_sys()`: Generate the default system prompt for the chat session.
#'
#' @param ... Additional arguments passed to the template as data.
#'
#' @returns
#' - `prompt_default_sys()`: A character string representing the default system prompt.
#'
#' @seealso [ellmer::interpolate_file()]
NULL

#' @rdname prompts
#' @export
#' @importFrom ellmer interpolate_file
prompt_default_sys <- function(...) {
  ellmer::interpolate_file(path = pkg_sys("prompts/default.system.prompt.md"))
}

prompt_pkgdown_sys <- function() {
  ellmer::interpolate_file(path = pkg_sys("prompts/pkgdown.system.prompt.md"))
}

prompt_pkgdown_user <- function(pkg_name, pkg_funcs, existing_yaml) {
  ellmer::interpolate_file(
    path = pkg_sys("prompts/pkgdown.user.prompt.md"),
    pkg_name = pkg_name,
    pkg_funcs = pkg_funcs,
    existing_yaml = existing_yaml
  )
}
