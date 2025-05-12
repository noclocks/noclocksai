
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
#'   - `check_r6_class()`: Check if an object is an R6 class.
#'   - `check_r6_object()`: Check if an object is an R6 object.
#'
#' ## Other R Objects
#'
#' - `check_function()`: Check if an object is a function.
#' - `check_expression()`: Check if an object is an expression.
#'
#' ## Custom Objects
#'
#' - `check_cache()`: Check if an object is a cache (`cachem::cache_*()`) object.
#' - `check_logger()`: Check if an object is a logger (`logger::logger` or `lgr::Logger`) object.
#' - `check_log_level()`: Check if an object is a valid log level.
#'
#' ## Shiny Apps
#'
#' - `check_shiny()`: Check if currently running inside a Shiny App.
#' - `check_shiny_session()`: Check for a valid, active Shiny session.
#' - `check_reactive()`: Check if an object is a `shiny::reactive()` or `shiny::reactiveValues()` object.
#' - `check_shiny_tag()`: Check if an object is an `htmltools::tag`.
#' - `check_shiny_taglist()`: Check if an object is an `htmltools::tagList`.
#' - `check_bslib_page()`: Check if an object is a `bslib::page_*()` object.
#' - `check_html_widget()`: Check if an object is an `htmlwidgets::htmlwidget`.
#' - `check_dt()`: Check if an object is a `DT::datatable`.
#' - `check_reactable()`: Check if an object is a `reactable::reactable`.
#' - `check_apexchart()`: Check if an object is an `apexcharter::apex` chart.
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
#' - `check_turn()`: Check if an object is an [ellmer::Turn] object.
#'
#' ## `httr2`
#'
#' - `check_request()`: Check if an object is a [httr2::request] object.
#' - `check_response()`: Check if an object is a [httr2::response] object.
#'
#' ## `tibble` & `data.frame`
#'
#' - `check_data_frame()`: Check if an object is a data frame.
#' - `check_tibble()`: Check if an object is a [tibble::tibble()] data frame.
#' - `check_row()`: Check if an object is a single-row data frame.
#' - `check_col_names()`: Check if a data frame contains specific column names.
#' - `check_col_types()`: Check if a data frame contains specific column types.
#'
#' ## Lists
#'
#' - `check_list()`: Check if an object is a list.
#'
#' ## Names
#'
#' - `check_named()`: Check if an object is named.
#' - `check_names()`: Check if a list or vector contains specific names.
#' - `check_dots_named()`: Check if all elements of `...` are named.
#'
#' ## Dates and Times
#'
#' - `check_date()`: Check if an object is a valid date object.
#' - `check_time()`: Check if an object is a valid time object.
#' - `check_date_format()`: Check if a date object matches a specific format.
#'
#' ## Paths
#'
#' - `check_path()`: Check if a path exists.
#' - `check_dir()`: Check if a path is a valid directory.
#' - `check_file()`: Check if a path is a valid file with a specific extension.
#' - `check_cache_path()`: Check if a path is a valid cache directory.
#' - `check_config_file()`: Check if a path is a valid configuration file.
#'
#' ## Images
#'
#' - `check_image()`: Check if a file is a valid image file.
#'
#' ## Packages
#'
#' - `check_installed()`: Check if a package is installed.
#'
#' ## Strings
#'
#' - `check_repo`: Check if a string is a valid GitHub repository string.
#' - `check_uuid`: Check if a string is a valid UUID.
#'
#' ## API Keys
#'
#' - `check_api_key()`: Check if an object is a valid API key.
#' - `check_openai_api_key()`: Check if an object is a valid OpenAI API key.
#' - `check_anthropic_api_key()`: Check if an object is a valid Anthropic API key.
#'
#' ## Encryption
#'
#' - `check_encryption_key()`: Check if an object is a valid encryption key.
#'
#' ## Factories
#'
#' - `create_data_checker()`: Create a data checker function.
#'
#' @param obj,func,expr,cache,logger,level,req,resp A generic object to check.
#' @param class A character string representing the class to check against.
#' @param req_cols A character vector representing the required column names.
#' @param arg,call Internal arguments used for [rlang::args_error_context] features.
#'
#' @returns
#' All functions return the original object if the check passes (invisibly), or throw an error if it fails.
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
  invisible(obj)
}

