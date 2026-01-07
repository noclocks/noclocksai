#  ------------------------------------------------------------------------
#
# Title : Configuration
#    By : Jimmy Briggs
#  Date : 2025-03-03
#
#  ------------------------------------------------------------------------


# topic -----------------------------------------------------------------------------------------------------------

#' Configuration
#'
#' @name config
#'
#' @description
#' Functions for managing configuration settings and environment variables.
#'
#' Functions:
#'
#' - `get_db_config()`: Get the database configuration from the configuration file.
#'
#' - `get_llms_config()`: Get the LLM configuration from the configuration file.
#'
#' - `get_tools_config()`: Get the tools configuration from the configuration file.
#'
#' LLM API Keys:
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


# encryption ------------------------------------------------------------------------------------------------------

#' Encrypt/Decrypt Configuration Files
#'
#' @name encrypt_config
#'
#' @description
#' Functions for encrypting and decrypting configuration files.
#'
#' Functions:
#'
#' - `encrypt_config()`: Encrypt a configuration file using a secret key.
#' - `decrypt_config()`: Decrypt an encrypted configuration file using a secret key.
#'
#' @param config_file A character string representing the path to the configuration file. If left
#'   `NULL`, the function will attempt to use the default configuration file via `pkg_sys_config("config.yml")`.
#'
#' @param encrypted_file A character string representing the path to the encrypted configuration file. If left
#'   `NULL`, the function will create a new file with the same name as the original file but with the extension
#'   `.encrypted.yml`.
#'
#' @param decrypted_file A character string representing the path to the decrypted configuration file. If left
#'   `NULL`, the function will create a new `config.yml` in the same directory as the encrypted file.
#'
#' @param overwrite A logical value indicating whether to overwrite an existing encrypted file. Default is `TRUE`.
#'
#' @param key A character string representing the name of the encryption key. Default is `NOCLOCKS_ENCRYPTION_KEY`.
#'
#' @param set_env A logical value indicating whether to set the `R_CONFIG_FILE` environment variable to the decrypted file.
#'
#' @returns
#' - `encrypt_config()`: Returns `0` invisibly.
#' - `decrypt_config()`: Returns the configuration invisibly.
#'
#' @export
#'
#' @importFrom cli cli_abort cli_alert_success cli_alert_warning cli_alert_info
#' @importFrom fs path path_ext_remove
#' @importFrom httr2 secret_encrypt_file secret_decrypt_file secret_has_key
#' @importFrom config get
#'
#' @examples
#' \dontrun{
#' # encrypt the default configuration file
#' encrypt_config()
#'
#' # decrypt the encrypted configuration file
#' decrypt_config()
#' }
encrypt_config <- function(
    config_file = NULL,
    encrypted_file = NULL,
    overwrite = TRUE,
    key = "NOCLOCKS_ENCRYPTION_KEY"
) {

  if (!httr2::secret_has_key(key)) {
    cli::cli_abort(
      c(
        "Encryption key: {.field {key}} not found.\n",
        "Please set the encryption key environment variable: {.envvar NOCLOCKS_ENCRYPTION_KEY}."
      )
    )
  }

  if (is.null(config_file)) {
    config_file <- pkg_sys_config("config.yml")
  }

  config_file <- normalizePath(config_file, mustWork = FALSE)

  if (!file.exists(config_file)) {
    cli::cli_abort(
      c(
        "Configuration file: {.file {config_file}} not found.\n",
        "Please ensure the file exists before attempting to encrypt it."
      )
    )
  }

  if (is.null(encrypted_file)) {
    encrypted_file <- fs::path_ext_remove(config_file) |>
      paste0(".encrypted.yml") |>
      fs::path()
  }

  if (file.exists(encrypted_file)) {
    if (!overwrite) {
      cli::cli_abort(
        c(
          "Encrypted configuration file: {.file {encrypted_file}} already exists.\n",
          "Please set the {.arg overwrite} argument to {.code TRUE} to overwrite the existing file."
        )
      )
    }

    cli::cli_alert_warning(
      c(
        "Encrypted configuration file: {.file {encrypted_file}} already exists.\n",
        "Overwriting the existing file with the encrypted configuration."
      )
    )
  }

  file.copy(config_file, encrypted_file, overwrite = TRUE)

  httr2::secret_encrypt_file(path = encrypted_file, key = key)
  cli::cli_alert_success("Successfully encrypted the config file: {.file {encrypted_file}}.")
  return(invisible(0))

}

