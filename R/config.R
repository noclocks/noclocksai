
#  ------------------------------------------------------------------------
#
# Title : Configuration
#    By : Jimmy Briggs
#  Date : 2025-03-03
#
#  ------------------------------------------------------------------------

#' Configuration
#'
#' @name config
#'
#' @description
#' Functions for managing configuration settings and environment variables.
#'
#' Functions:
#'
#' - `get_openai_api_key()`: Get the OpenAI API key from the configuration file.
#' - `set_openai_api_key()`: Set the OpenAI API key as an environment variable.
#'
#' - `get_gemini_api_key()`: Get the Gemini API key from the configuration file.
#' - `set_gemini_api_key()`: Set the Gemini API key as an environment variable.
#'
#' - `get_gmaps_api_key()`: Get the Google Maps API key from the configuration file.
#' - `set_gmaps_api_key()`: Set the Google Maps API key as an environment variable.
#'
#' - `get_hunterio_api_key()`: Get the Hunter.io API key from the configuration file.
#' - `set_hunterio_api_key()`: Set the Hunter.io API key as an environment variable.
#'
#' @returns
#' Each function returns the respective API key or sets it as an environment variable.
NULL

#' @rdname config
#' @export
#' @importFrom config get
#' @importFrom cli cli_abort
get_openai_api_key <- function() {

  if (Sys.getenv("OPENAI_API_KEY") != "") {
    return(Sys.getenv("OPENAI_API_KEY"))
  }

  if (!is.null(config::get("openai_api_key"))) {
    key <- config::get("openai_api_key")
    Sys.setenv("OPENAI_API_KEY" = key)
    return(key)
  }

  cli::cli_abort(
    "OpenAI API key is not set. Please set it using {.code set_openai_api_key()}."
  )

}

#' @rdname config
#' @export
#' @importFrom cli cli_alert_success
set_openai_api_key <- function(key) {
  Sys.setenv("OPENAI_API_KEY" = key)
  cli::cli_alert_success(
    "OpenAI API Key successfull set as environment variable {.envvar OPENAI_API_KEY}."
  )
}

#' @rdname config
#' @export
#' @importFrom config get
#' @importFrom cli cli_abort
get_gemini_api_key <- function() {

  if (Sys.getenv("GEMINI_API_KEY") != "") {
    Sys.setenv("GOOGLE_API_KEY" = Sys.getenv("GEMINI_API_KEY"))
    return(Sys.getenv("GEMINI_API_KEY"))
  }

  if (Sys.getenv("GOOGLE_API_KEY") != "") {
    Sys.setenv("GEMINI_API_KEY" = Sys.getenv("GOOGLE_API_KEY"))
    return(Sys.getenv("GOOGLE_API_KEY"))
  }

  if (!is.null(config::get("gemini_api_key"))) {
    key <- config::get("gemini_api_key")
    Sys.setenv("GEMINI_API_KEY" = key)
    Sys.setenv("GOOGLE_API_KEY" = key)
    return(key)
  }

  cli::cli_abort(
    "Gemini API key is not set. Please set it using {.code set_gemini_api_key()}."
  )

}

#' @rdname config
#' @export
set_gemini_api_key <- function(key) {
  Sys.setenv("GEMINI_API_KEY" = key)
  Sys.setenv("GOOGLE_API_KEY" = key)
  cli::cli_alert_success(
    "Gemini API Key successfull set as environment variable {.envvar GEMINI_API_KEY}."
  )
}

#' @rdname config
#' @export
#' @importFrom config get
#' @importFrom cli cli_abort
#' @importFrom googleway set_key
get_gmaps_api_key <- function() {

  if (Sys.getenv("GMAPS_API_KEY") != "") {
    return(Sys.getenv("GMAPS_API_KEY"))
  }

  if (!is.null(config::get("gmaps_api_key"))) {
    key <- config::get("gmaps_api_key")
    Sys.setenv("GMAPS_API_KEY" = key)
    googleway::set_key(key)
    return(key)
  }

  cli::cli_abort(
    "Google Maps API key is not set. Please set it using {.code set_gmaps_api_key()}."
  )

}

#' @rdname config
#' @export
#' @importFrom cli cli_alert_success
#' @importFrom googleway set_key
set_gmaps_api_key <- function(key) {
  Sys.setenv("GMAPS_API_KEY" = key)
  googleway::set_key(key)
  cli::cli_alert_success(
    "Google Maps API Key successfull set as environment variable {.envvar GMAPS_API_KEY}."
  )
}
