
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
#' A collection of functions for generating prompts.
#'
#' There are functions for generating system prompts and user prompts.
#'
#' `noclocksai` comes with various prompt templates included that can be
#' found under the package's installed `/prompts/` directory or retrieved
#' directly via [pkg_sys_prompt()].
#'
#' @section Prompts:
#'
#' Default Prompt:
#'
#' - `prompt_default_sys()`: Generate the default system prompt for the chat session.
#'
#' Execute R Code Prompts:
#'
#' - `prompt_r_sys()`: Generate the system prompt for executing R code.
#' - `prompt_r_user()`: Generate the user prompt for executing R code.
#'
#' Roxygen Prompts:
#'
#' - `prompt_roxygen_sys()`: Generate the system prompt for Roxygen documentation.
#' - `prompt_roxygen_user()`: Generate the user prompt for Roxygen documentation.
#'
#' Exploratory Data Analysis (EDA) Prompts:
#'
#' - `prompt_eda_sys()`: Generate the system prompt for exploratory data analysis.
#' - `prompt_eda_user()`: Generate the user prompt for exploratory data analysis.
#'
#' Regular Expression (regex) Prompts:
#'
#' - `prompt_regex_sys()`: Generate the system prompt for regular expressions.
#' - `prompt_regex_user()`: Generate the user prompt for regular expressions.
#'
#' Google Maps Prompts:
#'
#' - `prompt_gmaps_sys()`: Generate the system prompt for Google Maps.
#' - `prompt_gmaps_user()`: Generate the user prompt for Google Maps.
#'
#' Database Prompts:
#'
#' - `prompt_db_sys()`: Generate the system prompt for database interaction.
#' - `prompt_db_user()`: Generate the user prompt for database interaction.
#'
#' Synthetic Data Prompts:
#'
#' - `prompt_synthetic_sys()`: Generate the system prompt for synthetic data generation.
#' - `prompt_synthetic_user()`: Generate the user prompt for synthetic data generation.
#'
#' `pkgdown` Prompts:
#'
#' - `prompt_pkgdown_sys()`: Generate the system prompt for the package documentation.
#' - `prompt_pkgdown_user()`: Generate the user prompt for the package documentation.
#'
#' Mermaid Prompts:
#'
#' - `prompt_mermaid_sys()`: Generate the system prompt for a Mermaid diagram.
#' - `prompt_mermaid_user()`: Generate the user prompt for a Mermaid diagram.
#'
#' @param ... Additional arguments passed to the template as data.
#' @param pkg_name,pkg_funcs,existing_yaml Variables passed to the `prompt_pkgdown_user()` function.
#' @param code The R code to be executed for `prompt_r_user()`.
#' @param context The context for the Mermaid diagram for `prompt_mermaid_user()`.
#'
#' @returns
#' All prompt functions return a character string representing the (interpolated) prompt.
#'
#' @seealso [ellmer::interpolate_file()], [pkg_sys_prompt()]
NULL

#' @rdname prompts
#' @export
#' @importFrom ellmer interpolate_file
prompt_default_sys <- function(...) {
  ellmer::interpolate_file(path = pkg_sys("prompts/default/system.prompt.md"))
}

#' @rdname prompts
#' @export
#' @importFrom ellmer interpolate_file
prompt_r_sys <- function() {
  ellmer::interpolate_file(path = pkg_sys("prompts/execute_r_code/system.prompt.md"))
}

#' @rdname prompts
#' @export
#' @importFrom ellmer interpolate_file
prompt_r_user <- function(code) {
  ellmer::interpolate_file(path = pkg_sys("prompts/execute_r_code/user.prompt.md"), code = code)
}

#' @rdname prompts
#' @export
#' @importFrom ellmer interpolate_file
prompt_mermaid_sys <- function() {
  ellmer::interpolate_file(path = pkg_sys("prompts/mermaid/system.prompt.md"))
}

#' @rdname prompts
#' @export
#' @importFrom ellmer interpolate_file
#' @importFrom rlang flatten_chr
prompt_mermaid_user <- function(context = NULL, code = NULL, chart_type = NULL, chart_styles = NULL, ...) {

  if (is.null(context) && is.null(code)) {
    cli::cli_abort("One of {.arg context} or {.arg code} must be provided.")
  }

  if (!is.null(context)) {
    context <- paste(context, collapse = "\n")
  }

  if (!is.null(code)) {
    code <- paste(code, collapse = "\n")
  }

  dots <- list(...)

  if (length(dots) > 0) {
    additional_context <- dots |> rlang::flatten_chr() |> paste(collapse = ", ")
  } else {
    additional_context <- NULL
  }

  # convert NULLs to NAs
  context <- ifelse(is.null(context), NA_character_, context)
  code <- ifelse(is.null(code), NA_character_, code)
  chart_type <- ifelse(is.null(chart_type), NA_character_, chart_type)
  chart_styles <- ifelse(is.null(chart_styles), NA_character_, chart_styles)
  additional_context <- ifelse(is.null(additional_context), NA_character_, additional_context)

  ellmer::interpolate_file(
    path = pkg_sys("prompts/mermaid/user.prompt.md"),
    context = context,
    code = code,
    chart_type = chart_type,
    chart_styles = chart_styles,
    additional_context = additional_context
  )

}

prompt_enhance_markdown_user <- function(markdown) {

  ellmer::interpolate_file(
    path = pkg_sys("prompts/enhance_markdown/user.prompt.md"),
    markdown = markdown
  )

}

#' @rdname prompts
#' @export
#' @importFrom ellmer interpolate_file
prompt_pkgdown_sys <- function() {
  ellmer::interpolate_file(path = pkg_sys("prompts/pkgdown.system.prompt.md"))
}

#' @rdname prompts
#' @export
#' @importFrom ellmer interpolate_file
prompt_pkgdown_user <- function(pkg_name, pkg_funcs, existing_yaml) {
  ellmer::interpolate_file(
    path = pkg_sys("prompts/pkgdown.user.prompt.md"),
    pkg_name = pkg_name,
    pkg_funcs = pkg_funcs,
    existing_yaml = existing_yaml
  )
}

prompt_document_dataset_sys <- function() {
  ellmer::interpolate_file(path = pkg_sys("prompts/document_dataset/system.prompt.md"))
}

prompt_document_dataset_user <- function(data) {
  check_data_frame(data)
  ellmer::interpolate_file(path = pkg_sys("prompts/document_dataset/user.prompt.md"), data = data)
}

prompt_eda_sys <- function() {
  ellmer::interpolate_file(path = pkg_sys("prompts/eda/system.prompt.md"))
}

prompt_eda_user <- function(data) {
  check_data_frame(data)
  ellmer::interpolate_file(path = pkg_sys("prompts/eda/user.prompt.md"), data = data)
}
