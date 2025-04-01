
init_repomix_config <- function(
    path = ".",
    build_ignore = TRUE,
    overwrite = FALSE,
    output_dir = "dev/repomix",
    name = pkgload::pkg_name(),
    style = c("plain", "markdown", "xml"),
    instructions_file = NULL,
    header = NULL,
    ...
) {

  # paths / files
  path <- normalizePath(path)
  template_path <- pkg_sys_template("repomix.config.template.json")
  cfg_output_file <- normalizePath(file.path(path, "repomix.config.json"))

  # template variables
  style <- rlang::arg_match(style)
  ext <- switch(style, plain = "txt", markdown = "md", xml = "xml")
  if (is.null(header)) {
    header <- glue::glue(
      "Repository structure and metadata for the `{name}` project, formatted as {style}."
    )
  }
  if (is.null(instructions_file)) {
    if (file.exists(file.path(path, "repomix-instructions.md"))) {
      instructions_file <- "repomix-instructions.md"
    }
    if (file.exists(file.path(output_dir, "repomix-instructions.md"))) {
      instructions_file <- file.path(output_dir, "repomix-instructions.md")
    }
    if (is.null(instructions_file)) {
      instructions_file <- ""
    }
  }

  # interpolate template
  cfg_content <- ellmer::interpolate_file(
    path = template_path,
    output_dir = output_dir,
    name = name,
    style = style,
    ext = ext,
    instructions_file = instructions_file,
    header = header
  )

  # write config file
  if (file.exists(cfg_output_file) && !overwrite) {
    cli::cli_abort("{.file {cfg_output_file}} already exists. Use {.code overwrite = TRUE} to overwrite.")
  }

  # output
  writeLines(cfg_content, con = cfg_output_file)
  cli::cli_alert_success("Configuration file created at {.file {cfg_output_file}}.")

  if (build_ignore) {
    usethis::use_build_ignore(files = c("repomix.config.json"), escape = FALSE)
    cli::cli_alert_success("Added {.file repomix.config.json} to {.file .Rbuildignore}.")
  }

}


init_repomix_instructions <- function(
  output_dir = "dev/repomix",
  name = pkgload::pkg_name(),
  ...
) {

  template_file <- pkg_sys_template("repomix-instructions.md")
  output_file <- file.path(output_dir, "repomix-instructions.md")
  output_content <- ellmer::interpolate_file(
    path = template_file,
    name = name
  )

  if (!dir.exists(output_dir)) {
    dir.create(output_dir, recursive = TRUE)
  }

  writeLines(output_content, con = output_file)
  cli::cli_alert_success("Instructions file created at {.file {output_file}}.")

  invisible(output_file)

}
