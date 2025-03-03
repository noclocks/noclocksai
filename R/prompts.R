
#  ------------------------------------------------------------------------
#
# Title : Prompts
#    By : Jimmy Briggs
#  Date : 2025-02-28
#
#  ------------------------------------------------------------------------

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
