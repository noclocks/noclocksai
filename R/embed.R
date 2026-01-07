#  ------------------------------------------------------------------------
#
# Title : Embeddings
#    By : Jimmy Briggs
#  Date : 2025-03-03
#
#  ------------------------------------------------------------------------

# topic -----------------------------------------------------------------------------------------------------------

#' Embeddings
#'
#' @name embeddings
#'
#' @description
#' These functions generate text embeddings using external APIs.
#'
#' Functions:
#'
#' - `embed_openai()`: Generate text embeddings using OpenAI's API.
#' - `embed_ollama()`: Generate text embeddings using Ollama's API.
#'
#' @param text Character string to embed. Can be one of the following:
#'   - A character vector, in which case a matrix of embeddings is returned.
#'   - A `data.frame` with a column named `text`, in which case the `data.frame` is returned with
#'     an additional column added named `embedding`.
#'   - Missing of `NULL`, in which case a function is returned that can be called to get embeddings.
#' @param base_url The base URL for the API. Default depends on the embedding provider.
#' @param model The model to use for the embedding. Default depends on the embedding provider.
#' @param batch_size The batch size to use for the embedding. This will split `text` into batches when embedding.
#' @param api_key The API key to use for the embedding. Default is obtained from the appropriate configuration.
#' @param dims Number of dimensions for the embedding (if supported by the model).
#' @param user User identifier for the embedding request (if supported by the provider).
#'
#' @returns
#' If `text` is a character vector, a matrix of embeddings is returned.
#' If `text` is a `data.frame`, the `data.frame` is returned with an additional column named `embedding`.
#' If `text` is missing or `NULL`, a function is returned that can be called to get embeddings.
#'
#' @examples
#' \dontrun{
#' # Get embeddings for a single string
#' embedding <- embed_openai("This is a test sentence.")
#'
#' # Get embeddings for multiple strings
#' embeddings <- embed_openai(c("First sentence", "Second sentence"))
#'
#' # Add embeddings to a data frame
#' df <- data.frame(text = c("First", "Second", "Third"))
#' df_with_embeddings <- embed_openai(df)
#' }
NULL


# utils -----------------------------------------------------------------------------------------------------------

#' Capture function arguments as a list
#'
#' @description
#' Internal utility to capture arguments for partial application.
#'
#' @return A list of arguments
#'
#' @keywords internal
#' @noRd
#'
#'
#' @importFrom utils tail
capture_args <- function() {
  call <- sys.call(-1)
  dots <- utils::tail(as.list(call), -1)
  names(dots) <- sapply(names(dots), function(x) if (x == "") "" else x)
  dots
}

#' Process embeddings in batches
#'
#' @description
#' Internal utility to process embeddings in batches.
#'
#' @param texts Character vector of texts to embed
#' @param batch_size Size of each batch
#' @param embed_fn Function to embed a batch
#'
#' @return Matrix of embeddings
#'
#' @keywords internal
#' @noRd
#' @importFrom cli cli_progress_bar cli_progress_update cli_progress_done
batch_embed <- function(texts, batch_size, embed_fn) {
  n_items <- length(texts)
  batches <- split(texts, ceiling(seq_along(texts) / batch_size))

  results <- list()
  pb <- cli::cli_progress_bar(
    total = length(batches),
    format = "Processing embeddings {cli::pb_bar} {cli::pb_percent} | Batch {cli::pb_current}/{cli::pb_total}"
  )

  for (i in seq_along(batches)) {
    batch_result <- embed_fn(batches[[i]])
    results[[i]] <- batch_result
    cli::cli_progress_update(pb, i)
  }

  cli::cli_progress_done(pb)

  # Combine results
  if (is.matrix(results[[1]])) {
    # For matrices, bind rows
    do.call(rbind, results)
  } else {
    # For vector embeddings (single items per batch), combine list
    do.call(c, results)
  }
}


