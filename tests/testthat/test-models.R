# test-models.R
# Tests for LLM model management functions

test_that("get_openai_models works correctly", {
  skip_if_no_api("openai")
  skip_if_offline()

  # Mock the HTTP response for testing
  withr::local_options(noclocksai.mock_api = TRUE)

  # Test basic functionality
  expect_no_error({
    models <- get_openai_models()
  })

  if (exists("models")) {
    expect_type(models, "character")
    expect_true(length(models) > 0)

    # Check for expected model formats
    expect_true(any(grepl("gpt", models, ignore.case = TRUE)))
  }
})

test_that("get_anthropic_models works correctly", {
  skip_if_no_api("anthropic")
  skip_if_offline()

  # Mock the HTTP response for testing
  withr::local_options(noclocksai.mock_api = TRUE)

  # Test basic functionality
  expect_no_error({
    models <- get_anthropic_models()
  })

  if (exists("models")) {
    expect_type(models, "character")
    expect_true(length(models) > 0)

    # Check for expected model formats
    expect_true(any(grepl("claude", models, ignore.case = TRUE)))
  }
})

test_that("model functions handle API errors gracefully", {
  # Test with invalid API key
  withr::local_envvar(OPENAI_API_KEY = "invalid-key")

  expect_error(get_openai_models(), class = c("httr2_http_401", "httr2_http"))

  # Test with invalid Anthropic API key
  withr::local_envvar(ANTHROPIC_API_KEY = "invalid-key")

  expect_error(get_anthropic_models(), class = c("httr2_http_401", "httr2_http"))
})

test_that("model functions return expected data structure", {
  skip_if_no_api("openai")

  # Test with mocked responses
  mock_response <- mock_openai_responses$models

  # Simulate the data processing that happens in get_openai_models
  resp_data <- mock_response$data |>
    dplyr::bind_rows() |>
    dplyr::arrange(dplyr::desc(.data$created))

  model_ids <- purrr::pluck(resp_data, "id")

  expect_type(model_ids, "character")
  expect_true(length(model_ids) > 0)
  expect_true(all(nchar(model_ids) > 0))
})

test_that("anthropic model processing works correctly", {
  skip_if_no_api("anthropic")

  # Test with mocked responses
  mock_response <- mock_anthropic_responses$models

  # Simulate the data processing
  resp_data <- mock_response$data |>
    dplyr::bind_rows() |>
    dplyr::mutate(created_at = lubridate::as_date(.data$created_at)) |>
    dplyr::arrange(dplyr::desc(.data$created_at))

  model_mapping <- resp_data |>
    dplyr::select("id", "display_name") |>
    tibble::deframe()

  expect_type(model_mapping, "character")
  expect_true(length(model_mapping) > 0)
  expect_true(all(names(model_mapping) != ""))
  expect_true(all(nchar(model_mapping) > 0))
})

test_that("model functions handle network timeouts", {
  skip_if_offline()

  # Test with very short timeout (should fail)
  withr::local_options(noclocksai.http_timeout = 0.1)

  expect_error(get_openai_models(), class = "httr2_http")
  expect_error(get_anthropic_models(), class = "httr2_http")
})

test_that("model functions use correct API endpoints", {
  # Test that functions use the correct URLs
  openai_url <- get_api_url("openai", "models")
  anthropic_url <- get_api_url("anthropic", "models")

  expect_equal(openai_url, "https://api.openai.com/v1/models")
  expect_equal(anthropic_url, "https://api.anthropic.com/v1/models")
})

test_that("model functions handle empty responses", {
  # Test with mock empty response
  mock_empty_openai <- list(
    object = "list",
    data = list()
  )

  # Simulate processing empty response
  resp_data <- mock_empty_openai$data |>
    dplyr::bind_rows()

  expect_equal(nrow(resp_data), 0)

  model_ids <- purrr::pluck(resp_data, "id")
  expect_equal(length(model_ids), 0)
})

test_that("model data is properly sorted", {
  # Test that models are sorted by creation date (newest first)
  mock_models <- list(
    data = list(
      list(id = "model-1", created = 1000),
      list(id = "model-2", created = 2000),
      list(id = "model-3", created = 1500)
    )
  )

  # Simulate sorting
  resp_data <- mock_models$data |>
    dplyr::bind_rows() |>
    dplyr::arrange(dplyr::desc(.data$created))

  expect_equal(resp_data$id, c("model-2", "model-3", "model-1"))
  expect_equal(resp_data$created, c(2000, 1500, 1000))
})

test_that("anthropic model display names are preserved", {
  # Test that Anthropic models preserve display names
  mock_anthropic <- list(
    data = list(
      list(
        id = "claude-3-5-sonnet-20241022",
        display_name = "Claude 3.5 Sonnet",
        created_at = "2024-10-22"
      ),
      list(
        id = "claude-3-haiku-20240307",
        display_name = "Claude 3 Haiku",
        created_at = "2024-03-07"
      )
    )
  )

  # Simulate processing
  resp_data <- mock_anthropic$data |>
    dplyr::bind_rows() |>
    dplyr::mutate(created_at = lubridate::as_date(.data$created_at)) |>
    dplyr::arrange(dplyr::desc(.data$created_at))

  model_mapping <- resp_data |>
    dplyr::select("id", "display_name") |>
    tibble::deframe()

  expect_equal(names(model_mapping), c("claude-3-5-sonnet-20241022", "claude-3-haiku-20240307"))
  expect_equal(unname(model_mapping), c("Claude 3.5 Sonnet", "Claude 3 Haiku"))
})

test_that("model functions handle malformed responses", {
  # Test with malformed JSON structure
  mock_malformed <- list(
    object = "list"
    # Missing 'data' field
  )

  expect_error({
    # This should fail when trying to access 'data'
    mock_malformed$data |>
      dplyr::bind_rows()
  })
})

test_that("model functions respect API rate limits", {
  skip_if_no_api("openai")
  skip_if_offline()

  # Test multiple rapid calls (should handle rate limiting gracefully)
  results <- list()

  for (i in 1:3) {
    result <- tryCatch({
      get_openai_models()
    }, error = function(e) {
      if (grepl("429|rate limit", e$message, ignore.case = TRUE)) {
        "rate_limited"
      } else {
        stop(e)
      }
    })

    results[[i]] <- result
    Sys.sleep(0.1)  # Small delay between requests
  }

  # Should either succeed or handle rate limiting gracefully
  expect_true(all(sapply(results, function(x) is.character(x) || x == "rate_limited")))
})
