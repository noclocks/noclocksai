# test-config.R
# Tests for configuration management

test_that("configuration template creation works", {
  # Create a temporary config file
  temp_config <- tempfile(fileext = ".yml")
  temp_template <- tempfile(fileext = ".template.yml")

  # Simple test config
  test_config <- list(
    default = list(
      test_key = "test_value",
      nested = list(
        api_key = "secret123"
      )
    )
  )

  yaml::write_yaml(test_config, temp_config)

  expect_no_error({
    create_config_template(temp_config, temp_template)
  })

  expect_true(file.exists(temp_template))

  # Clean up
  unlink(c(temp_config, temp_template))
})

test_that("configuration loading works with testing config", {
  # Force testing configuration by setting environment
  withr::local_envvar(R_CONFIG_ACTIVE = "testing")

  # Test that we can load testing configuration
  test_config <- config::get(config = "testing")

  expect_type(test_config, "list")
  expect_true("llms" %in% names(test_config))
  expect_true("db" %in% names(test_config))
  expect_true("tools" %in% names(test_config))

  # Check that mock values are present
  expect_equal(test_config$llms$openai_api_key, "mock-openai-key")
  expect_equal(test_config$db$host, "localhost")
})

test_that("configuration encryption functions exist", {
  expect_true(exists("encrypt_config"))
  expect_true(exists("decrypt_config"))
  expect_type(encrypt_config, "closure")
  expect_type(decrypt_config, "closure")
})

test_that("configuration getter functions work", {
  # Use testing configuration for these tests
  withr::local_envvar(R_CONFIG_ACTIVE = "testing")

  expect_no_error({
    llm_config <- get_llms_config()
    db_config <- get_db_config()
    tools_config <- get_tools_config()
  })

  expect_type(llm_config, "list")
  expect_type(db_config, "list")
  expect_type(tools_config, "list")

  # Test specific API key functions with mock values
  # These should read from the testing config
  expect_equal(llm_config$openai_api_key, "mock-openai-key")
  expect_equal(llm_config$gemini_api_key, "mock-gemini-key")
})

test_that("skip helper functions work correctly", {
  # Test skip functions exist
  expect_true(exists("skip_if_no_config"))
  expect_true(exists("skip_if_no_api"))
  expect_true(exists("skip_if_no_db"))

  # These should not throw errors when called
  expect_no_error(skip_if_no_config("test"))
  expect_no_error(skip_if_no_api("test"))
  expect_no_error(skip_if_no_db("test"))
})

test_that("encrypted config file exists", {
  encrypted_file <- pkg_sys_config("config.encrypted.yml")
  expect_true(file.exists(encrypted_file))
})
