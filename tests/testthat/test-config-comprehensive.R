# test-config-comprehensive.R
# Comprehensive tests for configuration management

test_that("cfg_get and cfg_list work correctly", {
  # Setup test configuration
  test_config_file <- setup_test_config()

  # Test cfg_get without specific keys
  config <- cfg_get(file = test_config_file)
  expect_type(config, "list")
  expect_true("llms" %in% names(config))
  expect_true("db" %in% names(config))
  expect_true("tools" %in% names(config))

  # Test cfg_get with specific key
  llms_config <- cfg_get("llms", file = test_config_file)
  expect_type(llms_config, "list")
  expect_true("openai_api_key" %in% names(llms_config))

  # Test cfg_get with nested keys
  openai_key <- cfg_get("llms", "openai_api_key", file = test_config_file)
  expect_type(openai_key, "character")
  expect_equal(openai_key, "test-openai-key")

  # Test cfg_list
  config_keys <- cfg_list(file = test_config_file)
  expect_type(config_keys, "character")
  expect_true(length(config_keys) > 0)
  expect_true(any(grepl("llms\\.openai_api_key", config_keys)))

  # Test error handling
  expect_error(cfg_get("nonexistent", file = test_config_file))
  expect_error(cfg_get(file = "nonexistent.yml"))
})

test_that("get_db_config works correctly", {
  test_config_file <- setup_test_config()

  # Test getting full database config
  db_config <- get_db_config(file = test_config_file)
  expect_type(db_config, "list")
  expect_true(all(c("host", "port", "dbname", "user", "password") %in% names(db_config)))

  # Test getting specific key
  host <- get_db_config("host", file = test_config_file)
  expect_equal(host, "localhost")

  port <- get_db_config("port", file = test_config_file)
  expect_equal(port, 5432)

  # Test error handling
  expect_error(get_db_config("nonexistent", file = test_config_file))
  expect_error(get_db_config(file = "nonexistent.yml"))
})

test_that("get_llms_config works correctly", {
  test_config_file <- setup_test_config()

  # Test getting full LLMs config
  llms_config <- get_llms_config(file = test_config_file)
  expect_type(llms_config, "list")
  expect_true("openai_api_key" %in% names(llms_config))
  expect_true("anthropic_api_key" %in% names(llms_config))
  expect_true("gemini_api_key" %in% names(llms_config))

  # Test getting specific key
  openai_key <- get_llms_config("openai_api_key", file = test_config_file)
  expect_equal(openai_key, "test-openai-key")

  # Test error handling
  expect_error(get_llms_config("nonexistent", file = test_config_file))
  expect_error(get_llms_config(file = "nonexistent.yml"))
})

test_that("get_tools_config works correctly", {
  test_config_file <- setup_test_config()

  # Test getting full tools config
  tools_config <- get_tools_config(file = test_config_file)
  expect_type(tools_config, "list")
  expect_true("gmaps_api_key" %in% names(tools_config))
  expect_true("openweather_api_key" %in% names(tools_config))

  # Test getting specific key
  gmaps_key <- get_tools_config("gmaps_api_key", file = test_config_file)
  expect_equal(gmaps_key, "test-gmaps-key")

  # Test error handling
  expect_error(get_tools_config("nonexistent", file = test_config_file))
  expect_error(get_tools_config(file = "nonexistent.yml"))
})

test_that("API key getter functions work correctly", {
  test_config_file <- setup_test_config()

  # Test get_openai_api_key
  withr::local_envvar(
    R_CONFIG_FILE = test_config_file,
    OPENAI_API_KEY = ""  # Clear environment variable
  )

  key <- get_openai_api_key()
  expect_type(key, "character")
  expect_equal(key, "test-openai-key")

  # Test get_anthropic_api_key
  withr::local_envvar(ANTHROPIC_API_KEY = "")
  key <- get_anthropic_api_key()
  expect_type(key, "character")
  expect_equal(key, "test-anthropic-key")

  # Test get_gemini_api_key
  withr::local_envvar(GEMINI_API_KEY = "", GOOGLE_API_KEY = "")
  key <- get_gemini_api_key()
  expect_type(key, "character")
  expect_equal(key, "test-gemini-key")

  # Test get_gmaps_api_key
  withr::local_envvar(GMAPS_API_KEY = "")
  key <- get_gmaps_api_key()
  expect_type(key, "character")
  expect_equal(key, "test-gmaps-key")
})

test_that("API key setter functions work correctly", {
  # Test set_openai_api_key
  withr::local_envvar(OPENAI_API_KEY = "")
  expect_no_error(set_openai_api_key("test-key-123"))
  expect_equal(Sys.getenv("OPENAI_API_KEY"), "test-key-123")

  # Test set_anthropic_api_key
  withr::local_envvar(ANTHROPIC_API_KEY = "")
  expect_no_error(set_anthropic_api_key("test-anthropic-123"))
  expect_equal(Sys.getenv("ANTHROPIC_API_KEY"), "test-anthropic-123")

  # Test set_gemini_api_key
  withr::local_envvar(GEMINI_API_KEY = "", GOOGLE_API_KEY = "")
  expect_no_error(set_gemini_api_key("test-gemini-123"))
  expect_equal(Sys.getenv("GEMINI_API_KEY"), "test-gemini-123")
  expect_equal(Sys.getenv("GOOGLE_API_KEY"), "test-gemini-123")

  # Test set_gmaps_api_key
  skip_if_not_installed("googleway")
  withr::local_envvar(GMAPS_API_KEY = "")
  expect_no_error(set_gmaps_api_key("test-gmaps-123"))
  expect_equal(Sys.getenv("GMAPS_API_KEY"), "test-gmaps-123")
})

