
noclocksai_cache_env <- rlang::new_environment()

cache_last_chat <- function(chat, ...) {

  last_turn_user <- chat$last_turn(role = "user")
  last_turn_assistant <- chat$last_turn(role = "assistant")

  obj <- list(
    user = last_turn_user,
    assistant = last_turn_assistant,
    chat = chat
  )

  noclocksai_cache_env[["last_chat"]] <- obj

  invisible(obj)

}

#' Caching Utility Functions
#'
#' @name cache
#'
#' @description
#' These functions provide a simple caching mechanism for storing and retrieving objects to and from disk.
#'
#' - `write_cache()`: Save an object to disk using the `qs` format.
#' - `read_cache()`: Read an object from disk using the `qs` format.
#'
#' @param obj The object to be cached.
#' @param name The name of the object to be cached. If `NULL`, the name of the object in the environment will be used.
#' @param path The directory where the object will be cached. Default is `"cache"`.
#' @param overwrite If `TRUE`, overwrite the existing file if it exists. Default is `FALSE`.
#' @param ... Additional arguments passed to the `qs2` functions.
#'
#' @returns
#' - `write_cache()`: Invisible object.
#' - `read_cache()`: Invisible path to the cached file.
#'
#' @seealso [qs2::qs_read()] and [qs2::qs_save()]
NULL


#' @rdname cache
#' @export
#' @importFrom cli cli_alert_success cli_alert_warning cli_alert_danger
#' @importFrom qs2 qs_save qs_read
#' @importFrom fs dir_create
write_cache <- function(
  obj,
  name = NULL,
  path = "cache",
  overwrite = FALSE,
  ...
) {

  check_dir(path)
  if (is.null(name)) name <- deparse(substitute(obj))
  qs_file <- file.path(path, paste0(name, ".qs"))
  if (file.exists(qs_file) && !overwrite) {
    cli::cli_alert_warning("File {.file {qs_file}} already exists. Use {.code overwrite = TRUE} to overwrite.")
    return(invisible(NULL))
  }
  tryCatch({
    qs2::qs_save(obj, qs_file, ...)
    cli::cli_alert_success("Object {.field {name}} saved to {.file {qs_file}}.")
  }, error = function(e) {
    cli::cli_alert_danger("Failed to cache object {.field {name}}: {.error {e$message}}")
    return(invisible(NULL))
  })
  invisible(obj)
}

#' @rdname cache
#' @export
#' @importFrom cli cli_alert_success cli_alert_warning cli_alert_danger
#' @importFrom qs2 qs_read
read_cache <- function(
  name,
  path = "cache",
  ...
) {

  check_dir(path)
  qs_file <- file.path(path, paste0(name, ".qs"))
  if (!file.exists(qs_file)) {
    cli::cli_alert_warning("File {.file {qs_file}} does not exist.")
    return(NULL)
  }
  tryCatch({
    obj <- qs2::qs_read(qs_file, ...)
    cli::cli_alert_success("Object {.field {name}} read from {.file {qs_file}}.")
    return(obj)
  }, error = function(e) {
    cli::cli_alert_danger("Failed to read object {.field {name}}: {.error {e$message}}")
    return(NULL)
  })
  invisible(qs_file)
}