# openai ----------------------------------------------------------------------------------------------------------

#' Generate text embeddings using OpenAI's API
#'
#' @rdname embeddings
#' @export
#' @importFrom httr2 request req_method req_headers req_auth_bearer_token req_body_json req_perform resp_check_status resp_body_json
#' @importFrom cli cli_alert_success cli_abort cli_alert_info
#' @importFrom purrr pluck map map_dbl
embed_openai <- function(
  text,
  base_url = get_api_url("openai", "embeddings"),
  model = c("text-embedding-3-small", "text-embedding-3-large"),
  dims = NULL,
  user = NULL,
  batch_size = 20L,
  api_key = get_openai_api_key()
) {
  # Return a partially applied function if text is missing
  if (missing(text) || is.null(text)) {
    args <- capture_args()
    func <- purrr::partial(embed_openai, !!!args)
    return(func)
  }

  # Handle data frame input
  if (is.data.frame(text)) {
    if (!"text" %in% names(text)) {
      cli::cli_abort("Data frame must contain a column named 'text'.")
    }

    text_copy <- text
    text_copy[["embedding"]] <- embed_openai(
      text = text[["text"]],
      base_url = base_url,
      model = model,
      dims = dims,
      user = user,
      batch_size = batch_size,
      api_key = api_key
    )
    return(text_copy)
  }

  # Match model argument
  model <- match.arg(model)

  # Ensure text is a character vector
  if (!is.character(text)) {
    cli::cli_abort("Text must be a character vector, a data frame with a 'text' column, or NULL.")
  }

  # Handle empty inputs
  if (length(text) == 0) {
    cli::cli_alert_info("Empty text input, returning empty result.")
    return(matrix(numeric(0), nrow = 0, ncol = 0))
  }

  # Single text case
  if (length(text) == 1) {
    return(embed_openai_single(
      text = text,
      base_url = base_url,
      model = model,
      dims = dims,
      user = user,
      api_key = api_key
    ))
  }

  # Multiple texts case - use batching
  cli::cli_alert_info("Processing {length(text)} texts in batches of {batch_size}.")

  embeddings <- batch_embed(
    texts = text,
    batch_size = batch_size,
    embed_fn = function(batch) {
      # Process each text in the batch individually
      batch_embeddings <- lapply(batch, function(t) {
        embed_openai_single(
          text = t,
          base_url = base_url,
          model = model,
          dims = dims,
          user = user,
          api_key = api_key
        )
      })

      # Convert list of vectors to matrix
      do.call(rbind, batch_embeddings)
    }
  )

  # Add row names if the input had names
  if (!is.null(names(text))) {
    rownames(embeddings) <- names(text)
  }

  return(embeddings)
}


#' Generate a single text embedding using OpenAI's API
#'
#' @param text Single text string to embed
#' @param base_url Base URL for the API
#' @param model Model to use
#' @param dims Dimensions for the embedding (if supported)
#' @param user User identifier (if needed)
#' @param api_key OpenAI API key
#'
#' @return Numeric vector of embeddings
#'
#' @keywords internal
#' @noRd
embed_openai_single <- function(
  text,
  base_url,
  model,
  dims,
  user,
  api_key
) {
  # Create request body
  req_body <- list(
    "input" = text,
    "model" = model
  )

  # Add optional parameters if provided
  if (!is.null(dims)) req_body$dimensions <- dims
  if (!is.null(user)) req_body$user <- user

  # Create and send request
  req <- httr2::request(base_url) |>
    httr2::req_method("POST") |>
    httr2::req_headers("Content-Type" = "application/json") |>
    httr2::req_auth_bearer_token(api_key) |>
    httr2::req_body_json(req_body)

  # Handle response
  tryCatch({
    resp <- httr2::req_perform(req)
    httr2::resp_check_status(resp)
  }, error = function(e) {
    cli::cli_abort("Failed to call OpenAI's Embeddings API\n{e$message}")
  })

  # Parse response
  resp_json <- httr2::resp_body_json(resp)
  embedding <- purrr::pluck(resp_json, "data", 1, "embedding")

  # Check response format
  if (is.null(embedding)) {
    cli::cli_abort("Unexpected API response format. Could not extract embedding.")
  }

  # Return embedding as numeric vector
  unlist(embedding)
}