#' @rdname encrypt_config
#' @export
#' @importFrom cli cli_abort cli_alert_success cli_alert_warning cli_alert_info
#' @importFrom fs path path_ext_remove
#' @importFrom httr2 secret_decrypt_file secret_has_key
#' @importFrom config get
decrypt_config <- function(
    encrypted_file = NULL,
    decrypted_file = NULL,
    key = "NOCLOCKS_ENCRYPTION_KEY",
    set_env = FALSE
) {

  if (!httr2::secret_has_key(key)) {
    cli::cli_abort(
      c(
        "Encryption key: {.field {key}} not found.",
        "Please set the encryption key environment variable: {.envvar NOCLOCKS_ENCRYPTION_KEY}."
      )
    )
  }

  if (is.null(encrypted_file)) {
    encrypted_file <- pkg_sys_config("config.encrypted.yml")
  }

  if (!file.exists(encrypted_file)) {
    cli::cli_abort(
      c(
        "Encrypted configuration file: {.file {encrypted_file}} not found.",
        "Please ensure the file exists before attempting to decrypt it."
      )
    )
  }

  cfg_file_decrypted_temp <- httr2::secret_decrypt_file(
    path = encrypted_file,
    key = key
  )

  withr::defer(file.remove(cfg_file_decrypted_temp))

  cli::cli_alert_success("Successfully decrypted the configuration file: {.file {encrypted_file}}")

  # If decrypted_file is NULL, don't copy the file, just set it as the active config
  if (is.null(decrypted_file)) {
    if (!set_env) {
      Sys.setenv("R_CONFIG_FILE" = cfg_file_decrypted_temp)
      return(invisible(config::get(file = cfg_file_decrypted_temp)))
    } else {
      Sys.setenv("R_CONFIG_FILE" = cfg_file_decrypted_temp)
      cli::cli_alert_info("Set Environment Variable {.envvar R_CONFIG_FILE} to: {.file {cfg_file_decrypted_temp}}")
      return(invisible(config::get(file = cfg_file_decrypted_temp)))
    }
  }

  if (file.exists(decrypted_file)) {
    cli::cli_alert_warning(
      c(
        "Configuration file: {.file {decrypted_file}} already exists.",
        "Overwriting the existing file with the decrypted configuration."
      )
    )
  }

  file.copy(cfg_file_decrypted_temp, decrypted_file, overwrite = TRUE)

  cli::cli_alert_success("Successfully copied the decrypted configuration file to: {.file {decrypted_file}}")

  if (!set_env) {
    return(invisible(config::get(file = decrypted_file)))
  }

  Sys.setenv("R_CONFIG_FILE" = decrypted_file)
  cli::cli_alert_info("Set Environment Variable {.envvar R_CONFIG_FILE} to: {.file {decrypted_file}}")

  return(invisible(config::get(file = decrypted_file)))

}

# template --------------------------------------------------------------------------------------------------------

#' Create a Configuration Template
#'
#' @description
#' Create a template configuration file based on an existing configuration file with all values replaced by placeholders.
#'
#' @inheritParams encrypt_config
#' @param template_file A character string representing the path to the template file. If left `NULL`, the function will
#'   create a new file with the same name and path as the original file but with the extension `.template.yml`.
#'
#' @returns
#' The function writes the template configuration file to the specified location.
#'
#' @export
#'
#' @importFrom cli cli_abort cli_alert_success
#' @importFrom fs path path_ext_remove
#' @importFrom config get
#' @importFrom yaml as.yaml yaml.load_file
#' @importFrom purrr imap pluck compact
create_config_template <- function(
    config_file = Sys.getenv("R_CONFIG_FILE", unset = pkg_sys_config("config.yml")),
    template_file = NULL
) {

  if (!file.exists(config_file)) {
    cli::cli_abort(
      c(
        "Configuration file: {.file {config_file}} not found.\n",
        "Please ensure the file exists before attempting to create a template."
      )
    )
  }

  if (is.null(template_file)) {
    template_file <- gsub("\\.yml$", ".template.yml", config_file)
  }

  # Load the config.yml file
  config <- yaml::yaml.load_file(config_file)

  # Helper function to generate placeholders
  create_placeholder <- function(name) { paste0("<", toupper(name), ">") }

  # Recursively replace values with placeholders
  replace_values <- function(x) {
    if (is.list(x)) {
      purrr::imap(x, function(value, key) {
        if (is.list(value)) {
          replace_values(value)
        } else {
          create_placeholder(key)
        }
      })
    } else {
      create_placeholder(x)
    }
  }

  # Recursively traverse the config and replace values
  config_template <- purrr::imap(config, function(value, key) {
    replace_values(value)
  })

  # Convert the list back to a YAML formatted string
  yaml_content <- yaml::as.yaml(config_template)

  # Ensure placeholders are quoted
  yaml_content <- gsub("(<[A-Z_]+>)", '"\\1"', yaml_content)

  # Write the content to the output file
  writeLines(yaml_content, con = template_file)
}

