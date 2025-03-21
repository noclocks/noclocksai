
#  ------------------------------------------------------------------------
#
# Title : Pacakge
#    By : Jimmy Briggs
#  Date : 2025-03-14
#
#  ------------------------------------------------------------------------

# docs --------------------------------------------------------------------

#' @keywords internal
"_PACKAGE"

## usethis namespace: start
#' @import rlang
## usethis namespace: end
NULL


# globals ---------------------------------------------------------------------------------------------------------

utils::globalVariables(
  c(

  )
)

# env ---------------------------------------------------------------------

.pkg_env <- rlang::new_environment()
.pkg_env$pkg_name <- "noclocksai"
.pkg_env$pkg_version <- utils::packageVersion("noclocksai")
# .pkg_env$pkg_config_file <- noclocksai:::cfg