#' @rdname checks
#' @export
check_inherits_one_of <- function(obj, classes, arg = rlang::caller_arg(obj), call = rlang::caller_env()) {
  if (!any(sapply(classes, function(class) inherits(obj, class)))) {
    cli::cli_abort(
      "{.arg {arg}} must inherit from one of the classes {.cls {classes}}, not {.obj_type_friendly {obj}}.",
      call = call
    )
  }
  invisible(obj)
}

#' @rdname checks
#' @export
check_inherits_all <- function(obj, classes, arg = rlang::caller_arg(obj), call = rlang::caller_env()) {
  if (!all(sapply(classes, function(class) inherits(obj, class)))) {
    cli::cli_abort(
      "{.arg {arg}} must inherit from all of the classes {.cls {classes}}, not {.obj_type_friendly {obj}}.",
      call = call
    )
  }
  invisible(obj)
}

#' @rdname checks
#' @export
#' @importFrom S7 check_is_S7
check_s7 <- function(
  obj,
  arg = rlang::caller_arg(obj),
  call = rlang::caller_env()
) {
  check_inherits(obj, "S7_object", arg = arg, call = call)
  if (requireNamespace("S7", quietly = TRUE)) {
    S7::check_is_S7(obj, arg = arg)
  }
  invisible(obj)
}

#' @rdname checks
#' @export
#' @importFrom R6 is.R6Class
check_r6 <- function(
  obj,
  arg = rlang::caller_arg(obj),
  call = rlang::caller_env()
) {
  orig_obj <- obj
  if (R6::is.R6Class(obj)) {
    tryCatch(
      {
        obj <- obj$new()
      },
      error = function(e) {
        cli::cli_abort(
          c(
            "Failed to create an R6 object from the provided R6 class {.arg {arg}}.",
            "x" = "{conditionMessage(e)}"
          ),
          call = call
        )
      }
    )
  }
  check_r6_object(obj, arg = arg, call = call)
  invisible(orig_obj)
}

#' @rdname checks
#' @export
#' @importFrom R6 is.R6Class
check_r6_class <- function(
  obj,
  arg = rlang::caller_arg(obj),
  call = rlang::caller_env()
) {
  if (!R6::is.R6Class(obj)) {
    cli::cli_abort("{.arg {arg}} must be an R6 class.", call = call)
  }
  invisible(obj)
}

#' @rdname checks
#' @export
#' @importFrom R6 is.R6
check_r6_object <- function(
  obj,
  arg = rlang::caller_arg(obj),
  call = rlang::caller_env()
) {
  check_inherits(obj, "R6", arg = arg, call = call)
  if (!R6::is.R6(obj)) {
    cli::cli_abort("{.arg {arg}} must be an R6 object.", call = call)
  }
  invisible(obj)
}

#' @rdname checks
#' @export
check_function <- function(
  func,
  arg = rlang::caller_arg(func),
  call = rlang::caller_env()
) {
  if (!is.function(func)) {
    cli::cli_abort("{.arg {arg}} must be a function.", call = call)
  }
  invisible(func)
}

#' @rdname checks
#' @export
#' @importFrom rlang is_expression
check_expression <- function(
  expr,
  arg = rlang::caller_arg(expr),
  call = rlang::caller_env()
) {
  if (!rlang::is_expression(expr)) {
    cli::cli_abort("{.arg {arg}} must be an expression.", call = call)
  }
  invisible(expr)
}

