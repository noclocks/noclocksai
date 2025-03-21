
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
#' Below are the `check_` functions grouped by category:
#'
#' ## Classes
#'
#' - `check_inherits()`: Check if an object inherits from a specific class.
#' - `check_s7()`: Check if an object is an S3 object.
#' - `check_r6()`: Check if an object is an R6 object.
#'
#' ## Database
#'
#' - `check_db_conn()`: Check if an object is a valid database connection (DBI or Pool).
#' - `check_db_config()`: Check if an object is a valid database configuration list.
#'
#' ## `ellmer`
#'
#' - `check_chat()`: Check if an object is a [ellmer::Chat] object.
#' - `check_tool()`: Check if an object is an [ellmer::tool()] object.
#' - `check_type()`: Check if an object is an [ellmer::Type] object.
#'
#' ## `tibble`
#'
#' - `check_tibble()`: Check if an object is a [tibble::tibble()] data frame.
#' - `check_row()`: Check if an object is a single-row data frame.
#' - `check_col_names()`: Check if a data frame contains specific column names.
#'
#' ## Lists
#'
#' - `check_list()`: Check if an object is a list.
#' - `check_list_names()`: Check if a list contains specific names.
#'
#' ## Dates
#'
#' - `check_date()`: Check if an object is a valid date object.
#'
#' ## Packages
#'
#' - `check_installed()`: Check if a package is installed.
#'
#' ## API Keys
#'
#' - `check_openai_api_key()`: Check if an object is a valid OpenAI API key.
#' - `check_anthropic_api_key()`: Check if an object is a valid Anthropic API key.
#'
#' @param x,conn,cfg,chat,tool,data,row,req,resp,lst,date,pkg,api_key The object to check.
#' @param class A character string representing the class to check against.
#' @param req_cols A character vector representing the required column names.
#' @param arg,x_arg,call Internal arguments used for [rlang::args_error_context] features.
#'
#' @importFrom cli cli_abort
#' @importFrom rlang caller_arg caller_env
NULL

# classes --------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_inherits <- function(obj, class, arg = rlang::caller_arg(obj), call = rlang::caller_env()) {
  if (!inherits(obj, class)) {
    cli::cli_abort(
      "{.arg {arg}} must inherit from class {.cls {class}}, not {.obj_type_friendly {obj}}.",
      call = call
    )
  }
  invisible(NULL)
}

#' @rdname checks
#' @export
check_s7 <- function(obj, arg = rlang::caller_arg(obj), call = rlang::caller_env()) {
  check_inherits(obj, "S7_object", arg = arg, call = call)
  S7::check_is_S7(obj, arg = arg)
}

#' @rdname checks
#' @export
check_r6 <- function(obj, arg = rlang::caller_arg(obj), call = rlang::caller_env()) {
  if (R6::is.R6Class(obj)) obj <- obj$new()
  check_inherits(obj, "R6", arg = arg, call = call)
  if (!R6::is.R6(obj)) {
    cli::cli_abort("{.arg {arg}} must be an R6 object.", call = call)
  }
}


# database --------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
#' @importFrom pool dbIsValid
#' @importFrom DBI dbIsValid
check_db_conn <- function(conn, arg = rlang::caller_arg(conn), call = rlang::caller_env()) {

  is_dbi <- any(grepl("Connection", class(conn)))
  is_pool <- inherits(conn, "Pool")
  is_rstudio <- inherits(conn, "connConnection")

  if (!is_dbi && !is_pool && !is_rstudio) {
    cli::cli_abort("{.arg {arg}} must be a database connection object.", call = call)
  }

  if (is_pool) {
    if (!pool::dbIsValid(conn)) {
      cli::cli_abort("{.arg {arg}} is not a valid database connection.", call = call)
    }
  }

  if (is_dbi) {
    if (!DBI::dbIsValid(conn)) {
      cli::cli_abort("{.arg {arg}} is not a valid database connection.", call = call)
    }
  }

  invisible(conn)

}

