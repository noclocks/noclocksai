#'
#' #  ------------------------------------------------------------------------
#' #
#' # Title : Embeddings
#' #    By : Jimmy Briggs
#' #  Date : 2025-03-03
#' #
#' #  ------------------------------------------------------------------------
#'
#' # topic -----------------------------------------------------------------------------------------------------------
#'
#' #' Embeddings
#' #'
#' #' @name embeddings
#' #'
#' #' @description
#' #' These functions generate text embeddings using external APIs.
#' #'
#' #' Functions:
#' #'
#' #' - `embed_openai()`: Generate text embeddings using OpenAI's API ("text-embedding-3-small" model).
#' #' - `embed_ollama()`: Generate text embeddings using Ollama's API.
#' #'
#' #' @param text Character string to embed. Can be one of the following:
#' #'   - A character vector, in which case a matrix of embeddings is returned.
#' #'   - A `data.frame` with a column named `text`, in which case the `data.frame` is returned with
#' #'     an additional column added named `embedding`.
#' #'   - Missing of `NULL`, in which case a function is returned that can be called to get embeddings.
#' #' @param base_url The base URL for the API. Default is `get_api_url("openai", "embeddings")`.
#' #' @param model The model to use for the embedding. Default is `text-embedding-3-small`.
#' #' @param batch_size The batch size to use for the embedding. This will split `text` into batches when embedding.
#' #'   Default is `10L`.
#' #' @param api_key The API key to use for the embedding. Default is `get_openai_api_key()`.
#' #'
#' #' @returns
#' #' If `text` is a character vector, a matrix of embeddings is returned.
#' #' If `text` is a `data.frame`, the `data.frame` is returned with an additional column named `embedding`.
#' #' If `text` is missing or `NULL`, a function is returned that can be called to get embeddings.
#' #'
#' #' @export
#' #'
#' #' @examples examples/ex_embeddings.R
#' NULL
#'
#'
#' # openai ----------------------------------------------------------------------------------------------------------
#'
#' #' @export
#' #' @importFrom httr2 request req_method req_headers req_auth_bearer_token req_body_json req_perform resp_check_status resp_body_json
#' #' @importFrom cli cli_alert_success cli_abort
#' #' @importFrom purrr pluck
#' embed_openai <- function(
#'   text,
#'   base_url = get_api_url("openai", "embeddings"),
#'   model = c("text-embedding-3-small", "text-embedding-3-large"),
#'   dims = NULL,
#'   user = NULL,
#'   batch_size = 20L,
#'   api_key = get_openai_api_key()
#' ) {
#'
#'   if (missing(text) || is.null(text)) {
#'     args <- capture_args()
#'     func <- purrr::partial(quote(noclocksai::embed_openai), alist(text = ), args)
#'     return(func)
#'   }
#'
#'   if (is.data.frame(text)) {
#'     text[["embedding"]] <- Recall(
#'       text[["text"]],
#'       base_url = base_url,
#'       model = model,
#'       dims = dims,
#'       user = user,
#'       batch_size = batch_size,
#'       api_key = api_key
#'     )
#'     return(text)
#'   }
#'
#'   if (is.character(text)) {
#'     text <- list(text)
#'   }
#'
#'
#'
#' }
#'
#'   base_url <- "https://api.openai.com/v1/embeddings"
#'
#'   req_body <- list(
#'     "input" = text,
#'     "model" = model
#'   )
#'
#'   req <- httr2::request(base_url) |>
#'     httr2::req_method("POST") |>
#'     httr2::req_headers("Content-Type" = "application/json") |>
#'     httr2::req_auth_bearer_token(api_key) |>
#'     httr2::req_body_json(req_body)
#'
#'   tryCatch({
#'     resp <- httr2::req_perform(req)
#'     httr2::resp_check_status(resp)
#'     cli::cli_alert_success("Successfully called OpenAI embedding API")
#'   }, error = function(e) {
#'     cli::cli_abort("Failed to call OpenAI's Embeddings API\n{e$message}")
#'   })
#'
#'   resp_json <- httr2::resp_body_json(resp)
#'
#'   purrr::pluck(resp_json, "data", 1, "embedding")
#'
#' }
