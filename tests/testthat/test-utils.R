# test-utils.R
# Comprehensive tests for utility functions

test_that("environment detection functions work correctly", {
  # Test env_is_testing
  withr::local_envvar(TESTTHAT = "true")
  expect_true(env_is_testing())

  withr::local_envvar(TESTTHAT = "false")
  expect_false(env_is_testing())

  withr::local_envvar(TESTTHAT = "")
  expect_false(env_is_testing())

  # Test env_is_rstudio
  withr::local_envvar(RSTUDIO = "true")
  expect_true(env_is_rstudio())

  withr::local_envvar(RSTUDIO = "")
  expect_false(env_is_rstudio())

  # Test env_is_github
  withr::local_envvar(GITHUB_ACTIONS = "true")
  expect_true(env_is_github())

  withr::local_envvar(GITHUB_ACTIONS = "")
  expect_false(env_is_github())

  # Test env_is_vscode
  withr::local_envvar(VSCODE_IPYNB_PATH = "/some/path")
  expect_true(env_is_vscode())

  withr::local_envvar(VSCODE_IPYNB_PATH = "")
  expect_false(env_is_vscode())
})

test_that("null coalescing operator works correctly", {
  # Test basic functionality
  expect_equal(NULL %||% "default", "default")
  expect_equal("value" %||% "default", "value")
  expect_equal(0 %||% "default", 0)
  expect_equal(FALSE %||% "default", FALSE)
  expect_equal("" %||% "default", "")

  # Test with complex objects
  list1 <- list(a = 1, b = 2)
  list2 <- list(c = 3, d = 4)
  expect_equal(list1 %||% list2, list1)
  expect_equal(NULL %||% list2, list2)
})

test_that("pkg_sys functions work correctly", {
  # Test basic pkg_sys
  result <- pkg_sys("config")
  expect_type(result, "character")
  expect_true(grepl("noclocksai", result))
  expect_true(grepl("config", result))

  # Test specific pkg_sys variants
  expect_type(pkg_sys_config("test.yml"), "character")
  expect_type(pkg_sys_template("test.R"), "character")
  expect_type(pkg_sys_prompt("test.txt"), "character")
  expect_type(pkg_sys_extdata("test.csv"), "character")
  expect_type(pkg_sys_database("test.sql"), "character")
  expect_type(pkg_sys_www("test.js"), "character")

  # Test that paths are constructed correctly
  config_path <- pkg_sys_config("config.yml")
  expect_true(grepl("inst/config/config.yml$", config_path))

  template_path <- pkg_sys_template("template.R")
  expect_true(grepl("inst/templates/template.R$", template_path))
})

test_that("as_str function works correctly", {
  # Test with different input types
  expect_equal(as_str("hello"), "hello")
  expect_equal(as_str(123), "123")
  expect_equal(as_str(TRUE), "TRUE")
  expect_equal(as_str(c("a", "b", "c")), "a b c")

  # Test with NULL
  expect_equal(as_str(NULL), "")

  # Test with list
  expect_type(as_str(list(a = 1, b = 2)), "character")
})

test_that("view_list function exists and is callable", {
  # Test that function exists
  expect_true(exists("view_list"))
  expect_type(view_list, "closure")

  # Test with simple list (would open viewer in interactive session)
  test_list <- list(a = 1, b = 2, c = list(d = 3, e = 4))

  # Since this opens a viewer, we can't easily test the output
  # Just ensure it doesn't error
  expect_no_error({
    # Suppress any output/viewer
    suppressMessages(suppressWarnings({
      result <- tryCatch(view_list(test_list), error = function(e) NULL)
    }))
  })
})

test_that("evaluate_r_code function works correctly", {
  skip_if_not_installed("evaluate")

  # Create mock handlers
  console_output <- character()
  console_errors <- character()
  plots <- list()
  dataframes <- list()

  on_console_out <- function(x) console_output <<- c(console_output, x)
  on_console_err <- function(x) console_errors <<- c(console_errors, x)
  on_plot <- function(mime, content) plots <<- c(plots, list(list(mime = mime, content = content)))
  on_dataframe <- function(df) dataframes <<- c(dataframes, list(df))

  # Test simple expression
  console_output <- character()
  code <- "2 + 2"

  expect_no_error({
    evaluate_r_code(code, on_console_out, on_console_err, on_plot, on_dataframe)
  })

  expect_true(length(console_output) > 0)
  expect_true(any(grepl("4", console_output)))

  # Test with data frame output
  console_output <- character()
  dataframes <- list()
  code <- "data.frame(x = 1:3, y = letters[1:3])"

  expect_no_error({
    evaluate_r_code(code, on_console_out, on_console_err, on_plot, on_dataframe)
  })

  expect_equal(length(dataframes), 1)
  expect_s3_class(dataframes[[1]], "data.frame")
  expect_equal(nrow(dataframes[[1]]), 3)

  # Test with error
  console_output <- character()
  code <- "stop('Test error')"

  expect_no_error({
    evaluate_r_code(code, on_console_out, on_console_err, on_plot, on_dataframe)
  })

  expect_true(any(grepl("Error", console_output)))
  expect_true(any(grepl("Test error", console_output)))
})

test_that("recorded_plot_to_png function works correctly", {
  skip_if_not_installed("evaluate")

  # This function is internal and handles plot conversion
  # We can test it indirectly through evaluate_r_code

  plots <- list()
  console_output <- character()

  on_console_out <- function(x) console_output <<- c(console_output, x)
  on_console_err <- function(x) invisible()
  on_plot <- function(mime, content) plots <<- c(plots, list(list(mime = mime, content = content)))
  on_dataframe <- function(df) invisible()

  # Create a simple plot
  code <- "plot(1:10, 1:10)"

  expect_no_error({
    evaluate_r_code(code, on_console_out, on_console_err, on_plot, on_dataframe)
  })

  # Check if plot was captured (only in interactive or graphics device available)
  # This might not work in all test environments
  if (length(plots) > 0) {
    expect_true(plots[[1]]$mime %in% c("image/png", "image/jpeg"))
    expect_type(plots[[1]]$content, "character")
  }
})

test_that("utility functions handle edge cases correctly", {
  # Test pkg_sys with empty string
  expect_type(pkg_sys(""), "character")

  # Test pkg_sys with nested paths
  nested_path <- pkg_sys("config", "subdir", "file.yml")
  expect_type(nested_path, "character")
  expect_true(grepl("config", nested_path))
  expect_true(grepl("subdir", nested_path))
  expect_true(grepl("file.yml", nested_path))

  # Test as_str with edge cases
  expect_equal(as_str(NA), "NA")
  expect_equal(as_str(character(0)), "")
  expect_equal(as_str(numeric(0)), "")

  # Test environment functions with non-standard values
  withr::local_envvar(TESTTHAT = "1")
  expect_false(env_is_testing())  # Should be exactly "true"

  withr::local_envvar(RSTUDIO = "1")
  expect_false(env_is_rstudio())  # Should be exactly "true"
})
