
#  ------------------------------------------------------------------------
#
# Title : Logger
#    By : Jimmy Briggs
#  Date : 2025-03-14
#
#  ------------------------------------------------------------------------

# logger ----------------------------------------------------------------------------------------------------------

#' Initialize Logger
#'
#' @description
#' Initializes the logger with the specified parameters.
#'
#' @param level The logging level. Default is `logger::INFO`.
#' @param formatter The formatter function. Default is `logger::formatter_json`.
#' @param layout The layout function. Default is `logger::layout_json`.
#' @param log_file The log file path. Default is `NULL`, which uses the default log path.
#' @param console Whether to log to the console. Default is `TRUE`.
#' @param async Whether to use asynchronous logging. Default is `FALSE`.
#' @param namespace The namespace for the logger. Default is `NULL`, which uses the package name.
#' @param frame The parent frame for the logger. Default is `parent.frame()`.
#' @param ... Additional arguments to pass to the logger.
#'
#' @returns
#' Invisibly returns a list of logger metadata variables.
#'
#' @export
#'
#' @importFrom logger log_threshold log_appender log_info log_error log_warn log_debug log_trace
#' @importFrom glue glue
logger_init <- function(
    level = logger::INFO,
    formatter = NULL,
    layout = NULL,
    log_file = NULL,
    console = TRUE,
    async = FALSE,
    namespace = NULL,
    frame = parent.frame(),
    ...
) {

  # namespace
  logger_ns <- if (is.null(namespace)) {
    if (is.null(.logger_env$logger_ns)) {
      .logger_env$logger_ns <- "noclocksai"
    } else {
      .logger_env$logger_ns
    }
  } else {
    namespace
  }
  assign("logger_ns", logger_ns, envir = .logger_env)

  # log file
  logger_file <- if (is.null(log_file)) {
    .default_log_path()
  } else if (is.logical(log_file) && log_file) {
    .default_log_path()
  } else if (is.logical(log_file) && !log_file) {
    NULL
  } else if (is.character(log_file)) {
    normalizePath(log_file, mustWork = FALSE)
  } else {
    NULL
  }
  assign("log_file", logger_file, envir = .logger_env)

  # threshold
  logger::log_threshold(level, namespace = logger_ns)
  assign("log_level", level, envir = .logger_env)

  # formatter
  if (is.null(formatter)) {
    formatter <- logger::formatter_json
  }
  assign("formatter", formatter, envir = .logger_env)

  # layout
  if (is.null(layout)) {
    layout <- logger::layout_json
  }
  assign("layout", layout, envir = .logger_env)

  # console
  if (console) {
    log_appender <- logger::appender_tee(file = logger_file, append = TRUE)
  } else {
    log_appender <- logger::appender_file(logger_file, append = TRUE)
  }

  # async
  if (async) {
    log_appender <- logger::appender_async(log_appender, namespace = logger_ns, init = function() logger::log_info("Async logger initialized"))
  }

  # appender
  logger::log_appender(log_appender, namespace = logger_ns)

  msg <- glue::glue(
    "Logger initialized with level: {level}, ",
    "formatter: {formatter}, ",
    "layout: {layout}, ",
    "log_file: {log_file}, ",
    "console: {console}, ",
    "async: {async}"
  )

  logger::log_info(msg, namespace = logger_ns)

  meta <- logger::get_logger_meta_variables(namespace = logger_ns)
  invisible(meta)
}

#' Reset Logger Configuration
#'
#' @description
#' Resets the logger configuration to the default settings and removes all hooks.
#'
#' @param namespace The namespace for the logger. Default is `NULL`, which uses the package name.
#'
#' @export
logger_reset <- function(namespace = NULL) {

  logger_hooks_reset()

  logger::log_threshold(logger::INFO, namespace = namespace)
  logger::log_formatter(logger::formatter_glue, namespace = namespace)
  logger::log_layout(logger::layout_glue, namespace = namespace)
  logger::log_appender(logger::appender_console(), namespace = namespace)

  logger::log_info("Logger reset to default configuration", namespace = namespace)

  invisible(TRUE)

}


# log functions ---------------------------------------------------------------------------------------------------