#' @rdname checks
#' @export
check_cache <- function(
  cache,
  arg = rlang::caller_arg(cache),
  call = rlang::caller_env()
) {
  check_inherits(cache, "cachem", arg = arg, call = call)
  invisible(cache)
}

#' @rdname checks
#' @export
check_logger <- function(
  logger,
  arg = rlang::caller_arg(logger),
  call = rlang::caller_env()
) {
  if (!inherits(logger, "R6")) {
    check_function(logger, arg = arg, call = call)
    cli::cli_alert_info("{.arg {arg} is a logger::logger function.}")
  } else {
    check_inherits_all(logger, c("Logger", "Filterable", "R6"), arg = arg, call = call)
    cli::cli_alert_info("{.arg {arg} is a lgr::Logger (R6) object.}")
  }
  invisible(logger)
}

#' @rdname checks
#' @export
check_log_level <- function(
  level,
  arg = rlang::caller_arg(level),
  call = rlang::caller_env()
) {
  valid_levels <- c(
    "TRACE",
    "DEBUG",
    "INFO",
    "SUCCESS",
    "WARN",
    "ERROR",
    "FATAL"
  )
  if (is.character(level)) {
    level <- toupper(level)
    if (!level %in% valid_levels) {
      cli::cli_abort(
        c(
          "Invalid log level {.arg {arg}} provided.\n",
          "i" = "Supported log levels: {.field {valid_levels}}"
        ),
        call = call
      )
    }
  }

  if (is.function(level) || is.integer(level)) {
    check_inherits(level, "loglevel", arg = arg, call = call)
  }

  invisible(level)
}


# shiny -----------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
#' @importFrom shiny isRunning
check_shiny <- function(call = rlang::caller_env()) {
  if (!shiny::isRunning()) {
    calling_function <- as.character(sys.call(-1)[[1]])
    cli::cli_abort(
      c(
        "The function {.fn {calling_function}} can only be executed from an active shiny session.\n",
        "i" = "Make sure you're calling this function from within a Shiny app.\n",
        "i" = "Check if your app is properly initialized with {.fn shinyApp} or {.fn runApp}."
      ),
      call = call
    )
  }
  invisible(TRUE)
}

#' @rdname checks
#' @export
#' @importFrom shiny getDefaultReactiveDomain
check_shiny_session <- function(call = rlang::caller_env()) {
  session <- shiny::getDefaultReactiveDomain()
  if (is.null(session)) {
    calling_function <- as.character(sys.call(-1)[[1]])
    cli::cli_abort(
      c(
        "The function {.fn {calling_function}} requires an active Shiny session object.",
        "i" = "Make sure you're calling this function from within a reactive context (e.g., inside an observer, reactive, or event handler).",
        "i" = "This function cannot be called during app initialization or outside reactive contexts."
      ),
      call = call
    )
  }
  invisible(session)
}

#' @rdname checks
#' @export
#' @importFrom shiny is.reactive is.reactivevalues
check_reactive <- function(
    reactive,
    arg = rlang::caller_arg(reactive),
    call = rlang::caller_env()
) {

  is_rv <- shiny::is.reactive(reactive)
  is_rvs <- shiny::is.reactivevalues(reactive)

  if (!is_rv && !is_rvs) {
    cli::cli_abort(
      "{.arg {arg}} must be a reactive or reactiveValues object.",
      call = call
    )
  }

  invisible(reactive)
}

#' @rdname checks
#' @export
check_shiny_tag <- function(
    obj,
    arg = rlang::caller_arg(obj),
    call = rlang::caller_env()
) {
  check_inherits(obj, "shiny.tag", arg = arg, call = call)
  invisible(obj)
}

#' @rdname checks
#' @export
check_shiny_taglist <- function(
    obj,
    arg = rlang::caller_arg(obj),
    call = rlang::caller_env()
) {
  check_inherits(obj, "shiny.tag.list", arg = arg, call = call)
  invisible(obj)
}