# configuration ---------------------------------------------------------------------------------------------------

#' Configuration
#'
#' @name config
#'
#' @description
#' Functions for managing configuration settings and environment variables.
#'
#' Main Functions:
#'
#' - `cfg_get()`: Get the configuration settings from a configuration file.
#' - `cfg_list()`: List the configuration settings from a configuration file.
#'
#' Database Functions:
#'
#' - `get_db_config()`: Get the database configuration from the configuration file.
#'
#' LLM Functions:
#'
#' - `get_llms_config()`: Get the LLM configuration from the configuration file.
#'
#' - `get_openai_api_key()`: Get the OpenAI API key from the configuration file.
#' - `set_openai_api_key()`: Set the OpenAI API key as an environment variable.
#'
#' - `get_anthropic_api_key()`: Get the Anthropic API key from the configuration file.
#' - `set_anthropic_api_key()`: Set the Anthropic API key as an environment variable.
#'
#' - `get_gemini_api_key()`: Get the Gemini API key from the configuration file.
#' - `set_gemini_api_key()`: Set the Gemini API key as an environment variable.
#'
#' External API Functions:
#'
#' - `get_gmaps_api_key()`: Get the Google Maps API key from the configuration file.
#' - `set_gmaps_api_key()`: Set the Google Maps API key as an environment variable.
#'
#' @returns
#' Each function returns the respective API key or sets it as an environment variable.
#'
NULL

#' @rdname config
#' @export
#' @importFrom config get
#' @importFrom cli cli_abort
cfg_get <- function(
    ...,
    file = Sys.getenv("R_CONFIG_FILE", unset = pkg_sys_config("config.yml")),
    config = Sys.getenv("R_CONFIG_ACTIVE", unset = "default")
) {

  file <- normalizePath(file)
  if (!file.exists(file)) cli::cli_abort("Provided configuration file ({.file {file}}) does not exist.")
  cfg <- tryCatch({
    config::get(file = file, config = config)
  }, error = function(e) {
    cli::cli_abort(
      c(
        "Error reading configuration file: {.file {file}}.\n",
        "Error: {.error {e$message}}"
      )
    )
  })

  dots <- list(...) |> purrr::compact()

  if (length(dots) > 0) {
    keys <- names(cfg)
    if (!(dots[[1]] %in% keys)) {
      cli::cli_abort(
        c(
          "Configuration key: {.field {dots[[1]]}} not found in configuration file: {.file {file}}.\n",
          "Please check the configuration file for the correct key."
        )
      )
    }
    keys <- names(cfg)
    cfg <- cfg[[dots[[1]]]]
    if (length(dots) > 1) {
      cfg <- purrr::pluck(cfg, !!!dots[-1])
    }
    return(cfg)
  }

  return(cfg)

}

#' @rdname config
#' @export
cfg_list <- function(
    file = Sys.getenv("R_CONFIG_FILE", unset = pkg_sys_config("config.yml")),
    config = Sys.getenv("R_CONFIG_ACTIVE", unset = "default")
) {
  cfg <- cfg_get(file = file, config = config)
  names(unlist(cfg))
}

# database --------------------------------------------------------------------------------------------------------

