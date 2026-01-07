# test-checks.R
# Comprehensive tests for input validation functions

test_that("basic type checking functions work correctly", {
  # Test check_type
  expect_no_error(check_type("hello", "character"))
  expect_no_error(check_type(123, "numeric"))
  expect_no_error(check_type(TRUE, "logical"))
  expect_no_error(check_type(list(a = 1), "list"))

  expect_error(check_type("hello", "numeric"))
  expect_error(check_type(123, "character"))
  expect_error(check_type(NULL, "character"))

  # Test check_inherits
  df <- data.frame(x = 1:3)
  expect_no_error(check_inherits(df, "data.frame"))
  expect_error(check_inherits(df, "matrix"))
  expect_error(check_inherits(NULL, "data.frame"))

  # Test check_inherits_all
  expect_no_error(check_inherits_all(df, c("data.frame", "data.frame")))
  expect_error(check_inherits_all(df, c("data.frame", "matrix")))

  # Test check_inherits_one_of
  expect_no_error(check_inherits_one_of(df, c("data.frame", "matrix")))
  expect_error(check_inherits_one_of(df, c("matrix", "array")))
})

test_that("data structure checking functions work correctly", {
  # Test check_list
  test_list <- list(a = 1, b = 2, c = 3)
  expect_no_error(check_list(test_list))
  expect_error(check_list("not a list"))
  expect_error(check_list(NULL))

  # Test check_list_names
  named_list <- list(a = 1, b = 2)
  unnamed_list <- list(1, 2)
  expect_no_error(check_list_names(named_list, c("a", "b")))
  expect_error(check_list_names(named_list, c("a", "c")))
  expect_error(check_list_names(unnamed_list, c("a", "b")))

  # Test check_data_frame
  df <- data.frame(x = 1:3, y = letters[1:3])
  expect_no_error(check_data_frame(df))
  expect_error(check_data_frame(list(x = 1:3)))
  expect_error(check_data_frame(matrix(1:6, nrow = 2)))

  # Test check_tibble
  skip_if_not_installed("tibble")
  tbl <- tibble::tibble(x = 1:3, y = letters[1:3])
  expect_no_error(check_tibble(tbl))
  expect_error(check_tibble(df))  # data.frame is not tibble
})

test_that("column checking functions work correctly", {
  df <- data.frame(
    id = 1:3,
    name = c("A", "B", "C"),
    value = c(1.1, 2.2, 3.3),
    flag = c(TRUE, FALSE, TRUE)
  )

  # Test check_col_names
  expect_no_error(check_col_names(df, c("id", "name")))
  expect_no_error(check_col_names(df, c("id", "name", "value", "flag")))
  expect_error(check_col_names(df, c("id", "missing")))
  expect_error(check_col_names(df, c("id", "name", "value", "flag", "extra")))

  # Test check_col_types
  expected_types <- c(id = "integer", name = "character", value = "numeric", flag = "logical")
  expect_no_error(check_col_types(df, expected_types))

  wrong_types <- c(id = "character", name = "character", value = "numeric", flag = "logical")
  expect_error(check_col_types(df, wrong_types))

  # Test check_row
  expect_no_error(check_row(df, 1))
  expect_no_error(check_row(df, 3))
  expect_error(check_row(df, 0))
  expect_error(check_row(df, 4))
  expect_error(check_row(df, -1))
})

test_that("file and path checking functions work correctly", {
  # Create temporary test files
  temp_dir <- tempdir()
  temp_file <- file.path(temp_dir, "test_file.txt")
  writeLines("test content", temp_file)

  # Test check_file
  expect_no_error(check_file(temp_file))
  expect_error(check_file(file.path(temp_dir, "nonexistent.txt")))
  expect_error(check_file(temp_dir))  # Directory, not file

  # Test check_dir
  expect_no_error(check_dir(temp_dir))
  expect_error(check_dir(temp_file))  # File, not directory
  expect_error(check_dir(file.path(temp_dir, "nonexistent")))

  # Test check_path
  expect_no_error(check_path(temp_file))
  expect_no_error(check_path(temp_dir))
  expect_error(check_path(file.path(temp_dir, "nonexistent")))

  # Clean up
  unlink(temp_file)
})

test_that("string and naming checking functions work correctly", {
  # Test check_names
  test_obj <- c(a = 1, b = 2, c = 3)
  expect_no_error(check_names(test_obj, c("a", "b", "c")))
  expect_error(check_names(test_obj, c("a", "b", "d")))

  unnamed_obj <- c(1, 2, 3)
  expect_error(check_names(unnamed_obj, c("a", "b", "c")))

  # Test check_named
  expect_no_error(check_named(test_obj))
  expect_error(check_named(unnamed_obj))
  expect_error(check_named(c(a = 1, 2)))  # Partially named

  # Test check_repo
  expect_no_error(check_repo("owner/repo"))
  expect_no_error(check_repo("github-user/my-repo-123"))
  expect_error(check_repo("invalid"))
  expect_error(check_repo("owner/"))
  expect_error(check_repo("/repo"))
  expect_error(check_repo("owner/repo/extra"))

  # Test check_uuid
  valid_uuid <- "550e8400-e29b-41d4-a716-446655440000"
  expect_no_error(check_uuid(valid_uuid))
  expect_error(check_uuid("not-a-uuid"))
  expect_error(check_uuid("550e8400-e29b-41d4-a716"))  # Too short
  expect_error(check_uuid("550e8400-e29b-41d4-a716-446655440000-extra"))  # Too long
})