#' @rdname checks
#' @export
check_bslib_page <- function(
    obj,
    arg = rlang::caller_arg(obj),
    call = rlang::caller_env()
) {
  check_shiny_taglist(obj, arg = arg, call = call)
  check_inherits(obj, "bslib_page", arg = arg, call = call)
  invisible(obj)
}

#' @rdname checks
#' @export
check_html_widget <- function(
    obj,
    arg = rlang::caller_arg(obj),
    call = rlang::caller_env()
) {
  check_inherits(obj, "htmlwidget", arg = arg, call = call)
  invisible(obj)
}

#' @rdname checks
#' @export
check_dt <- function(
    tbl,
    arg = rlang::caller_arg(tbl),
    call = rlang::caller_env()
) {
  check_html_widget(tbl, arg = arg, call = call)
  check_inherits(tbl, "datatables", arg = arg, call = call)
  invisible(tbl)
}

#' @rdname checks
#' @export
check_reactable <- function(
    tbl,
    arg = rlang::caller_arg(tbl),
    call = rlang::caller_env()
) {
  check_html_widget(tbl, arg = arg, call = call)
  check_inherits(tbl, "reactable", arg = arg, call = call)
  invisible(tbl)
}

#' @rdname checks
#' @export
check_apexchart <- function(
  chart,
  arg = rlang::caller_arg(chart),
  call = rlang::caller_env()
) {
  check_html_widget(chart, arg = arg, call = call)
  check_inherits(chart, "apexcharter", arg = arg, call = call)
  check_inherits(chart, "apex", arg = arg, call = call)
  invisible(chart)
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
  invisible(cfg)
}


# ellmer ----------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_chat <- function(chat, arg = rlang::caller_arg(chat), call = rlang::caller_env()) {
  check_r6_object(chat, arg = arg, call = call)
  check_inherits(chat, "Chat", arg = arg, call = call)
  invisible(chat)
}

#' @rdname checks
#' @export
check_tool <- function(tool, arg = rlang::caller_arg(tool), call = rlang::caller_env()) {
  check_inherits(tool, "ellmer::ToolDef", arg = arg, call = call)
  invisible(tool)
}

#' @rdname checks
#' @export
check_type <- function(type, arg = rlang::caller_arg(type), call = rlang::caller_env()) {
  check_s7(type, arg = arg, call = call)
  check_inherits(type, "ellmer::Type", arg = arg, call = call)
  invisible(type)
}

#' @rdname checks
#' @export
check_turn <- function(turn, arg = rlang::caller_arg(turn), call = rlang::caller_env()) {
  check_s7(turn, arg = arg, call = call)
  check_inherits(turn, "ellmer::Turn", arg = arg, call = call)
  invisible(turn)
}

# httr2 -----------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_request <- function(req, arg = rlang::caller_arg(req), call = rlang::caller_env()) {
  check_inherits(req, "httr2_request", arg = arg, call = call)
  invisible(req)
}

#' @rdname checks
#' @export
check_response <- function(resp, arg = rlang::caller_arg(resp), call = rlang::caller_env()) {
  check_inherits(resp, "httr2_response", arg = arg, call = call)
  invisible(resp)
}

# data -------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_data_frame <- function(
  data,
  arg = rlang::caller_arg(data),
  call = rlang::caller_env()
) {
  if (!is.data.frame(data)) {
    cli::cli_abort("{.arg {arg}} must be a data frame.", call = call)
  }
  invisible(data)
}

#' @rdname checks
#' @export
check_tibble <- function(data, arg = rlang::caller_arg(data), call = rlang::caller_env()) {
  check_inherits(data, "tbl_df", arg = arg, call = call)
  invisible(data)
}

#' @rdname checks
#' @export
check_row <- function(row, arg = rlang::caller_arg(row), call = rlang::caller_env()) {
  check_inherits(row, "data.frame", arg = arg, call = call)
  if (nrow(row) != 1) {
    cli::cli_abort("{.arg {arg}} must be a single-row data frame.", call = call)
  }
  invisible(row)
}