# ollama ----------------------------------------------------------------------------------------------------------

#' Generate text embeddings using Ollama's API
#'
#' @rdname embeddings
#' @export
#' @importFrom httr2 request req_method req_headers req_body_json req_perform resp_check_status resp_body_json
#' @importFrom cli cli_alert_success cli_abort cli_alert_info
#' @importFrom purrr pluck map
embed_ollama <- function(
  text,
  base_url = "http://localhost:11434/api/embeddings",
  model = "llama3",
  batch_size = 10L
) {
  # Return a partially applied function if text is missing
  if (missing(text) || is.null(text)) {
    args <- capture_args()
    func <- purrr::partial(embed_ollama, !!!args)
    return(func)
  }

  # Handle data frame input
  if (is.data.frame(text)) {
    if (!"text" %in% names(text)) {
      cli::cli_abort("Data frame must contain a column named 'text'.")
    }

    text_copy <- text
    text_copy[["embedding"]] <- embed_ollama(
      text = text[["text"]],
      base_url = base_url,
      model = model,
      batch_size = batch_size
    )
    return(text_copy)
  }

  # Ensure text is a character vector
  if (!is.character(text)) {
    cli::cli_abort("Text must be a character vector, a data frame with a 'text' column, or NULL.")
  }

  # Handle empty inputs
  if (length(text) == 0) {
    cli::cli_alert_info("Empty text input, returning empty result.")
    return(matrix(numeric(0), nrow = 0, ncol = 0))
  }

  # Single text case
  if (length(text) == 1) {
    return(embed_ollama_single(
      text = text,
      base_url = base_url,
      model = model
    ))
  }

  # Multiple texts case - use batching
  cli::cli_alert_info("Processing {length(text)} texts in batches of {batch_size}.")

  embeddings <- batch_embed(
    texts = text,
    batch_size = batch_size,
    embed_fn = function(batch) {
      # Process each text in the batch individually
      batch_embeddings <- lapply(batch, function(t) {
        embed_ollama_single(
          text = t,
          base_url = base_url,
          model = model
        )
      })

      # Convert list of vectors to matrix
      do.call(rbind, batch_embeddings)
    }
  )

  # Add row names if the input had names
  if (!is.null(names(text))) {
    rownames(embeddings) <- names(text)
  }

  return(embeddings)
}


#' Generate a single text embedding using Ollama's API
#'
#' @param text Single text string to embed
#' @param base_url Base URL for the API
#' @param model Model to use
#'
#' @return Numeric vector of embeddings
#'
#' @keywords internal
#' @noRd
embed_ollama_single <- function(
  text,
  base_url,
  model
) {
  # Create request body
  req_body <- list(
    "model" = model,
    "prompt" = text
  )

  # Create and send request
  req <- httr2::request(base_url) |>
    httr2::req_method("POST") |>
    httr2::req_headers("Content-Type" = "application/json") |>
    httr2::req_body_json(req_body)

  # Handle response
  tryCatch({
    resp <- httr2::req_perform(req)
    httr2::resp_check_status(resp)
  }, error = function(e) {
    cli::cli_abort("Failed to call Ollama's Embeddings API\n{e$message}")
  })

  # Parse response
  resp_json <- httr2::resp_body_json(resp)
  embedding <- purrr::pluck(resp_json, "embedding")

  # Check response format
  if (is.null(embedding)) {
    cli::cli_abort("Unexpected API response format. Could not extract embedding.")
  }

  # Return embedding as numeric vector
  unlist(embedding)
}
