generate_pkgdown_reference <- function(
    pkg_path = ".",
    output_file = "_pkgdown.yml",
    model = "gpt-4o",
    update_existing = TRUE,
    api_key = get_openai_api_key()
) {

  pkg_name <- basename(normalizePath(pkg_path))
  pkg_namespace <- tryCatch({
    pkgload::load_all(pkg_path, quiet = TRUE)
    getNamespace(pkg_name)
  }, error = function(e) {
    cli::cli_abort("Unable to load the package namespace: {e$message}")
  })

  # get exported functions
  exported_functions <- getNamespaceExports(pkg_namespace)

  # get function docs
  function_docs <- purrr::map(
    exported_functions,
    function(func) {
      tryCatch({
        help_text <- utils::capture.output(utils::help(func, package = as.character(pkg_name)))
        paste(help_text, collapse = "\n")
      }, error = function(e) {
        cli::cli_alert_warning("Unable to get help for function: {func}")
        paste(func, ": No documentation available")
      })
    }
  ) |>
    rlang::set_names(exported_functions)

  pkgdown_path <- file.path(pkg_path, "_pkgdown.yml")
  existing_yaml <- NULL
  if (file.exists(pkgdown_path) && update_existing) {
    existing_yaml <- yaml::read_yaml(pkgdown_path)
  }

  pkg_funcs_txt <- paste(
    "- ",
    exported_functions,
    ": ",
    function_docs,
    sep = ""
  ) |>
    paste(collapse = "\n")

  existing_yaml_txt <- yaml::as.yaml(existing_yaml)

  sys_prompt <- prompt_pkgdown_sys()
  user_prompt <- prompt_pkgdown_user(pkg_name, pkg_funcs_txt, existing_yaml_txt)

  chat <- ellmer::chat_openai(
    model = model,
    system_prompt = sys_prompt
  )

  resp <- chat$chat(user_prompt)
  resp_yaml <- extract_yaml(resp)

  if (is.null(resp_yaml)) {
    return(NULL)
  }

  # get existing yaml, remove reference section if it exists, and add new yaml reference section
  new_yaml <- yaml::as.yaml(
    yaml::yaml.load(existing_yaml_txt)[!names(yaml::yaml.load(existing_yaml_txt)) %in% "reference"]
  ) |>
    paste(collapse = "\n") |>
    paste(resp_yaml, collapse = "\n")

  # write new yaml to file
  fileConn <- file(pkgdown_path)
  writeLines(new_yaml, fileConn)
  close(fileConn)

  cli::cli_alert_success("Successfully updated {.path {pkgdown_path}} with new reference section.")

}