#' Log a Function Call with Arguments
#'
#' @param fn_name Name of the function being called
#' @param args List of arguments
#' @param level Logging level (default: "INFO")
#' @param namespace Logger namespace
#'
#' @export
log_function_call <- function(fn_name, args = list(), level = "INFO",
                              namespace = .logger_env$logger_ns) {
  # Format arguments
  args_str <- paste(
    names(args),
    "=",
    vapply(args, function(x) {
      if (is.character(x)) {
        paste0("\"", substr(x, 1, 50), if(nchar(x) > 50) "..." else "", "\"")
      } else if (is.null(x)) {
        "NULL"
      } else if (length(x) > 5) {
        paste0("[", class(x)[1], "(", length(x), ")]")
      } else {
        paste(as.character(x), collapse = ", ")
      }
    }, character(1)),
    collapse = ", "
  )

  # Log the function call
  log_fn <- switch(toupper(level),
                   "TRACE" = logger::log_trace,
                   "DEBUG" = logger::log_debug,
                   "INFO" = logger::log_info,
                   "WARN" = logger::log_warn,
                   "ERROR" = logger::log_error,
                   "FATAL" = logger::log_fatal,
                   logger::log_info)

  log_fn(paste0("Call: ", fn_name, "(", args_str, ")"), namespace = namespace)
}

# hooks -----------------------------------------------------------------------------------------------------------

#' Logger Hooks
#'
#' @name logger_hooks
#'
#' @description
#' Setup or reset logging hooks for various types of messages in R.
#'
#' - `logger_hooks_init()`: Initializes the logging hooks.
#' - `logger_hooks_reset()`: Resets the logging hooks to their original state.
#'
#' @param log_errors Whether to log error messages
#' @param log_warnings Whether to log warning messages
#' @param log_messages Whether to log regular messages
#' @param log_cli Whether to log CLI alerts
#' @param log_ellmer Whether to log ellmer chat interactions
#' @param error_traceback Whether to include traceback in error logs
#' @param error_quiet Whether to suppress errors after logging
#'
#' @export
logger_hooks_init <- function(
    log_errors = TRUE,
    log_warnings = TRUE,
    log_messages = TRUE,
    log_cli = TRUE,
    error_traceback = FALSE,
    error_quiet = FALSE
) {

  logger_hooks_reset()

  if (log_messages) { globalCallingHandlers(message = .log_hook_messages()) }
  if (log_warnings) { globalCallingHandlers(warning = .log_hook_warnings()) }
  if (log_errors) { globalCallingHandlers(error = .log_hook_errors(error_quiet, error_traceback)) }
  if (log_cli && requireNamespace("cli", quietly = TRUE)) { .log_cli_alerts() }

  invisible()
}

#' @rdname logger_hooks
#' @export
logger_hooks_reset <- function() {

  existing_handlers <- names(globalCallingHandlers())

  for (handler in existing_handlers) {
    globalCallingHandlers(handler = NULL)
  }

  if (requireNamespace("cli", quietly = TRUE)) {
    cli_fns <- c(
      "cli_alert_success",
      "cli_alert_danger",
      "cli_alert_warning",
      "cli_alert_info"
    )
    for (fn in cli_fns) {
      if (exists(fn, where = asNamespace("cli"), mode = "function")) {
        try(untrace(what = fn, where = asNamespace("cli")), silent = TRUE)
      }
    }
  }

  invisible()
}

# environment -----------------------------------------------------------------------------------------------------

.logger_env <- new.env()

.logger_env$logger_ns <- "noclocksai"
.logger_env$log_file <- NULL
.logger_env$log_level <- logger::INFO
.logger_env$formatter <- logger::formatter_json
.logger_env$layout <- logger::layout_json
.logger_env$console <- TRUE
.logger_env$async <- FALSE
.logger_env$log_errors <- TRUE
.logger_env$log_warnings <- TRUE
.logger_env$log_messages <- TRUE
.logger_env$log_cli_alerts <- TRUE

.logger_env$base <- list()

.logger_env$cli <- list()
.logger_env$cli$alert_info <- cli::cli_alert_info
.logger_env$cli$alert_warning <- cli::cli_alert_warning
.logger_env$cli$alert_error <- cli::cli_alert_danger
.logger_env$cli$alert_success <- cli::cli_alert_success


# internals -------------------------------------------------------------------------------------------------------

.default_log_path <- function(extension = c("log", "json")) {
  extension <- match.arg(extension)
  pkg_name <- "noclocksai"
  log_dir <- file.path(rappdirs::user_log_dir(pkg_name))

  dir_created <- dir.create(log_dir, recursive = TRUE, showWarnings = FALSE)
  if (!dir_created) { warning("Could not create log directory: ", log_dir) }
  log_file <- paste0(pkg_name, ".", extension)
  file.path(log_dir, log_file)
}

