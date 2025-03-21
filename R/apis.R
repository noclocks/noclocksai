
#  ------------------------------------------------------------------------
#
# Title : APIs
#    By : Jimmy Briggs
#  Date : 2025-03-09
#
#  ------------------------------------------------------------------------


# topic -----------------------------------------------------------------------------------------------------------

#' AI APIs
#'
#' @name apis
#'
#' @description
#' These functions are helpers for working with various AI APIs.
#'
#' - `get_api_url()`: Retrieve the base URL for a given API provider and service.
#'
#' @param provider A character string specifying the API provider.
#' @param name A character string specifying the service name.
#'
#' @returns
#' A character string of the base URL for the specified API service.
NULL

# base URLs -------------------------------------------------------------------------------------------------------

#' @rdname apis
#' @export
#' @importFrom rlang arg_match0
#' @importFrom purrr pluck
get_api_url <- function(provider, name = NULL) {

  provider <- rlang::arg_match0(provider, providers)
  available <- provider_base_urls[[provider]] |> names()

  if (is.null(name)) name <- "base"
  name <- rlang::arg_match0(name, available)

  provider_base_urls |>
    purrr::pluck(provider, name) |>
    as.character()

}


