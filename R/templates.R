
#  ------------------------------------------------------------------------
#
# Title : Templates
#    By : Jimmy Briggs
#  Date : 2025-02-28
#
#  ------------------------------------------------------------------------

render_template <- function(template_name, data) {

  template_path <- system.file(
    paste0("prompts/", template_name, "user.prompt.md"),
    package = "noclocksai"
  )

  template <- paste(
    readLines(
      template_path,
      encoding = "UTF-8",
      warn = FALSE
    ),
    collapse = "\n"
  )

  # determine if the template has any variables
  template_variables <- extract_template_variables(template)

  if (length(template_variables$variables) > 0) {
    for (variable in template_variables$variables) {
      if (!exists(variable, where = data)) {
        if (!exists(paste0("has_", variable), where = data)) {
          data[[paste0("has_", variable)]] <- FALSE
        }
      }
    }
  }

  whisker::whisker.render(
    template,
    data
  )

}

extract_template_variables <- function(template) {

  variables <- stringr::str_extract_all(template, "\\{\\{([a-z_]+)\\}\\}") |>
    purrr::map(stringr::str_replace_all, pattern = "\\{\\{", replacement = "") |>
    purrr::map(stringr::str_replace_all, pattern = "\\}\\}", replacement = "") |>
    unlist() |>
    unique()

  has_variables <- stringr::str_extract_all(template, "\\{\\{#([a-z_]+)\\}\\}") |>
    purrr::map(stringr::str_replace_all, pattern = "\\{\\{#", replacement = "") |>
    purrr::map(stringr::str_replace_all, pattern = "\\}\\}", replacement = "") |>
    unlist() |>
    unique()

  list(
    variables = variables,
    has_variables = has_variables
  )

}