#' @rdname checks
#' @export
check_col_names <- function(data, req_cols, arg = rlang::caller_arg(data), call = rlang::caller_env()) {
  check_inherits(data, "data.frame", arg = arg, call = call)
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
check_col_types <- function(
  data,
  req_types,
  arg = rlang::caller_arg(data),
  call = rlang::caller_env()
) {
  check_inherits(data, "data.frame", arg = arg, call = call)
  data_types <- sapply(data, class)
  missing_types <- setdiff(req_types, data_types)
  if (length(missing_types) > 0) {
    cli::cli_abort(
      "{.arg {arg}} must contain the following column types: {.field {missing_types}}.",
      call = call
    )
  }
  invisible(data)
}


# lists --------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_list <- function(lst, arg = rlang::caller_arg(lst), call = rlang::caller_env()) {
  if (!is.list(lst)) {
    cli::cli_abort("{.arg {arg}} must be a list.", call = call)
  }
  invisible(lst)
}

# names -------------------------------------------------------------------

#' @rdname checks
#' @export
check_named <- function(obj, arg = rlang::caller_arg(obj), call = rlang::caller_env()) {
  if (!rlang::is_named(obj)) {
    cli::cli_abort("{.arg {arg}} must be named.", call = call)
  }
  invisible(obj)
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
  invisible(obj)
}

#' @importFrom rlang is_named2
dots_named <- function(...) { rlang::is_named2(list(...)) }

#' @rdname checks
#' @export
check_dots_named <- function(..., call = rlang::caller_env()) {
  if (!dots_named(...)) {
    cli::cli_abort(
      "All elements of `...` must be named.",
      call = call
    )
  }
  invisible(list(...))
}

# dates and times -------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_date <- function(date, arg = rlang::caller_arg(date), call = rlang::caller_env()) {
  if (!is.Date(date) && !is.POSIXt(date)) {
    cli::cli_abort("{.arg {arg}} must be a valid date object.", call = call)
  }
  invisible(date)
}

#' @rdname checks
#' @export
check_time <- function(time, arg = rlang::caller_arg(time), call = rlang::caller_env()) {
  check_inherits_one_of(time, c("POSIXct", "POSIXlt"), arg = arg, call = call)
  if (!is.POSIXt(time)) {
    cli::cli_abort("{.arg {arg}} must be a valid time object.", call = call)
  }
  invisible(time)
}

check_date_format <- function(date, format, arg = rlang::caller_arg(date), call = rlang::caller_env()) {
  check_date(date, arg = arg, call = call)

}


# paths -----------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_path <- function(path, arg = rlang::caller_arg(path), call = rlang::caller_env()) {
  if (!file.exists(path)) {
    cli::cli_abort("{.arg {arg}} must be a valid file or directory path.", call = call)
  }
  invisible(path)
}

#' @rdname checks
#' @export
check_dir <- function(path, arg = rlang::caller_arg(path), call = rlang::caller_env()) {
  if (!dir.exists(path)) {
    cli::cli_abort("{.arg {arg}} must be a valid directory path.", call = call)
  }
  invisible(path)
}

#' @rdname checks
#' @export
#' @importFrom tools file_ext
check_file <- function(path, ext = NULL, arg = rlang::caller_arg(path), call = rlang::caller_env()) {
  check_path(path, arg = arg, call = call)
  if (!is.null(ext)) {
    if (length(ext) > 1) {
      exts <- ext
      if (!any(tools::file_ext(path) %in% exts)) {
        cli::cli_abort("{.arg {arg}} must be a file with one of the following extensions: {.field {exts}}.", call = call)
      }
    } else {
      ext <- tolower(ext)
      if (tools::file_ext(path) != ext) {
        cli::cli_abort("{.arg {arg}} must be a file with extension {.field {ext}}.", call = call)
      }
    }
  }
  invisible(path)
}

