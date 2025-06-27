# test-shiny_assistant.R
# Tests for Shiny Assistant functionality

test_that("shiny_assistant function exists and works", {
  skip_if_not_installed("shiny")
  skip_if_not_installed("bslib")
  skip_if_not_installed("shinychat")
  skip_if_not_installed("ellmer")

  # Test that the function exists
  expect_true(exists("shiny_assistant"))
  expect_type(shiny_assistant, "closure")

  # Test dependency checking
  deps_result <- check_shiny_assistant_deps()
  expect_type(deps_result, "logical")
})

test_that("webR package functions work correctly", {
  # Test package availability checking
  test_packages <- c("shiny", "ggplot2", "nonexistent_package_xyz")
  result <- check_webr_packages(test_packages)

  expect_type(result, "logical")
  expect_equal(names(result), test_packages)
  expect_true(result["shiny"])
  expect_true(result["ggplot2"])
  expect_false(result["nonexistent_package_xyz"])

  # Test package list retrieval
  packages <- get_webr_package_list()
  expect_type(packages, "character")
  expect_gt(length(packages), 10)
  expect_true("shiny" %in% packages)

  # Test package name extraction
  text <- "I want to use ggplot2 package and DT for tables"
  extracted <- extract_package_names(text)
  expect_true("ggplot2" %in% extracted)
  expect_true("DT" %in% extracted)

  # Test package alternatives
  alternatives <- suggest_package_alternatives("data.table")
  expect_true("dplyr" %in% alternatives || "tidyr" %in% alternatives)
})

test_that("code extraction functions work", {
  # Test SHINYAPP tag extraction
  markdown <- "<SHINYAPP>\n```r\nlibrary(shiny)\nui <- fluidPage('Hello')\nserver <- function(input, output) {}\nshinyApp(ui, server)\n```\n</SHINYAPP>"
  files <- shinyapp_tag_contents_to_filecontents(markdown)

  expect_type(files, "list")
  expect_equal(length(files), 1)
  expect_equal(files[[1]]$name, "app.R")
  expect_true(grepl("library\\(shiny\\)", files[[1]]$content))

  # Test regular code extraction
  text <- "Some text\n```r\nprint('hello')\n```\nMore text"
  code <- extract_code(text, "r")
  expect_type(code, "character")
  expect_true(grepl("print\\('hello'\\)", code))

  # Test empty case
  empty_markdown <- "No code here"
  empty_result <- shinyapp_tag_contents_to_filecontents(empty_markdown)
  expect_equal(length(empty_result), 0)
})

test_that("system prompt creation works", {
  prompt <- create_enhanced_system_prompt()

  expect_type(prompt, "character")
  expect_gt(nchar(prompt), 100)
  expect_true(grepl("Shiny", prompt, ignore.case = TRUE))
  expect_true(grepl("webR", prompt))
  expect_true(grepl("SHINYAPP", prompt))
})

test_that("package formatting works", {
  test_packages <- c("shiny", "nonexistent_package")
  formatted <- format_package_availability(test_packages)

  expect_type(formatted, "character")
  expect_true(grepl("Available.*shiny", formatted))
  expect_true(grepl("Not available.*nonexistent_package", formatted))
})
