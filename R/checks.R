
#  ------------------------------------------------------------------------
#
# Title : Check Utilities
#    By : Jimmy Briggs
#  Date : 2025-03-03
#
#  ------------------------------------------------------------------------

#' Check Functions
#'
#' @name checks
#'
#' @description
#' A collection of functions for checking the validity of function arguments.
#'
#' Functions:
#'
#' - `check_inherits()`: Check if an object inherits from a class.
#' - `check_installed()`: Check if a package is installed.
#' - `check_chat()`: Check if an object is an [ellmer::Chat] object.
#' - `check_tool()`: Check if an object is an [ellmer::tool()] object.
#' - `check_row()`: Check if an object is a single-row data frame.
#'
#' @param x An object to check.
#' @param class A character string representing the class to check against.
#' @param pkg A character string representing the package name.
#' @param chat An [ellmer::Chat] object.
#' @param tool An [ellmer::tool()] object.
#' @param row A single-row data frame.
#' @param x_arg A character string representing the argument name.
#' @param call An environment representing the calling environment.
NULL

#' @rdname checks
#' @export
#' @importFrom cli cli_abort
#' @importFrom rlang caller_arg caller_env
check_inherits <- function(x, class, x_arg = rlang::caller_arg(x), call = rlang::caller_env()) {
  if (!inherits(x, class)) {
    cli::cli_abort(
      "{.arg {x_arg}} must inherit from class {.cls {class}}, not {.obj_type_friendly {x}}.",
      call = call
    )
  }
  invisible(NULL)
}

#' @rdname checks
#' @export
#' @importFrom cli cli_abort
#' @importFrom rlang is_installed caller_arg caller_env
check_installed <- function(pkg, arg = rlang::caller_arg(pkg), call = rlang::caller_env()) {
  if (!rlang::is_installed(pkg)) {
    cli::cli_abort("Package {.pkg {arg}} is not installed.", call = call)
  }
  invisible(NULL)
}

#' @rdname checks
#' @export
#' @importFrom cli cli_abort
#' @importFrom rlang caller_arg caller_env
check_chat <- function(chat, arg = rlang::caller_arg(chat), call = rlang::caller_env()) {
  check_inherits(chat, "Chat", x_arg = arg, call = call)
  invisible(NULL)
}

#' @rdname checks
#' @export
#' @importFrom cli cli_abort
#' @importFrom rlang caller_arg caller_env
check_tool <- function(tool, arg = rlang::caller_arg(tool), call = rlang::caller_env()) {
  check_inherits(tool, "ellmer::ToolDef", x_arg = arg, call = call)
  invisible(NULL)
}

#' @rdname checks
#' @export
#' @importFrom cli cli_abort
#' @importFrom rlang caller_arg caller_env
check_row <- function(row, arg = rlang::caller_arg(row), call = rlang::caller_env()) {
  check_inherits(row, "data.frame", x_arg = arg, call = call)
  if (nrow(row) != 1) {
    cli::cli_abort("{.arg {arg}} must be a single-row data frame.", call = call)
  }
  invisible(NULL)
}