test_that("API key checking functions work correctly", {
  # Test check_api_key
  expect_no_error(check_api_key("sk-1234567890abcdef"))
  expect_no_error(check_api_key("abc123"))  # Generic key format
  expect_error(check_api_key(""))
  expect_error(check_api_key(NULL))
  expect_error(check_api_key(123))

  # Test check_openai_api_key
  expect_no_error(check_openai_api_key("sk-1234567890abcdef1234567890abcdef"))
  expect_error(check_openai_api_key("invalid-key"))
  expect_error(check_openai_api_key(""))
  expect_error(check_openai_api_key(NULL))

  # Test check_anthropic_api_key
  expect_no_error(check_anthropic_api_key("sk-ant-1234567890abcdef"))
  expect_error(check_anthropic_api_key("sk-1234567890abcdef"))  # Wrong prefix
  expect_error(check_anthropic_api_key(""))
  expect_error(check_anthropic_api_key(NULL))
}

test_that("database checking functions work correctly", {
  # Test check_db_config
  valid_config <- list(
    host = "localhost",
    port = 5432,
    dbname = "test_db",
    user = "test_user",
    password = "test_password"
  )
  expect_no_error(check_db_config(valid_config))

  # Missing required fields
  expect_error(check_db_config(list(host = "localhost")))
  expect_error(check_db_config(list()))
  expect_error(check_db_config(NULL))

  # Wrong types
  invalid_config <- valid_config
  invalid_config$port <- "5432"  # Should be numeric
  expect_error(check_db_config(invalid_config))

  # Test check_db_conn (will need mock connection)
  mock_conn <- create_mock_db_connection()
  expect_no_error(check_db_conn(mock_conn))
  expect_error(check_db_conn(NULL))
  expect_error(check_db_conn("not a connection"))
})

test_that("R6 and S7 checking functions work correctly", {
  skip_if_not_installed("R6")

  # Test check_r6_class
  TestClass <- R6::R6Class("TestClass",
    public = list(
      initialize = function() { self$value <- 1 }
    )
  )
  expect_no_error(check_r6_class(TestClass))
  expect_error(check_r6_class("not a class"))
  expect_error(check_r6_class(NULL))

  # Test check_r6_object
  test_obj <- TestClass$new()
  expect_no_error(check_r6_object(test_obj))
  expect_error(check_r6_object(TestClass))  # Class, not object
  expect_error(check_r6_object("not an object"))

  # Test check_r6 (accepts both class and object)
  expect_no_error(check_r6(TestClass))
  expect_no_error(check_r6(test_obj))
  expect_error(check_r6("not R6"))
})

test_that("date and time checking functions work correctly", {
  # Test check_date
  expect_no_error(check_date(Sys.Date()))
  expect_no_error(check_date(as.Date("2024-01-01")))
  expect_error(check_date("2024-01-01"))  # Character, not Date
  expect_error(check_date(Sys.time()))  # POSIXct, not Date
  expect_error(check_date(NULL))

  # Test check_time
  expect_no_error(check_time(Sys.time()))
  expect_no_error(check_time(as.POSIXct("2024-01-01 12:00:00")))
  expect_error(check_time("2024-01-01 12:00:00"))  # Character, not POSIXct
  expect_error(check_time(Sys.Date()))  # Date, not POSIXct
  expect_error(check_time(NULL))
})

test_that("Shiny-related checking functions work correctly", {
  skip_if_not_installed("shiny")

  # These tests may need to be run in a Shiny context
  # For now, test the basic function existence and error cases

  # Test check_shiny (checks if in Shiny app)
  expect_error(check_shiny())  # Not in Shiny context

  # Test check_reactive
  expect_error(check_reactive("not reactive"))
  expect_error(check_reactive(NULL))

  # Test check_shiny_tag
  expect_error(check_shiny_tag("not a tag"))
  expect_error(check_shiny_tag(NULL))

  # Test check_html_widget
  expect_error(check_html_widget("not a widget"))
  expect_error(check_html_widget(NULL))
})

test_that("dots checking functions work correctly", {
  test_func <- function(...) {
    dots <- list(...)
    check_dots_named(dots)
  }

  expect_no_error(test_func(a = 1, b = 2))
  expect_error(test_func(1, 2))  # Unnamed arguments
  expect_error(test_func(a = 1, 2))  # Partially named
})

test_that("encryption checking functions work correctly", {
  # Test check_encryption_key
  expect_no_error(check_encryption_key("valid_key_name"))
  expect_error(check_encryption_key(""))
  expect_error(check_encryption_key(NULL))
  expect_error(check_encryption_key(123))
})

test_that("config file checking functions work correctly", {
  # Create temporary config file
  temp_config <- tempfile(fileext = ".yml")
  yaml::write_yaml(list(default = list(key = "value")), temp_config)

  expect_no_error(check_config_file(temp_config))
  expect_error(check_config_file(tempfile()))  # Non-existent file
  expect_error(check_config_file(NULL))

  unlink(temp_config)
})

test_that("checking functions provide meaningful error messages", {
  # Test that error messages contain useful information
  expect_error(check_type("hello", "numeric"), "must be of type")
  expect_error(check_inherits(1, "character"), "must inherit from")
  expect_error(check_file("nonexistent.txt"), "does not exist")
  expect_error(check_api_key(""), "must be a non-empty")
  expect_error(check_repo("invalid"), "must be.*format")
})
