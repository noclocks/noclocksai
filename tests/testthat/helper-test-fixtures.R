#  ------------------------------------------------------------------------
#
# Title : Mock Data and Fixtures for Testing
#    By : GitHub Copilot
#  Date : 2025-06-27
#
#  ------------------------------------------------------------------------

# Mock API Response Data =================================================

#' Mock OpenAI API responses
mock_openai_responses <- list(
  models = list(
    object = "list",
    data = list(
      list(
        id = "gpt-4o",
        object = "model",
        created = 1677610602,
        owned_by = "openai"
      ),
      list(
        id = "gpt-3.5-turbo",
        object = "model",
        created = 1677610602,
        owned_by = "openai"
      )
    )
  ),
  chat_completion = list(
    id = "chatcmpl-123",
    object = "chat.completion",
    created = 1677652288,
    model = "gpt-4o",
    choices = list(
      list(
        index = 0,
        message = list(
          role = "assistant",
          content = "Hello! How can I help you today?"
        ),
        finish_reason = "stop"
      )
    ),
    usage = list(
      prompt_tokens = 9,
      completion_tokens = 12,
      total_tokens = 21
    )
  ),
  embeddings = list(
    object = "list",
    data = list(
      list(
        object = "embedding",
        embedding = rep(0.1, 1536),
        index = 0
      )
    ),
    model = "text-embedding-ada-002",
    usage = list(
      prompt_tokens = 8,
      total_tokens = 8
    )
  )
)

#' Mock Anthropic API responses
mock_anthropic_responses <- list(
  models = list(
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
  ),
  message = list(
    id = "msg_01EhbRqRpnVdGnkgzSzL5Kzj",
    type = "message",
    role = "assistant",
    content = list(
      list(
        type = "text",
        text = "Hello! I'm Claude, an AI assistant created by Anthropic."
      )
    ),
    model = "claude-3-5-sonnet-20241022",
    stop_reason = "end_turn",
    stop_sequence = NULL,
    usage = list(
      input_tokens = 10,
      output_tokens = 15
    )
  )
)

#' Mock Google Maps API responses
mock_gmaps_responses <- list(
  geocode = list(
    results = list(
      list(
        formatted_address = "1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA",
        place_id = "ChIJ2eUgeAK6j4ARbn5u_wAGqWA",
        types = list("street_address"),
        geometry = list(
          location = list(
            lat = 37.4223664,
            lng = -122.084406
          ),
          location_type = "ROOFTOP"
        )
      )
    ),
    status = "OK"
  ),
  places_search = list(
    results = list(
      list(
        name = "Google Headquarters",
        place_id = "ChIJ2eUgeAK6j4ARbn5u_wAGqWA",
        formatted_address = "1600 Amphitheatre Pkwy, Mountain View, CA, USA",
        geometry = list(
          location = list(
            lat = 37.4223664,
            lng = -122.084406
          )
        ),
        rating = 4.4,
        types = list("point_of_interest", "establishment")
      )
    ),
    status = "OK"
  )
)

#' Mock OpenWeather API responses
mock_openweather_responses <- list(
  geocode = list(
    list(
      name = "London",
      local_names = list(en = "London"),
      lat = 51.5073219,
      lon = -0.1276474,
      country = "GB",
      state = "England"
    )
  ),
  weather = list(
    coord = list(lon = -0.1276, lat = 51.5073),
    weather = list(
      list(
        id = 800,
        main = "Clear",
        description = "clear sky",
        icon = "01d"
      )
    ),
    base = "stations",
    main = list(
      temp = 20.5,
      feels_like = 20.8,
      temp_min = 18.9,
      temp_max = 22.1,
      pressure = 1013,
      humidity = 65
    ),
    visibility = 10000,
    wind = list(
      speed = 3.6,
      deg = 240
    ),
    clouds = list(all = 0),
    dt = 1677652288,
    sys = list(
      type = 2,
      id = 2075535,
      country = "GB",
      sunrise = 1677649423,
      sunset = 1677689042
    ),
    timezone = 0,
    id = 2643743,
    name = "London",
    cod = 200
  )
)

# Test Data Fixtures =====================================================

#' Sample dataset for testing
#'
#' @returns A data.frame with sample data for testing
create_sample_dataset <- function() {
  data.frame(
    id = 1:100,
    name = paste0("Item_", sprintf("%03d", 1:100)),
    value = rnorm(100, mean = 50, sd = 10),
    category = sample(c("A", "B", "C"), 100, replace = TRUE),
    date = seq.Date(as.Date("2024-01-01"), by = "day", length.out = 100),
    is_active = sample(c(TRUE, FALSE), 100, replace = TRUE),
    stringsAsFactors = FALSE
  )
}