.log_hook_errors <- function(quiet = FALSE, traceback = FALSE, namespace = NULL) {
  structure(
    function(msg) {
      call_info <- if (!is.null(msg$call)) {
        tryCatch(
          {
            deparse(msg$call)[1]
          },
          error = function(e) { "Unknown" }
        )
      } else {
        "Unknown"
      }

      logger::log_error(
        paste0("[", call_info, "]", msg$message),
        .topcall = msg$call
      )

      if (traceback) {
        bt <- .traceback(3L)
        logger::log_level(logger::ERROR, "Traceback:", .topcall = msg$call)
        for (i in seq_along(bt)) {
          message <- paste0(length(bt) - i + 1L, ": ", bt[[i]])
          ref <- attr(bt[[i]], "srcref")
          file <- attr(ref, "srcfile")
          if (inherits(file, "srcfile")) {
            file <- basename(file$filename)
            line <- paste(unique(c(ref[1L], ref[3L])), collapse = "-")
            message <- paste0(message, " at ", file, " #", line)
          }
          logger::log_level(
            logger::ERROR,
            logger::skip_formatter(message),
            .topcall = msg$call
          )
        }
      }
      if (quiet) { invokeRestart("abort") }
    },
    implements = "log_errors"
  )
}

.log_hook_messages <- function() {
  structure(
    function(msg) {
      logger::log_info(msg$message, .topcall = msg$call)
    },
    implements = "log_messages"
  )
}

.log_hook_warnings <- function() {
  structure(
    function(msg) {
      logger::log_warn(msg$message, .topcall = msg$call)
    },
    implements = "log_warnings"
  )
}

.log_cli_alerts <- function() {

  if (any(sapply(
    globalCallingHandlers()[names(globalCallingHandlers()) == "cli_alert"],
    attr, which = "implements") == "log_cli_alerts"
  )) {
    warning("CLI alert logging already registered")
    return(invisible())
  }

  cli_handlers <- list(
    cli_alert_success = function(msg) {
      logger::log_info(paste("[SUCCESS]", msg$message), .topcall = msg$call)
    },
    cli_alert_danger = function(msg) {
      logger::log_warn(paste("[DANGER]", msg$message), .topcall = msg$call)
    },
    cli_alert_warning = function(msg) {
      logger::log_warn(paste("[WARNING]", msg$message), .topcall = msg$call)
    },
    cli_alert_info = function(msg) {
      logger::log_info(paste("[INFO]", msg$message), .topcall = msg$call)
    }
  )

  for (fn_name in names(cli_handlers)) {
    if (exists(fn_name, where = asNamespace("cli"), mode = "function")) {
      trace(
        what = fn_name,
        where = asNamespace("cli"),
        tracer = cli_handlers[[fn_name]],
        print = FALSE
      )
    }
  }

  invisible()
}

.log_ellmer_chats <- function(namespace = .logger_env$logger_ns) {

  if (!requireNamespace("ellmer", quietly = TRUE)) {
    warning("ellmer package not available")
    return(invisible(FALSE))
  }

  if (!exists("ellmer_original_methods", envir = .logger_env)) {
    .logger_env$ellmer_original_methods <- list()

    Chat <- ellmer:::Chat

    if (exists("chat", where = Chat$public_methods)) {
      .logger_env$ellmer_original_methods$chat <- Chat$public_methods$chat

      Chat$set("public", "chat", function(prompt, ...) {
        logger::log_info(paste0("> ", prompt), namespace = namespace)

        current_turns <- length(self$get_turns(detailed = TRUE))

        result <- .logger_env$ellmer_original_methods$chat(self, prompt, ...)

        all_turns <- self$get_turns(detailed = TRUE)
        new_turns <- all_turns[(current_turns + 1):length(all_turns)]

        for (turn in new_turns) {
          if (turn@role == "assistant") {
            response_text <- gsub("\n", "\n< ", turn@text)
            logger::log_info(paste0("< ", response_text), namespace = namespace)

            if (length(turn@tokens) == 2) {
              logger::log_debug(
                paste0("< [Tokens: prompt=", turn@tokens[1],
                       ", completion=", turn@tokens[2], "]"),
                namespace = namespace
              )
            }

            logger::log_info("<", namespace = namespace)
          }
        }

        return(result)
      }, overwrite = TRUE)

      logger::log_debug("Registered ellmer chat logging", namespace = namespace)
    }
  } else {
    warning("ellmer chat logging already registered")
  }

  invisible(TRUE)
}

# onLoad ----------------------------------------------------------------------------------------------------------

rlang::on_load(
  expr = {
    .logger_hooks_init()
  }
)