#' @rdname checks
#' @export
check_cache_path <- function(path, arg = rlang::caller_arg(path), call = rlang::caller_env()) {
  check_dir(path, arg = arg, call = call)
  if (!file.exists(file.path(path, "cache"))) {
    cli::cli_abort("{.arg {arg}} must be a valid cache directory.", call = call)
  }
  invisible(path)
}

#' @rdname checks
#' @export
check_config_file <- function(
  path = Sys.getenv("R_CONFIG_FILE", unset = "config.yml"),
  arg = rlang::caller_arg(path),
  call = rlang::caller_env()
) {
  check_file(path, ext = "yml", arg = arg, call = call)
  invisible(path)
}

# image -----------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
#' @importFrom cli cli_abort
#' @importFrom tools file_ext
#' @importFrom magick image_read image_info
check_image <- function(
  file,
  arg = rlang::caller_arg(file),
  call = rlang::caller_env()
) {
  # Check file extension
  ext <- tolower(tools::file_ext(file))
  valid_extensions <- c(
    "jpg",
    "jpeg",
    "png",
    "gif",
    "webp",
    "bmp",
    "tiff",
    "svg",
    "ico"
  )
  if (!ext %in% valid_extensions) {
    cli::cli_abort(
      c(
        "Provided file {.arg {arg}} is not a valid image file.\n",
        "i" = "Supported image formats: {.field {valid_extensions}}."
      ),
      call = call
    )
  }

  if (requireNamespace("magick", quietly = TRUE)) {
    tryCatch(
      {
        img <- magick::image_read(file)
        dims <- magick::image_info(img)
        if (dims$width < 10 || dims$height < 10) {
          cli::cli_abort(
            c(
              "Image dimensions {.arg {arg}} are too small. Possible corrupt file.\n",
              "i" = "Minimum dimensions: 10x10 pixels."
            ),
            call = call
          )
        }
      },
      error = function(e) {
        cli::cli_abort(
          c(
            "Failed to read and validate image file {.arg {arg}}.\n",
            "x" = "{conditionMessage(e)}"
          ),
          call = call
        )
      }
    )
  }
  invisible(file)
}

# packages --------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
check_installed <- function(pkg, arg = rlang::caller_arg(pkg), call = rlang::caller_env()) {
  if (!rlang::is_installed(pkg)) {
    cli::cli_abort("Package {.pkg {arg}} is not installed.", call = call)
  }
  invisible(pkg)
}

# strings ----------------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
#' @importFrom cli cli_abort
check_repo <- function(repo, arg = rlang::caller_arg(repo), call = rlang::caller_env()) {
  if (!grepl("^\\w+/\\w+$", repo)) {
    cli::cli_abort("{.arg {arg}} must be in the format 'user/repo'.", call = call)
  }
  invisible(repo)
}

#' @rdname checks
#' @export
check_uuid <- function(uuid, arg = rlang::caller_arg(uuid), call = rlang::caller_env()) {
  check_inherits(uuid, "UUID", arg = arg, call = call)
  if (!uuid::is.UUID(uuid)) {
    cli::cli_abort("{.arg {arg}} must be a valid UUID.", call = call)
  }
  invisible(uuid)
}