#' @rdname config
#' @export
#' @importFrom config get
#' @importFrom cli cli_abort
#' @importFrom rlang arg_match
get_db_config <- function(
    key = NULL,
    file = Sys.getenv("R_CONFIG_FILE", pkg_sys("config/config.yml")),
    config = Sys.getenv("R_CONFIG_ACTIVE", "default")
) {
  file <- normalizePath(file, mustWork = FALSE)
  if (!file.exists(file)) cli::cli_abort("Provided configuration file ({.file {file}}) does not exist.")
  cfg <- tryCatch({
    config::get(value = "db", file = file, config = config)
  }, error = function(e) {
    cli::cli_abort("Failed to load database configuration from {.file {file}}: {.error {e$message}}")
  })

  keys <- names(cfg)
  if (!is.null(key)) {
    key <- rlang::arg_match(key, keys)
    return(cfg[[key]])
  }

  return(cfg)
}

# llms ------------------------------------------------------------------------------------------------------------

#' @rdname config
#' @export
#' @importFrom config get
#' @importFrom cli cli_abort
#' @importFrom rlang arg_match
get_llms_config <- function(
  key = NULL,
  file = Sys.getenv("R_CONFIG_FILE", pkg_sys("config/config.yml")),
  config = Sys.getenv("R_CONFIG_ACTIVE", "default")
) {
  file <- normalizePath(file, mustWork = FALSE)
  if (!file.exists(file)) cli::cli_abort("Provided configuration file ({.file {file}}) does not exist.")
  cfg <- tryCatch({
    config::get(value = "llms", file = file, config = config)
  }, error = function(e) {
    cli::cli_abort("Failed to load LLM configuration from {.file {file}}: {.error {e$message}}")
  })

  keys <- names(cfg)
  if (!is.null(key)) {
    key <- rlang::arg_match(key, keys)
    return(cfg[[key]])
  }

  return(cfg)
}

# tools ------------------------------------------------------------------------------------------------------------

#' @rdname config
#' @export
#' @importFrom config get
#' @importFrom cli cli_abort
get_tools_config <- function(
    key = NULL,
    file = Sys.getenv("R_CONFIG_FILE", pkg_sys("config/config.yml")),
    config = Sys.getenv("R_CONFIG_ACTIVE", "default")) {
  file <- normalizePath(file, mustWork = FALSE)
  if (!file.exists(file)) cli::cli_abort("Provided configuration file ({.file {file}}) does not exist.")
  cfg <- tryCatch(
    {
      config::get(value = "tools", file = file, config = config)
    },
    error = function(e) {
      cli::cli_abort("Failed to load tools configuration from {.file {file}}: {.error {e$message}}")
    }
  )

  keys <- names(cfg)
  if (!is.null(key)) {
    key <- rlang::arg_match(key, keys)
    return(cfg[[key]])
  }

  return(cfg)
}


# api keys --------------------------------------------------------------------------------------------------------

#' @rdname config
#' @export
#' @importFrom config get
#' @importFrom cli cli_abort
#' @importFrom rlang arg_match
get_api_key <- function(name, ...) {

  llms_cfg <- get_llms_config()
  tools_cfg <- config::get("tools")

  key_name <- paste0(name, "_api_key")

  if (key_name %in% names(llms_cfg)) {
    return(llms_cfg[[key_name]])
  }

  if (key_name %in% names(tools_cfg)) {
    return(tools_cfg[[key_name]])
  }

  cli::cli_abort(
    c(
      "API key: {.field {key_name}} not found in configuration file: {.file {file}}.\n",
      "Please check the configuration file for the correct key."
    )
  )

}



# openai ----------------------------------------------------------------------------------------------------------

#' @rdname config
#' @export
#' @importFrom config get
#' @importFrom cli cli_abort
get_openai_api_key <- function() {

  envvar_val <- Sys.getenv("OPENAI_API_KEY")
  cfg_val <- tryCatch(get_llms_config("openai_api_key"), error = function(e) "")

  if (envvar_val == "" && cfg_val == "") {
    cli::cli_abort(
      "OpenAI API key is not set. Please set it using {.code set_openai_api_key()}."
    )
  }

  if (envvar_val != "" && cfg_val != "") {
    if (envvar_val != cfg_val) {
      cli::cli_alert_warning(
        "OpenAI API key is set as both an environment variable and in the configuration file. Using the environment variable."
      )
      return(envvar_val)
    }
  }

  if (envvar_val != "") return(envvar_val)
  if (cfg_val != "") {
    Sys.setenv("OPENAI_API_KEY" = cfg_val)
    cli::cli_alert_info("OpenAI API key set as environment variable: {.envvar OPENAI_API_KEY}")
    return(cfg_val)
  }

  cli::cli_abort(
    "OpenAI API key is not set. Please set it using {.code set_openai_api_key()}."
  )

}