#' Sample anomalous dataset for testing anomaly detection
#'
#' @returns A data.frame with normal data and some anomalies
create_anomaly_dataset <- function() {
  set.seed(42)  # For reproducible tests
  n <- 200

  # Normal data
  normal_data <- data.frame(
    timestamp = seq.POSIXt(as.POSIXct("2024-01-01"), by = "hour", length.out = n),
    value = rnorm(n, mean = 100, sd = 10),
    metric = "cpu_usage"
  )

  # Insert some anomalies
  anomaly_indices <- c(50, 75, 120, 180)
  normal_data$value[anomaly_indices] <- c(200, 250, 300, 280)  # Clear outliers

  normal_data
}

#' Sample code blocks for testing code extraction
#'
#' @returns Character vector with various code block formats
create_sample_code_blocks <- function() {
  c(
    # R code block
    "```r\nlibrary(dplyr)\ndata %>% filter(x > 10)\n```",

    # Python code block
    "```python\nimport pandas as pd\ndf = pd.read_csv('data.csv')\n```",

    # SQL code block
    "```sql\nSELECT * FROM users WHERE active = 1;\n```",

    # Code block without language specification
    "```\necho 'Hello World'\n```",

    # Mixed content with multiple code blocks
    paste(
      "Here's some R code:\n",
      "```r\nx <- 1:10\nmean(x)\n```\n",
      "And some Python:\n",
      "```python\nprint('Hello')\n```"
    )
  )
}

#' Sample markdown content for testing
#'
#' @returns Character string with markdown content including code blocks
create_sample_markdown <- function() {
  "# Sample Document

This is a test document with various code blocks.

## R Analysis

Here's some R code:

```r
library(ggplot2)
data(mtcars)

ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = 'lm')
```

## Python Analysis

And some Python:

```python
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y = np.sin(x)

plt.plot(x, y)
plt.show()
```

## SQL Query

```sql
SELECT
  customer_id,
  COUNT(*) as order_count,
  SUM(total_amount) as total_spent
FROM orders
WHERE order_date >= '2024-01-01'
GROUP BY customer_id
ORDER BY total_spent DESC;
```

That's all for now."
}

# Mock Database Setup ====================================================

#' Create mock database connection for testing
#'
#' @returns A mock database connection object
create_mock_db_connection <- function() {
  # Create a simple list that mimics DBI connection behavior
  mock_conn <- list(
    host = "localhost",
    port = 5432,
    dbname = "test_db",
    user = "test_user",
    connected = TRUE
  )

  class(mock_conn) <- c("MockDBConnection", "DBIConnection")
  mock_conn
}

#' Mock database query results
mock_db_query_results <- list(
  users = data.frame(
    id = 1:5,
    name = c("Alice", "Bob", "Charlie", "Diana", "Eve"),
    email = c("alice@example.com", "bob@example.com", "charlie@example.com",
              "diana@example.com", "eve@example.com"),
    created_at = as.POSIXct(c("2024-01-01", "2024-01-02", "2024-01-03",
                              "2024-01-04", "2024-01-05")),
    stringsAsFactors = FALSE
  ),

  products = data.frame(
    id = 1:3,
    name = c("Widget A", "Widget B", "Widget C"),
    price = c(19.99, 29.99, 39.99),
    category = c("Electronics", "Electronics", "Home"),
    stringsAsFactors = FALSE
  ),

  documents = data.frame(
    id = 1:4,
    title = c("Document 1", "Document 2", "Document 3", "Document 4"),
    content = c("Content of document 1", "Content of document 2",
                "Content of document 3", "Content of document 4"),
    metadata = c('{"type": "pdf"}', '{"type": "docx"}',
                 '{"type": "txt"}', '{"type": "pdf"}'),
    created_at = Sys.time(),
    stringsAsFactors = FALSE
  )
)

# Helper Functions for Test Setup =======================================

#' Create temporary test files
#'
#' @param files Named list where names are filenames and values are content
#' @param temp_dir Directory to create files in (uses tempdir() if NULL)
#' @returns Character vector of created file paths
create_test_files <- function(files, temp_dir = NULL) {
  if (is.null(temp_dir)) temp_dir <- tempdir()

  file_paths <- character(length(files))

  for (i in seq_along(files)) {
    file_path <- file.path(temp_dir, names(files)[i])
    dir.create(dirname(file_path), recursive = TRUE, showWarnings = FALSE)
    writeLines(files[[i]], file_path)
    file_paths[i] <- file_path
  }

  names(file_paths) <- names(files)
  file_paths
}

#' Setup mock HTTP responses using httptest2
#'
#' @param responses Named list of mock responses
setup_mock_http <- function(responses = NULL) {
  if (is.null(responses)) {
    responses <- list(
      "api.openai.com" = mock_openai_responses,
      "api.anthropic.com" = mock_anthropic_responses,
      "maps.googleapis.com" = mock_gmaps_responses,
      "api.openweathermap.org" = mock_openweather_responses
    )
  }

  # This would typically use httptest2::with_mock_api() or similar
  # For now, we'll store the responses for manual mocking
  assign("mock_http_responses", responses, envir = .GlobalEnv)
  responses
}
