
#  ------------------------------------------------------------------------
#
# Title : Package onLoad
#    By : Jimmy Briggs
#  Date : 2025-03-14
#
#  ------------------------------------------------------------------------

# onLoad ------------------------------------------------------------------

#' @keywords internal
#' @noRd
#' @importFrom rlang run_on_load
.onLoad <- function(libname, pkgname) {
  rlang::run_on_load()
}

# onAttach ----------------------------------------------------------------

#' @keywords internal
#' @noRd
.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Welcome to the No Clocks AI package (https://github.com/noclocks/noclocksai/)!")
}

