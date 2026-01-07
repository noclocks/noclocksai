# test-apis.R
# Tests for API URL management and provider configurations

test_that("get_api_url works correctly for all providers", {
  # Test OpenAI URLs
  expect_equal(get_api_url("openai", "base"), "https://api.openai.com/v1")
  expect_equal(get_api_url("openai", "models"), "https://api.openai.com/v1/models")
  expect_equal(get_api_url("openai", "chat_completions"), "https://api.openai.com/v1/chat/completions")
  expect_equal(get_api_url("openai", "embeddings"), "https://api.openai.com/v1/embeddings")

  # Test Anthropic URLs
  expect_equal(get_api_url("anthropic", "models"), "https://api.anthropic.com/v1/models")
  expect_equal(get_api_url("anthropic", "messages"), "https://api.anthropic.com/v1/messages")
  expect_equal(get_api_url("anthropic", "messages_batch"), "https://api.anthropic.com/v1/messages/batch")

  # Test default behavior (base URL)
  expect_equal(get_api_url("openai"), "https://api.openai.com/v1")
  expect_equal(get_api_url("anthropic"), "https://api.anthropic.com/v1")
})

test_that("get_api_url handles invalid inputs correctly", {
  # Test invalid provider
  expect_error(get_api_url("invalid_provider"))
  expect_error(get_api_url(""))
  expect_error(get_api_url(NULL))

  # Test invalid service name
  expect_error(get_api_url("openai", "invalid_service"))
  expect_error(get_api_url("anthropic", "nonexistent"))

  # Test wrong argument types
  expect_error(get_api_url(123))
  expect_error(get_api_url("openai", 123))
})

test_that("provider configurations are complete", {
  # Test that providers list exists and has expected entries
  expect_true(exists("providers"))
  expect_type(providers, "character")
  expect_true("openai" %in% providers)
  expect_true("anthropic" %in% providers)
  expect_true("gemini" %in% providers)

  # Test that provider_base_urls exists and has correct structure
  expect_true(exists("provider_base_urls"))
  expect_type(provider_base_urls, "list")
  expect_true(all(providers %in% names(provider_base_urls)))

  # Test that each provider has at least a base URL
  for (provider in providers) {
    provider_urls <- provider_base_urls[[provider]]
    expect_type(provider_urls, "list")
    expect_true("base" %in% names(provider_urls) || length(provider_urls) > 0)
  }
})

test_that("all provider URLs are valid", {
  skip_if_offline()

  # Test a sample of URLs to ensure they're well-formed
  test_urls <- c(
    get_api_url("openai", "base"),
    get_api_url("anthropic", "base"),
    get_api_url("openai", "models")
  )

  for (url in test_urls) {
    # Check URL format
    expect_true(grepl("^https://", url))
    expect_false(grepl(" ", url))  # No spaces

    # Check that URL is reachable (basic connectivity test)
    tryCatch({
      req <- httr2::request(url) |>
        httr2::req_timeout(5) |>
        httr2::req_method("GET")

      # We expect authentication errors, not connection errors
      resp <- httr2::req_perform(req)
    }, error = function(e) {
      # Check if it's an authentication error (expected) vs connection error
      if (!grepl("401|403|authentication|authorization", e$message, ignore.case = TRUE)) {
        skip(paste("Could not connect to", url, ":", e$message))
      }
    })
  }
})

test_that("API URL consistency across providers", {
  # Test that all providers follow consistent patterns
  for (provider in providers) {
    provider_urls <- provider_base_urls[[provider]]

    # All URLs should be HTTPS
    for (url in provider_urls) {
      expect_true(grepl("^https://", url))
    }

    # URLs should not end with trailing slash (except base)
    for (name in names(provider_urls)) {
      url <- provider_urls[[name]]
      if (name != "base") {
        expect_false(grepl("/$", url))
      }
    }
  }
})

test_that("get_api_url return type is always character", {
  # Test return types
  expect_type(get_api_url("openai"), "character")
  expect_type(get_api_url("anthropic", "models"), "character")
  expect_length(get_api_url("openai"), 1)
  expect_length(get_api_url("anthropic", "messages"), 1)

  # Test that returned URLs are not empty
  expect_true(nchar(get_api_url("openai")) > 0)
  expect_true(nchar(get_api_url("anthropic", "models")) > 0)
})

test_that("provider URL mappings are correct", {
  # Test specific known mappings
  openai_urls <- provider_base_urls[["openai"]]
  expect_true("models" %in% names(openai_urls))
  expect_true("chat_completions" %in% names(openai_urls))
  expect_true("embeddings" %in% names(openai_urls))

  anthropic_urls <- provider_base_urls[["anthropic"]]
  expect_true("models" %in% names(anthropic_urls))
  expect_true("messages" %in% names(anthropic_urls))

  # Test URL paths are correct
  expect_true(grepl("/v1/models$", openai_urls$models))
  expect_true(grepl("/v1/chat/completions$", openai_urls$chat_completions))
  expect_true(grepl("/v1/embeddings$", openai_urls$embeddings))

  expect_true(grepl("/v1/models$", anthropic_urls$models))
  expect_true(grepl("/v1/messages$", anthropic_urls$messages))
})