#' @rdname checks
#' @export
check_db_config <- function(cfg, arg = rlang::caller_arg(cfg), call = rlang::caller_env()) {
  req_keys <- c("host", "dbname", "user", "password", "port")
  check_list(cfg, arg = arg, call = call)
  check_names(cfg, req_keys, arg = arg, call = call)
  invisible(NULL)
}

# ellmer ------------------------------------------------------------------

#' @rdname checks
#' @export
check_chat <- function(chat, arg = rlang::caller_arg(chat), call = rlang::caller_env()) {
  check_inherits(chat, "Chat", arg = arg, call = call)
  invisible(NULL)
}

#' @rdname checks
#' @export
check_tool <- function(tool, arg = rlang::caller_arg(tool), call = rlang::caller_env()) {
  check_inherits(tool, "ellmer::ToolDef", arg = arg, call = call)
  invisible(NULL)
}

#' @rdname checks
#' @export
check_type <- function(type, arg = rlang::caller_arg(type), call = rlang::caller_env()) {
  check_s7(type, arg = arg, call = call)
  check_inherits(type, "ellmer::Type", arg = arg, call = call)
}

#' @rdname checks
#' @export
check_turn <- function(turn, arg = rlang::caller_arg(turn), call = rlang::caller_env()) {
  check_s7(turn, arg = arg, call = call)
  check_inherits(turn, "ellmer::Turn", arg = arg, call = call)
  invisible(NULL)
}

# httr2 -----------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_request <- function(req, arg = rlang::caller_arg(req), call = rlang::caller_env()) {
  check_inherits(req, "httr2_request", arg = arg, call = call)
  invisible(NULL)
}

#' @rdname checks
#' @export
check_response <- function(resp, arg = rlang::caller_arg(resp), call = rlang::caller_env()) {
  check_inherits(resp, "httr2_response", arg = arg, call = call)
  invisible(NULL)
}

# tibble ----------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_tibble <- function(data, arg = rlang::caller_arg(data), call = rlang::caller_env()) {
  check_inherits(data, "tbl_df", obj_arg = arg, call = call)
  invisible(NULL)
}

#' @rdname checks
#' @export
check_row <- function(row, arg = rlang::caller_arg(row), call = rlang::caller_env()) {
  check_inherits(row, "data.frame", x_arg = arg, call = call)
  if (nrow(row) != 1) {
    cli::cli_abort("{.arg {arg}} must be a single-row data frame.", call = call)
  }
  invisible(NULL)
}

#' @rdname checks
#' @export
check_col_names <- function(data, req_cols, arg = rlang::caller_arg(data), call = rlang::caller_env()) {
  check_inherits(data, "data.frame", x_arg = arg, call = call)
  missing_cols <- setdiff(req_cols, colnames(data))
  if (length(missing_cols) > 0) {
    cli::cli_abort(
      "{.arg {arg}} must contain the following columns: {.field {missing_cols}}.",
      call = call
    )
  }
}


# httr2 -----------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_request <- function(req, arg = rlang::caller_arg(req), call = rlang::caller_env()) {
  check_inherits(req, "httr2_request", x_arg = arg, call = call)
  invisible(NULL)
}

#' @rdname checks
#' @export
check_response <- function(resp, arg = rlang::caller_arg(resp), call = rlang::caller_env()) {
  check_inherits(resp, "httr2_response", x_arg = arg, call = call)
  invisible(NULL)
}


# lists -----------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_list <- function(lst, arg = rlang::caller_arg(lst), call = rlang::caller_env()) {
  if (!is.list(lst)) {
    cli::cli_abort("{.arg {arg}} must be a list.", call = call)
  }
  invisible(NULL)
}

# names -------------------------------------------------------------------

#' @rdname checks
#' @export
check_named <- function(obj, arg = rlang::caller_arg(obj), call = rlang::caller_env()) {
  if (!rlang::is_named(obj)) {
    cli::cli_abort("{.arg {arg}} must be named.", call = call)
  }
  invisible(NULL)
}

#' @rdname checks
#' @export
check_names <- function(obj, req_names, arg = rlang::caller_arg(lst), call = rlang::caller_env()) {
  check_named(obj, arg = arg, call = call)
  missing_names <- setdiff(req_names, names(obj))
  if (length(missing_names) > 0) {
    cli::cli_abort(
      "{.arg {arg}} must contain the following names: {.field {missing_names}}.",
      call = call
    )
  }
}

