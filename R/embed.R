
#  ------------------------------------------------------------------------
#
# Title : Embeddings
#    By : Jimmy Briggs
#  Date : 2025-03-03
#
#  ------------------------------------------------------------------------

#' Create an OpenAI Embedding
#'
#' @description
#' Call the OpenAI Embeddings API to create an embedding for a given text.
#'
#' @param text Character string to embed.
#' @param model The model to use for the embedding. Default is `text-embedding-3-small`.
#' @param api_key The OpenAI API key to use for the embedding. Default is `get_openai_api_key()`.
#'
#' @returns
#' A numeric vector of the embedding.
#'
#' @export
#'
#' @importFrom httr2 request req_method req_headers req_auth_bearer_token req_body_json req_perform resp_check_status resp_body_json
#' @importFrom cli cli_alert_success cli_abort
#' @importFrom purrr pluck
#'
#' @examples
#' \dontrun{
#' embed_openai("Hello, world!")
#' }
embed_openai <- function(text, model = "text-embedding-3-small", api_key = get_openai_api_key()) {

  base_url <- "https://api.openai.com/v1/embeddings"

  req_body <- list(
    "input" = text,
    "model" = model
  )

  req <- httr2::request(base_url) |>
    httr2::req_method("POST") |>
    httr2::req_headers("Content-Type" = "application/json") |>
    httr2::req_auth_bearer_token(api_key) |>
    httr2::req_body_json(req_body)

  tryCatch({
    resp <- httr2::req_perform(req)
    httr2::resp_check_status(resp)
    cli::cli_alert_success("Successfully called OpenAI embedding API")
  }, error = function(e) {
    cli::cli_abort("Failed to call OpenAI's Embeddings API\n{e$message}")
  })

  resp_json <- httr2::resp_body_json(resp)

  purrr::pluck(resp_json, "data", 1, "embedding")

}