#' @rdname config
#' @export
#' @importFrom cli cli_alert_success
set_openai_api_key <- function(key) {
  check_openai_api_key(key)
  Sys.setenv("OPENAI_API_KEY" = key)
  cli::cli_alert_success(
    "OpenAI API Key successfully set as environment variable {.envvar OPENAI_API_KEY}."
  )
}


# anthropic -------------------------------------------------------------------------------------------------------

#' @rdname config
#' @export
#' @importFrom config get
#' @importFrom cli cli_abort
get_anthropic_api_key <- function() {

  envvar_val <- Sys.getenv("ANTHROPIC_API_KEY")
  cfg_val <- tryCatch(get_llms_config("anthropic_api_key"), error = function(e) "")

  if (envvar_val == "" && cfg_val == "") {
      cli::cli_abort(
        "Anthropic API key is not set. Please set it using {.code set_anthropic_api_key()}."
      )
    }

  if (envvar_val != "" && cfg_val != "") {
    if (envvar_val != cfg_val) {
      cli::cli_alert_warning(
        "Anthropic API key is set as both an environment variable and in the configuration file. Using the environment variable."
      )
      return(envvar_val)
    }
  }

  if (envvar_val != "") return(envvar_val)
  if (cfg_val != "") {
    Sys.setenv("ANTHROPIC_API_KEY" = cfg_val)
    cli::cli_alert_info("Anthropic API key set as environment variable: {.envvar ANTHROPIC_API_KEY}")
    return(cfg_val)
  }

  cli::cli_abort(
    "Anthropic API key is not set. Please set it using {.code set_anthropic_api_key()}."
  )

}

#' @rdname config
#' @export
#' @importFrom cli cli_alert_success
set_anthropic_api_key <- function(key) {
  check_anthropic_api_key(key)
  Sys.setenv("ANTHROPIC_API_KEY" = key)
  cli::cli_alert_success(
    "Anthropic API Key successfully set as environment variable {.envvar ANTHROPIC_API_KEY}."
  )
}


# gemini ----------------------------------------------------------------------------------------------------------

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
    "Gemini API Key successfully set as environment variable {.envvar GEMINI_API_KEY}."
  )
}


# external APIs ---------------------------------------------------------------------------------------------------

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
    "Google Maps API Key successfully set as environment variable {.envvar GMAPS_API_KEY}."
  )
}



# internal --------------------------------------------------------------------------------------------------------

#' @keywords internal
#' @noRd
#' @importFrom rappdirs user_config_dir
.default_config_path <- function() {
  normalizePath(
    rappdirs::user_config_dir(
      appname = "noclocksai",
      appauthor = "noclocks",
      expand = TRUE,
      os = "unix"
    ),
    mustWork = FALSE
  )
}

#' @keywords internal
#' @noRd
.default_config_file <- function() {
  normalizePath(file.path(.default_config_path(), "config.yml"), mustWork = FALSE)
}

# onLoad ----------------------------------------------------------------------------------------------------------

#' @noRd
#' @keywords internal
#' @importFrom rappdirs user_config_dir
#' @importFrom cli cli_alert_success cli_alert_warning
rlang::on_load(
  expr = {
    cfg_path <- .default_config_path()
    cfg_file <- .default_config_file()
    if (!dir.exists(cfg_path)) dir.create(cfg_path, recursive = TRUE)
    if (!file.exists(cfg_file)) {
      cli::cli_alert_warning("Configuration file: {.file {cfg_file}} does not exist.")
      decrypt_config(
        encrypted_file = pkg_sys_config("config.encrypted.yml"),
        decrypted_file = cfg_file,
        set_env = TRUE
      )
    } else {
      Sys.setenv("R_CONFIG_FILE" = cfg_file)
    }
    cli::cli_alert_success("Configuration file: {.file {cfg_file}} setup successfully.")
  }
)
