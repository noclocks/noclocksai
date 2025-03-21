
#' Repomix
#'
#' @description
#' Repomix is a command-line tool for collecting an entire codebase into a single file for
#' use with AI Chat Agents. It can be used to extract code blocks from various file formats
#' and merge them into a single file.
#'
#' @param path The path to the directory containing the codebase. Default is the current working directory.
#' @param repo The remote repository URL to clone. Default is NULL. If provided, ignores the `path` argument.
#' @param output The output file name. Default is NULL. If provided, the output file will be saved with this name.
#' @param ... Additional arguments passed to the `npx repomix` function as arguments.
#'
#' @returns
#' The output of the `npx repomix` command.
#'
#' @export
repomix <- function(path = ".", repo = NULL, output = NULL, ...) {

  args <- c()

  if (!is.null(repo)) {
    check_repo(repo)
    args <- c(args, "--remote", repo)
  }

  if (!is.null(output)) {
    args <- c(args, "--output", output)
  }

  args <- c(args, ...)

  npx("repomix", args)

}


