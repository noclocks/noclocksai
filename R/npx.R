
#  ------------------------------------------------------------------------
#
# Title : Commands
#    By : Jimmy Briggs
#  Date : 2025-03-20
#
#  ------------------------------------------------------------------------


# npm/npx ---------------------------------------------------------------------------------------------------------

#' Run `npx` Command
#'
#' @description
#' This function runs a command using `npx` and returns the output.
#'
#' @param cmd The command to run.
#' @param ... Additional arguments to pass to the command.
#'
#' @returns
#' The output of the command.
#'
#' @export
#'
#' @importFrom processx run
#' @importFrom cli cli_abort
#'
#' @examples
#' \dontrun{
#' # get npx help
#' npx("--help")
#'
#' # create a new react app
#' npx("create-react-app", "my-app")
#'
#' # run repomix tool
#' npx("repomix", "--help")
#' }
npx <- function(cmd, ...) {

  npx <- Sys.which("npx")

  if (npx == "") {
    cli::cli_abort("{.code npm} is not installed or not found in the system {.envvar PATH}.")
  }

  args <- c(cmd, ...)

  process <- processx::run(
    command = npx,
    args = args,
    echo = TRUE,
    echo_cmd = TRUE,
    error_on_status = TRUE,
    spinner = TRUE,
    timeout = 60,
    windows_hide_window = TRUE,
    windows_verbatim_args = TRUE
  )

}

