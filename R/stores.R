
#  ------------------------------------------------------------------------
#
# Title : Vector Stores
#    By : Jimmy Briggs
#  Date : 2025-04-01
#
#  ------------------------------------------------------------------------


# topic -----------------------------------------------------------------------------------------------------------

#' Vector Stores
#'
#' @name stores
#'
#' @description
#' These functions are helpers for working with OpenAI Vector Stores.
#'
#' - `openai_list_vector_stores()`: Retrieve a list of vector stores.
#' - `openai_create_vector_store()`: Create a new vector store.
#' - `openai_retreive_vector_store()`: Retrieve a vector store by ID.
#'
#' @param api_key A character string specifying the OpenAI API key.
#' @param name A character string specifying the service name.
#' @param id A character string specifying the vector store ID.
#'
#' @returns
#' - `openai_list_vector_stores()`: A tibble of vector store information.
#' - `openai_create_vector_store()`: A list containing the status, ID, and name of the created vector store.
#' - `openai_retreive_vector_store()`: A list containing the vector store information.
NULL

#' @rdname stores
#' @export
#' @importFrom cli cli_abort
#' @importFrom httr2 req_auth_bearer_token req_headers req_method request req_perform resp_check_status resp_body_json
#' @importFrom purrr pluck map_dfr
#' @importFrom tibblify tibblify
openai_list_vector_stores <- function(api_key = get_api_key(name = "openai")) {

  req <- httr2::request("https://api.openai.com/v1/vector_stores") |>
    httr2::req_method("GET") |>
    httr2::req_headers(
      "Content-Type" = "application/json",
      "OpenAI-Beta" = "assistants=v2"
    ) |>
    httr2::req_auth_bearer_token(api_key)

  tryCatch({
    resp <- httr2::req_perform(req)
    httr2::resp_check_status(resp)
    resp_json <- httr2::resp_body_json(resp)
    resp_data <- purrr::pluck(resp_json, "data")
  }, error = function(e) {
    cli::cli_abort(
      c(
        "Failed to retrieve vector stores from OpenAI API.",
        "Error: {e$message}"
      )
    )
  })

  tryCatch({
    purrr::map_dfr(
      resp_data,
      tibblify::tibblify,
      spec = vector_store_list_tspec,
      unspecified = "drop"
    )
  }, error = function(e) {
    cli::cli_abort(
      c(
        "Failed to parse vector stores from OpenAI API response.",
        "Error: {e$message}"
      )
    )
  })

}

#' @rdname stores
#' @export
#' @importFrom cli cli_abort
#' @importFrom httr2 req_body_json req_auth_bearer_token req_headers req_method request req_perform resp_check_status resp_body_json resp_status
#' @importFrom purrr pluck
openai_create_vector_store <- function(name, api_key = get_api_key(name = "openai")) {

  req <- httr2::request("https://api.openai.com/v1/vector_stores") |>
    httr2::req_method("POST") |>
    httr2::req_headers(
      "Content-Type" = "application/json",
      "OpenAI-Beta" = "assistants=v2"
    ) |>
    httr2::req_auth_bearer_token(api_key) |>
    httr2::req_body_json(
      list(
        name = name
      )
    )

  tryCatch({
    resp <- httr2::req_perform(req)
    httr2::resp_check_status(resp)
    resp_json <- httr2::resp_body_json(resp)

    list(
      status = httr2::resp_status(resp),
      id = purrr::pluck(resp_json, "id"),
      name = purrr::pluck(resp_json, "name")
    )
  }, error = function(e) {
    cli::cli_abort(
      c(
        "Failed to create vector store via OpenAI API.",
        "Error: {e$message}"
      )
    )
  })

}

#' @rdname stores
#' @export
#' @importFrom cli cli_abort
#' @importFrom httr2 req_url_path_append req_auth_bearer_token req_headers req_method request req_perform resp_check_status resp_body_json
#' @importFrom purrr pluck
openai_retreive_vector_store <- function(id, api_key = get_api_key(name = "openai")) {

  req <- httr2::request("https://api.openai.com/v1/vector_stores/") |>
    httr2::req_method("GET") |>
    httr2::req_headers(
      "Content-Type" = "application/json",
      "OpenAI-Beta" = "assistants=v2"
    ) |>
    httr2::req_auth_bearer_token(api_key) |>
    httr2::req_url_path_append(id)

  tryCatch({
    resp <- httr2::req_perform(req)
    httr2::resp_check_status(resp)
    resp_json <- httr2::resp_body_json(resp)
    list(
      id = purrr::pluck(resp_json, "id"),
      object = purrr::pluck(resp_json, "object"),
      created_at = purrr::pluck(resp_json, "created_at"),
      name = purrr::pluck(resp_json, "name"),
      file_counts = purrr::pluck(resp_json, "file_counts"),
      status = purrr::pluck(resp_json, "status"),
      last_active_at = purrr::pluck(resp_json, "last_active_at")
    )
  }, error = function(e) {
    cli::cli_abort(
      c(
        "Failed to retrieve vector store from OpenAI API.",
        "Error: {e$message}"
      )
    )
  })
}



# specs -----------------------------------------------------------------------------------------------------------

#' @keywords internal
#' @noRd
#' @importFrom tibblify tib_chr tib_int tib_row tib_unspecified
vector_store_list_tspec <- tibblify::tspec_row(
  id = tibblify::tib_chr("id"),
  object = tibblify::tib_chr("object", required = FALSE),
  created_at = tibblify::tib_int("created_at", required = FALSE),
  name = tibblify::tib_chr("name", required = FALSE),
  usage_bytes = tibblify::tib_int("usage_bytes", required = FALSE),
  row = tibblify::tib_row(
    .required = FALSE,
    .key = "file_counts",
    tibblify::tib_int("in_progress"),
    tibblify::tib_int("completed"),
    tibblify::tib_int("failed"),
    tibblify::tib_int("cancelled"),
    tibblify::tib_int("total"),
  ),
  status = tibblify::tib_chr("status"),
  expires_after = tibblify::tib_unspecified("expires_after", required = FALSE),
  expires_at = tibblify::tib_unspecified("expires_at", required = FALSE),
  last_active_at = tibblify::tib_int("last_active_at", required = FALSE),
  metadata = tibblify::tib_unspecified("metadata", required = FALSE),
)