#' @rdname checks
#' @export
check_col_names <- function(data, req_cols, arg = rlang::caller_arg(data), call = rlang::caller_env()) {
  check_data_frame(data, arg = arg, call = call)
  missing_cols <- setdiff(req_cols, colnames(data))
  if (length(missing_cols) > 0) {
    cli::cli_abort(
      "{.arg {arg}} must contain the following columns: {.field {missing_cols}}.",
      call = call
    )
  }
}

#' @rdname checks
#' @export
check_date <- function(date, arg = rlang::caller_arg(date), call = rlang::caller_env()) {
  if (!is.Date(date) && !is.POSIXt(date)) {
    cli::cli_abort("{.arg {arg}} must be a valid date object.", call = call)
  }
  invisible(NULL)
}


# paths -----------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_path <- function(path, arg = rlang::caller_arg(path), call = rlang::caller_env()) {
  if (!file.exists(path)) {
    cli::cli_abort("{.arg {arg}} must be a valid file or directory path.", call = call)
  }
  invisible(NULL)
}

#' @rdname checks
#' @export
check_dir <- function(path, arg = rlang::caller_arg(path), call = rlang::caller_env()) {
  if (!dir.exists(path)) {
    cli::cli_abort("{.arg {arg}} must be a valid directory path.", call = call)
  }
  invisible(NULL)
}

#' @rdname checks
#' @export
check_cache <- function(path, arg = rlang::caller_arg(path), call = rlang::caller_env()) {
  check_dir(path, arg = arg, call = call)
  if (!file.exists(file.path(path, "cache"))) {
    cli::cli_abort("{.arg {arg}} must be a valid cache directory.", call = call)
  }
  invisible(NULL)
}

# packages --------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_installed <- function(pkg, arg = rlang::caller_arg(pkg), call = rlang::caller_env()) {
  if (!rlang::is_installed(pkg)) {
    cli::cli_abort("Package {.pkg {arg}} is not installed.", call = call)
  }
  invisible(NULL)
}

# strings ----------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
#' @importFrom cli cli_abort
check_repo <- function(repo, arg = rlang::caller_arg(repo), call = rlang::caller_env()) {
  if (!grepl("^\\w+/\\w+$", repo)) {
    cli::cli_abort("{.arg {arg}} must be in the format 'user/repo'.", call = call)
  }
  invisible(NULL)
}

#' @rdname checks
#' @export
check_openai_api_key <- function(api_key, arg = rlang::caller_arg(api_key), call = rlang::caller_env()) {
  # openai api key should be a string with 132 characters beginning with "sk-proj-"
  is_char <- is.character(api_key)
  valid_nchar <- nchar(api_key) == 132
  valid_prefix <- grepl("^sk-proj-", api_key)
  if (!is_char) cli::cli_abort("{.arg {arg}} must be a character string.", call = call)
  if (!valid_nchar) cli::cli_abort("{.arg {arg}} must be a valid OpenAI API key with 132 characters.", call = call)
  if (!valid_prefix) cli::cli_abort("{.arg {arg}} must be a valid OpenAI API key beginning with 'sk-proj-'.", call = call)
  invisible(NULL)
}

#' @rdname checks
#' @export
check_anthropic_api_key <- function(api_key, arg = rlang::caller_arg(api_key), call = rlang::caller_env()) {
  # anthropic api key should be a string with 108 characters beginning with "sk-ant-"
  is_char <- is.character(api_key)
  valid_nchar <- nchar(api_key) == 108
  valid_prefix <- grepl("^sk-ant-", api_key)
  if (!is_char) cli::cli_abort("{.arg {arg}} must be a character string.", call = call)
  if (!valid_nchar) cli::cli_abort("{.arg {arg}} must be a valid Anthropic API key with 108 characters.", call = call)
  if (!valid_prefix) cli::cli_abort("{.arg {arg}} must be a valid Anthropic API key beginning with 'sk-ant-'.", call = call)
  invisible(NULL)
}

