#  ------------------------------------------------------------------------
#
# Title : Test Configuration Helpers
#    By : GitHub Copilot
#  Date : 2025-06-27
#
#  ------------------------------------------------------------------------

# Test Configuration Setup ===============================================

#' Create a temporary test configuration file
#'
#' @param config_list Named list of configuration settings
#' @param temp_dir Directory to create config file in (uses tempdir() if NULL)
#' @returns Path to created config file
create_test_config <- function(config_list = NULL, temp_dir = NULL) {
  if (is.null(temp_dir)) temp_dir <- tempdir()
  if (is.null(config_list)) {
    config_list <- list(
      default = list(
        llms = list(
          openai_api_key = "mock-openai-key-12345",
          anthropic_api_key = "mock-anthropic-key-12345",
          gemini_api_key = "mock-gemini-key-12345"
        ),
        tools = list(
          gmaps_api_key = "mock-gmaps-key-12345",
          openweather_api_key = "mock-weather-key-12345"
        ),
        db = list(
          host = "localhost",
          port = 5432,
          dbname = "test_db",
          user = "test_user",
          password = "test_password"
        )
      ),
      testing = list(
        llms = list(
          openai_api_key = "test-openai-key",
          anthropic_api_key = "test-anthropic-key",
          gemini_api_key = "test-gemini-key"
        ),
        tools = list(
          gmaps_api_key = "test-gmaps-key",
          openweather_api_key = "test-weather-key"
        ),
        db = list(
          host = "localhost",
          port = 5432,
          dbname = "noclocksai_test",
          user = "postgres",
          password = "postgres"
        )
      )
    )
  }

  config_file <- file.path(temp_dir, "test_config.yml")
  yaml::write_yaml(config_list, config_file)
  config_file
}

#' Set up test environment with configuration
#'
#' @param config_file Path to config file (creates temporary one if NULL)
#' @param config_active Active configuration to use (default: "testing")
setup_test_config <- function(config_file = NULL, config_active = "testing") {
  if (is.null(config_file)) {
    config_file <- create_test_config()
  }

  withr::local_envvar(
    R_CONFIG_FILE = config_file,
    R_CONFIG_ACTIVE = config_active,
    TESTTHAT = "true"
  )

  config_file
}

# Skip Functions =========================================================

#' Skip test if configuration file is not available
#'
#' @param reason Optional reason for skipping
skip_if_no_config <- function(reason = "Configuration file not available") {
  config_file <- Sys.getenv("R_CONFIG_FILE", "")
  if (config_file == "" || !file.exists(config_file)) {
    testthat::skip(reason)
  }
}

#' Skip test if API key is not available
#'
#' @param api_name Name of the API to check
#' @param reason Optional reason for skipping
skip_if_no_api <- function(api_name, reason = NULL) {
  if (is.null(reason)) {
    reason <- paste("API key for", api_name, "not available")
  }

  # Check environment variables first
  env_var <- paste0(toupper(api_name), "_API_KEY")
  if (Sys.getenv(env_var) != "") return()

  # Check configuration
  tryCatch({
    key <- get_api_key(api_name)
    if (is.null(key) || key == "" || grepl("^(mock|test)-", key)) {
      testthat::skip(reason)
    }
  }, error = function(e) {
    testthat::skip(reason)
  })
}

#' Skip test if database is not available
#'
#' @param reason Optional reason for skipping
skip_if_no_db <- function(reason = "Database not available") {
  tryCatch({
    db_config <- get_db_config()
    conn <- db_connect(db_config, pool = FALSE)
    DBI::dbDisconnect(conn)
  }, error = function(e) {
    testthat::skip(reason)
  })
}

#' Skip test if network is not available
#'
#' @param reason Optional reason for skipping
skip_if_offline <- function(reason = "Network not available") {
  tryCatch({
    httr2::request("https://httpbin.org/get") |>
      httr2::req_timeout(5) |>
      httr2::req_perform()
  }, error = function(e) {
    testthat::skip(reason)
  })
}

#' Skip test if encryption key is not available
#'
#' @param key_name Name of encryption key (default: "NOCLOCKS_ENCRYPTION_KEY")
#' @param reason Optional reason for skipping
skip_if_no_encryption_key <- function(key_name = "NOCLOCKS_ENCRYPTION_KEY", reason = NULL) {
  if (is.null(reason)) {
    reason <- paste("Encryption key", key_name, "not available")
  }

  if (!httr2::secret_has_key(key_name)) {
    testthat::skip(reason)
  }
}

# Test Environment Helpers ===============================================

#' Check if running in test environment
#'
#' @returns Logical indicating if in test environment
is_testing <- function() {
  identical(Sys.getenv("TESTTHAT"), "true")
}

#' Get a temporary directory for test files
#'
#' @param prefix Optional prefix for directory name
#' @returns Path to temporary directory
get_test_temp_dir <- function(prefix = "noclocksai_test") {
  temp_dir <- file.path(tempdir(), paste0(prefix, "_", Sys.getpid(), "_", sample(1000:9999, 1)))
  dir.create(temp_dir, recursive = TRUE, showWarnings = FALSE)
  temp_dir
}

#' Clean up test files and directories
#'
#' @param paths Character vector of paths to clean up
cleanup_test_files <- function(paths) {
  for (path in paths) {
    if (file.exists(path)) {
      if (dir.exists(path)) {
        unlink(path, recursive = TRUE)
      } else {
        unlink(path)
      }
    }
  }
}
