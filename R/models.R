
#  ------------------------------------------------------------------------
#
# Title : Models
#    By : Jimmy Briggs
#  Date : 2025-03-06
#
#  ------------------------------------------------------------------------

#' AI Models
#'
#' @name models
#'
#' @description
#' Functions for listing and working with AI models across providers.
#'
#' Functions:
#'
#' - `get_openai_models()`: Get OpenAI models by calling the `/models` endpoint.
#'
#' - `get_anthropic_models()`: Get Anthropic models by calling the `/models` endpoint.
#'
#' @param api_key The API key to use for authentication. Will default to the respective platform's API key.
#'
#' @returns
#' Each function returns a character vector of model IDs.
NULL

# openai ----------------------------------------------------------------------------------------------------------

#' @rdname models
#' @export
#' @importFrom httr2 request req_auth_bearer_token req_perform resp_check_status resp_body_json
#' @importFrom dplyr bind_rows arrange desc select
#' @importFrom purrr pluck
get_openai_models <- function(api_key = get_openai_api_key()) {

  base_url <- get_api_url("openai", "models")

  req <- httr2::request(base_url) |>
    httr2::req_auth_bearer_token(api_key)

  resp <- httr2::req_perform(req)

  httr2::resp_check_status(resp)

  resp_json <- httr2::resp_body_json(resp)

  resp_data <- resp_json |>
    purrr::pluck("data") |>
    dplyr::bind_rows() |>
    dplyr::arrange(dplyr::desc(.data$created))

  resp_data |> purrr::pluck("id")

}

#' @rdname models
#' @export
#' @importFrom httr2 request req_headers req_perform resp_check_status resp_body_json
#' @importFrom dplyr bind_rows arrange desc select mutate arrange
#' @importFrom lubridate as_date
#' @importFrom tibble deframe
get_anthropic_models <- function(api_key = get_anthropic_api_key()) {

  base_url <- get_api_url("anthropic", "models")

  req <- httr2::request(base_url) |>
    httr2::req_headers(
      `X-API-KEY` = api_key,
      `Anthropic-Version` = "2023-06-01"
    )

  resp <- httr2::req_perform(req)
  httr2::resp_check_status(resp)

  resp_json <- httr2::resp_body_json(resp)

  resp_data <- resp_json |>
    purrr::pluck("data") |>
    dplyr::bind_rows() |>
    dplyr::mutate(created_at = lubridate::as_date(.data$created_at)) |>
    dplyr::arrange(dplyr::desc(.data$created_at))

  resp_data |>
    dplyr::select("id", "display_name") |>
    tibble::deframe()

}
