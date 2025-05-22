#  ------------------------------------------------------------------------
#
# Title : RepoMix Script
#    By : Jimmy Briggs
#  Date : 2025-03-07
#
#  ------------------------------------------------------------------------

repomix_cfg_template <- fs::path("dev/templates/repomix.config.template.json")

name <- pkgload::pkg_name()

repomix_cfg_xml <- ellmer::interpolate_file(repomix_cfg_template, name = name, style = "xml", ext = "xml")
repomix_cfg_md <- ellmer::interpolate_file(repomix_cfg_template, name = name, style = "markdown", ext = "md")
repomix_cfg_txt <- ellmer::interpolate_file(repomix_cfg_template, name = name, style = "plain", ext = "txt")

repomix_output_xml <- fs::path("dev/repomix", glue::glue("{name}.repomix.xml"))
repomix_output_md <- fs::path("dev/repomix", glue::glue("{name}.repomix.md"))
repomix_output_txt <- fs::path("dev/repomix", glue::glue("{name}.repomix.txt"))

repomix_cfg_file <- fs::path("repomix.config.json")
repomix_cfg_moved <- fs::path("dev/repomix/repomix.config.default.json")
fs::file_move(repomix_cfg_file, repomix_cfg_moved)

# generate a config for each style and run repomix, then move the original config back
cmd <- normalizePath("~/AppData/Roaming/npm/repomix.cmd")

# xml
writeLines(repomix_cfg_xml, repomix_cfg_file)
system(cmd, intern = TRUE)
fs::file_move(repomix_cfg_file, fs::path("dev/repomix/repomix.config.xml.json"))
cli::cli_alert_success("Successfully generated {.file {repomix_output_xml}}")

# markdown
writeLines(repomix_cfg_md, repomix_cfg_file)
system(cmd, intern = TRUE)
fs::file_move(repomix_cfg_file, fs::path("dev/repomix/repomix.config.md.json"))
cli::cli_alert_success("Successfully generated {.file {repomix_output_md}}")

# text
writeLines(repomix_cfg_txt, repomix_cfg_file)
system(cmd, intern = TRUE)
fs::file_move(repomix_cfg_file, fs::path("dev/repomix/repomix.config.txt.json"))
cli::cli_alert_success("Successfully generated {.file {repomix_output_txt}}")

# move the original config back
fs::file_move(repomix_cfg_moved, repomix_cfg_file)

cli::cli_alert_success("Successfully generated {.file {repomix_output_xml}}, {.file {repomix_output_md}}, and {.file {repomix_output_txt}}")