#' @rdname checks
#' @export
check_api_key <- function(api_key, arg = rlang::caller_arg(api_key), call = rlang::caller_env()) {

  if (exists(api_key)) {
    cli::cli_alert_success("API key {.arg {arg}} found in function arguments or R environment.")
    return(invisible(NULL))
  }

  envvar_name <- toupper(paste0(api_key, "_API_KEY"))
  if (Sys.getenv(envvar_name) != "") {
    cli::cli_alert_success("API key {.arg {arg}} found in environment variable: {.envvar {envvar_name}}.")
    return(invisible(NULL))
  }

  if (isTRUE(rlang::env_has(env = .pkg_env, "pkg_version"))) {
    cli::cli_alert_success("API key {.arg {arg}} found in package environment.")
    return(invisible(NULL))
  }

  optname <- paste0("noclocksai.", api_key, "_api_key")
  if (getOption(optname) != "") {
    cli::cli_alert_success("API key {.arg {arg}} found in R option: {.opt {optname}}.")
    return(invisible(NULL))
  }

  if (get_llms_config(paste0(api_key, "_api_key")) != "") {
    cli::cli_alert_success("API key {.arg {arg}} found in configuration file.")
    return(invisible(NULL))
  }

  cli::cli_abort(
    c(
      "API key {.arg {arg}} not found in function arguments, environment variables, package environment, R options, or configuration file.",
      "Please provide a valid API key."
    )
  )

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
  invisible(api_key)
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
  invisible(api_key)
}

# environment -----------------------------------------------------------------------------------------------------

#' @rdname checks
#' @export
#' @importFrom httr2 secret_has_key
check_encryption_key <- function(
  key,
  arg = rlang::caller_arg(key),
  call = rlang::caller_env()
) {
  if (!is.character(key) || length(key) != 1) {
    cli::cli_abort(
      "{.arg {arg}} must be a single character string.",
      call = call
    )
  }
  if (!httr2::secret_has_key(key)) {
    cli::cli_abort(
      c(
        "Encryption key: {.field {key}} not found.\n",
        "Please set the encryption key environment variable: {.envvar NOCLOCKS_ENCRYPTION_KEY}."
      ),
      call = call
    )
  }
  invisible(key)
}

# factories -------------------------------------------------------------------------------------------------------

#' Checker Function Factories
#'
#' @name utils_check_factories
#'
#' @description
#' These functions create checker functions that can be used to validate the structure
#' of the objects passed to them. They are useful for creating reusable validation functions
#' that can be applied to different objects.
#'
#' - `create_data_checker()`: Creates a checker function for data frames or tibbles.
#'
#' @param data A data frame or tibble to be checked.
#' @param req_cols A character vector of required column names.
#' @param req_col_types A character vector of required column types.
#'
#' @returns
#' A function that checks the structure of the data frame or tibble.
#'
#' @examples
#' # create a checker function for the mtcars dataset
#' check_mtcars <- create_data_checker(mtcars)
#' # check the mtcars dataset (should pass)
#' check_mtcars(mtcars)
#' # check a different dataset (should fail)
#' check_mtcars(iris)
#'
#' # create a checker function for only specific columns
#' check_mtcars_2 <- create_data_checker(mtcars, req_cols = c("mpg", "cyl"))
#' # check the mtcars dataset (should pass)
#' check_mtcars_2(mtcars)
#' # check a different dataset (should fail)
#' check_mtcars_2(iris)
NULL

#' @rdname utils_check_factories
#' @export
create_data_checker <- function(data, req_cols = NULL, req_col_types = NULL) {
  df_chk_func <- NULL

  if (inherits(data, "tbl_df")) {
    df_chk_func <- check_tibble
  } else if (inherits(data, "data.frame")) {
    df_chk_func <- check_data_frame
  } else {
    cli::cli_abort(
      "{.arg data} must be a tibble or data frame.",
      call = rlang::caller_env()
    )
  }

  col_names <- names(data)
  col_types <- sapply(data, function(x) class(x)[1])

  function(data, arg = rlang::caller_arg(data), call = rlang::caller_env()) {
    df_chk_func(data, arg = arg, call = call)

    if (!is.null(req_cols)) {
      check_col_names(data, req_cols, arg = arg, call = call)
    } else {
      check_col_names(data, col_names, arg = arg, call = call)
    }

    if (!is.null(req_col_types)) {
      check_col_types(data, req_col_types, arg = arg, call = call)
    } else {
      check_col_types(data, col_types, arg = arg, call = call)
    }

    invisible(data)
  }
}


