
#  ------------------------------------------------------------------------
#
# Title : Commands
#    By : Jimmy Briggs
#  Date : 2025-03-20
#
#  ------------------------------------------------------------------------

# git -------------------------------------------------------------------------------------------------------------

#' Run `git` Command
#'
#' @description
#' This function runs a command using `git` and returns the output.
#'
#' @param cmd The command to run.
#' @param ... Additional arguments to pass to the command.
#' @param .timeout The timeout in seconds for the command to complete. Default is 60 seconds.
#' @param .echo Logical. If `TRUE`, the output will be printed to the console. Default is `TRUE`.
#'
#' @returns
#' The output of the command.
#'
#' @export
#'
#' @importFrom sys exec_internal as_text
#' @importFrom cli cli_abort
#'
#' @examples
#' \dontrun{
#' # get git version
#' git("--version")
#' # git status
#' git("status")
#' # git commit
#' git("commit", "-m", "Initial commit")
#' }
git <- function(cmd, ..., .timeout = 60, .echo = TRUE) {

  git_path <- Sys.which("git")
  if (git_path == "") cli::cli_abort("{.code git} is not installed or not found in the system {.envvar PATH}.")

  args <- c(cmd, ...)

  res <- sys::exec_internal(
    cmd = git_path,
    args = args,
    timeout = .timeout,
    error = FALSE
  )

  if (res$status != 0) {
    cli::cli_abort(
      c(
        "Failed to run {.code git {cmd}} command (exit code: {res$status}).",
        "x" = sys::as_text(res$stderr)
      )
    )
  }

  output <- sys::as_text(res$stdout)
  if (.echo) cat(output)
  invisible(output)

}



# docker ----------------------------------------------------------------------------------------------------------

#' Run `docker` Command
#'
#' @description
#' This function runs a command using `docker` and returns the output.
#'
#' @param cmd The command to run.
#' @param ... Additional arguments to pass to the command.
#' @param .timeout The timeout in seconds for the command to complete. Default is 60 seconds.
#' @param .echo Logical. If `TRUE`, the output will be printed to the console. Default is `TRUE`.
#'
#' @returns
#' The output of the command.
#'
#' @export
#'
#' @importFrom sys exec_internal as_text
#' @importFrom cli cli_abort
#'
#' @examples
#' \dontrun{
#' # get docker help
#' docker("--help")
#' # list docker images
#' docker("images")
#' # run a docker container
#' docker("run", "--rm", "hello-world")
#' }
docker <- function(cmd, ..., .timeout = 60, .echo = TRUE) {

  docker_path <- Sys.which("docker")
  if (docker_path == "") cli::cli_abort("{.code docker} is not installed or not found in the system {.envvar PATH}.")

  args <- c(cmd, ...)

  res <- sys::exec_internal(
    cmd = docker_path,
    args = args,
    timeout = .timeout,
    error = FALSE
  )

  if (res$status != 0) {
    cli::cli_abort(
      c(
        "Failed to run {.code docker {cmd}} command (exit code: {res$status}).",
        "x" = sys::as_text(res$stderr)
      )
    )
  }

  output <- sys::as_text(res$stdout)
  if (.echo) cat(output)
  invisible(output)

}

# npx -------------------------------------------------------------------------------------------------------------


#' Run `npx` Command
#'
#' @description
#' This function runs a command using `npx` and returns the output.
#'
#' @param cmd The command to run.
#' @param ... Additional arguments to pass to the command.
#' @param .timeout The timeout in seconds for the command to complete. Default is 60 seconds.
#' @param .echo Logical. If `TRUE`, the output will be printed to the console. Default is `TRUE`.
#'
#' @returns
#' The output of the command.
#'
#' @export
#'
#' @importFrom sys exec_internal as_text
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
npx <- function(cmd, ..., .timeout = 60, .echo = TRUE) {

  npx_path <- Sys.which("npx")
  if (npx_path == "") cli::cli_abort("{.code npx} is not installed or not found in the system {.envvar PATH}.")

  args <- c(cmd, ...)

  res <- sys::exec_internal(
    cmd = npx_path,
    args = args,
    timeout = .timeout,
    error = FALSE
  )

  if (res$status != 0) {
    cli::cli_abort(
      c(
        "Failed to run {.code npx {cmd}} command (exit code: {res$status}).",
        "x" = sys::as_text(res$stderr)
      )
    )
  }

  output <- sys::as_text(res$stdout)
  if (.echo) cat(output)
  invisible(output)

}

