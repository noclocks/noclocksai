#' Launch Shiny Assistant App
#'
#' @description
#' Launches the Shiny Assistant app for AI-powered Shiny app generation.
#' The app provides an interactive chat interface where users can describe
#' what they want to build, and the AI will generate complete Shiny
#' applications with live preview in Shinylive.
#'
#' @param port Integer. Port number for the Shiny app (default: random)
#' @param host Character. Host address (default: "127.0.0.1")
#' @param launch_browser Logical. Whether to launch browser automatically (default: TRUE)
#' @param ... Additional arguments passed to \code{\link[shiny]{runApp}}
#'
#' @details
#' The Shiny Assistant app includes:
#' \itemize{
#'   \item AI-powered chat interface using ellmer and OpenAI
#'   \item Package availability checking for webR/Shinylive compatibility
#'   \item Real-time code generation and preview
#'   \item Interactive Shinylive editor integration
#'   \item Enhanced prompts for better code generation
#' }
#'
#' The app requires an OpenAI API key to be configured. You can set this using:
#' \code{noclocksai::set_openai_api_key("your-api-key")}
#'
#' @return Invisibly returns the result of \code{\link[shiny]{runApp}}
#'
#' @examples
#' \dontrun{
#' # Launch the app with default settings
#' shiny_assistant()
#'
#' # Launch on specific port
#' shiny_assistant(port = 3838)
#'
#' # Launch without opening browser
#' shiny_assistant(launch_browser = FALSE)
#' }
#'
#' @export
shiny_assistant <- function(port = NULL, host = "127.0.0.1", launch_browser = TRUE, ...) {
  # Check if required packages are available
  required_packages <- c("shiny", "bslib", "shinychat", "ellmer")
  missing_packages <- required_packages[!sapply(required_packages, requireNamespace, quietly = TRUE)]

  if (length(missing_packages) > 0) {
    cli::cli_abort(c(
      "Missing required packages for Shiny Assistant:",
      "x" = "Please install: {paste(missing_packages, collapse = ', ')}",
      "i" = "Run: install.packages(c({paste(paste0('\"', missing_packages, '\"'), collapse = ', ')}))"
    ))
  }

  # Check for OpenAI API key
  if (is.null(get_openai_api_key()) || nchar(get_openai_api_key()) == 0) {
    cli::cli_warn(c(
      "!" = "No OpenAI API key found.",
      "i" = "Set your API key with: noclocksai::set_openai_api_key('your-key')",
      "i" = "The app may not work properly without an API key."
    ))
  }

  # Get the app directory
  app_dir <- system.file("shiny", "app_assistant", package = "noclocksai")

  if (!dir.exists(app_dir)) {
    cli::cli_abort(c(
      "x" = "Shiny Assistant app directory not found.",
      "i" = "Expected location: {app_dir}",
      "i" = "Please reinstall the noclocksai package."
    ))
  }

  cli::cli_inform(c(
    "v" = "Starting Shiny Assistant...",
    "i" = "App directory: {app_dir}",
    "i" = "Host: {host}",
    "i" = "Port: {port %||% 'random'}"
  ))

  # Run the app
  result <- shiny::runApp(
    appDir = app_dir,
    port = port,
    host = host,
    launch.browser = launch_browser,
    ...
  )

  invisible(result)
}

#' Check Shiny Assistant Dependencies
#'
#' @description
#' Checks if all required dependencies for the Shiny Assistant app are available.
#'
#' @return Logical. TRUE if all dependencies are available, FALSE otherwise.
#' @export
check_shiny_assistant_deps <- function() {
  required_packages <- c("shiny", "bslib", "shinychat", "ellmer", "jsonlite", "base64enc", "stringr", "qs2", "tibble")

  availability <- sapply(required_packages, requireNamespace, quietly = TRUE)
  missing <- names(availability)[!availability]

  if (length(missing) > 0) {
    cli::cli_alert_danger("Missing packages: {paste(missing, collapse = ', ')}")
    cli::cli_alert_info("Install with: install.packages(c({paste(paste0('\"', missing, '\"'), collapse = ', ')}))")
    return(FALSE)
  } else {
    cli::cli_alert_success("All Shiny Assistant dependencies are available!")
    return(TRUE)
  }
}