test_that("create_config_template works correctly", {
  # Create a test config file
  test_config <- list(
    default = list(
      llms = list(
        openai_api_key = "secret-key-123",
        model = "gpt-4"
      ),
      db = list(
        host = "production.db.com",
        password = "secret-password"
      )
    )
  )

  temp_dir <- tempdir()
  config_file <- file.path(temp_dir, "test_config.yml")
  template_file <- file.path(temp_dir, "test_template.yml")

  yaml::write_yaml(test_config, config_file)

  # Test template creation
  expect_no_error(create_config_template(config_file, template_file))
  expect_true(file.exists(template_file))

  # Read and verify template
  template_content <- yaml::read_yaml(template_file)
  expect_true(is.list(template_content))
  expect_true("default" %in% names(template_content))

  # Verify that values were replaced with placeholders
  template_yaml <- readLines(template_file)
  expect_true(any(grepl("<[A-Z_]+>", template_yaml)))
  expect_false(any(grepl("secret-key-123", template_yaml)))
  expect_false(any(grepl("secret-password", template_yaml)))

  # Clean up
  unlink(c(config_file, template_file))
})

test_that("encryption functions work correctly", {
  skip_if_no_encryption_key()

  # Create test config
  test_config <- list(
    default = list(
      llms = list(openai_api_key = "test-secret-key"),
      db = list(password = "test-password")
    )
  )

  temp_dir <- tempdir()
  config_file <- file.path(temp_dir, "test_config.yml")
  encrypted_file <- file.path(temp_dir, "test_config.encrypted.yml")

  yaml::write_yaml(test_config, config_file)

  # Test encryption
  expect_no_error(encrypt_config(config_file, encrypted_file))
  expect_true(file.exists(encrypted_file))

  # Verify file is encrypted (not readable as YAML)
  expect_error(yaml::read_yaml(encrypted_file))

  # Test decryption
  decrypted_config <- NULL
  expect_no_error({
    decrypted_config <- decrypt_config(encrypted_file)
  })

  expect_type(decrypted_config, "list")
  expect_equal(decrypted_config$default$llms$openai_api_key, "test-secret-key")

  # Clean up
  unlink(c(config_file, encrypted_file))
})

test_that("configuration error handling works correctly", {
  # Test with non-existent file
  expect_error(cfg_get(file = "nonexistent.yml"))
  expect_error(get_db_config(file = "nonexistent.yml"))
  expect_error(get_llms_config(file = "nonexistent.yml"))
  expect_error(get_tools_config(file = "nonexistent.yml"))

  # Test with invalid YAML
  temp_file <- tempfile(fileext = ".yml")
  writeLines("invalid: yaml: content: [", temp_file)

  expect_error(cfg_get(file = temp_file))

  unlink(temp_file)

  # Test with config missing required sections
  minimal_config <- list(other = list(key = "value"))
  temp_file <- tempfile(fileext = ".yml")
  yaml::write_yaml(minimal_config, temp_file)

  expect_error(get_db_config(file = temp_file))
  expect_error(get_llms_config(file = temp_file))
  expect_error(get_tools_config(file = temp_file))

  unlink(temp_file)
})

test_that("environment variable precedence works correctly", {
  test_config_file <- setup_test_config()

  # Test that environment variables take precedence over config file
  withr::local_envvar(
    R_CONFIG_FILE = test_config_file,
    OPENAI_API_KEY = "env-openai-key"
  )

  key <- get_openai_api_key()
  expect_equal(key, "env-openai-key")

  # Test with anthropic
  withr::local_envvar(
    R_CONFIG_FILE = test_config_file,
    ANTHROPIC_API_KEY = "env-anthropic-key"
  )

  key <- get_anthropic_api_key()
  expect_equal(key, "env-anthropic-key")

  # Test warning when both are set but different
  withr::local_envvar(
    R_CONFIG_FILE = test_config_file,
    OPENAI_API_KEY = "different-key"
  )

  expect_warning(get_openai_api_key(), "environment variable")
})

test_that("get_api_key generic function works correctly", {
  test_config_file <- setup_test_config()
  withr::local_envvar(R_CONFIG_FILE = test_config_file)

  # Test getting keys from llms config
  openai_key <- get_api_key("openai")
  expect_equal(openai_key, "test-openai-key")

  # Test getting keys from tools config
  gmaps_key <- get_api_key("gmaps")
  expect_equal(gmaps_key, "test-gmaps-key")

  # Test error for non-existent key
  expect_error(get_api_key("nonexistent"))
})

test_that("configuration with different environments works", {
  # Test with different R_CONFIG_ACTIVE values
  test_config_file <- setup_test_config()

  # Test default environment
  withr::local_envvar(
    R_CONFIG_FILE = test_config_file,
    R_CONFIG_ACTIVE = "default"
  )

  config <- cfg_get(file = test_config_file)
  expect_equal(config$llms$openai_api_key, "mock-openai-key-12345")

  # Test testing environment
  withr::local_envvar(
    R_CONFIG_FILE = test_config_file,
    R_CONFIG_ACTIVE = "testing"
  )

  config <- cfg_get(file = test_config_file)
  expect_equal(config$llms$openai_api_key, "test-openai-key")
})
