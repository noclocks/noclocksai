
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


# geocode ---------------------------------------------------------------------------------------------------------

#' Geocode
#'
#' @description
#' Geocode a location using the OpenWeather API.
#'
#' @param location A character string representing the location to geocode.
#' @param api_key A character string representing the OpenWeather API key.
#'
#' @returns
#' A list containing the geocoded location data.
#'
#' @export
#'
#' @importFrom httr2 request req_url_query req_perform resp_check_status resp_body_json
geocode <- function(location, api_key = get_api_key("openweather")) {

  base_url <- "http://api.openweathermap.org/geo/1.0/direct"

  query_params <- list(
    q = location,
    limit = 1,
    appid = api_key
  )

  req <- httr2::request(base_url) |>
    httr2::req_url_query(!!!query_params)

  resp <- httr2::req_perform(req)
  httr2::resp_check_status(resp)

  httr2::resp_body_json(resp)

}

# get weather -----------------------------------------------------------------------------------------------------

#' Get Weather
#'
#' @description
#' Get the current weather for a given location using the OpenWeather API.
#'
#' @param location A character string representing the location to get the weather for.
#' @param api_key A character string representing the OpenWeather API key.
#'   If not provided, it will be retrieved from the environment variable `OPENWEATHER_API_KEY`.
#'
#' @returns
#' A list containing the current weather data for the specified location.
#'
#' @export
get_weather <- function(lat, lon, units = c("standard", "metric", "imperial"), api_key = get_api_key("openweather")) {

  units <- match.arg(units)
  if (units == "standard") units <- NULL

  base_url <- "https://api.openweathermap.org/data/2.5/weather"

  query_params <- list(
    lat = lat,
    lon = lon,
    units = units,
    appid = api_key
  ) |>
    purrr::compact()

  req <- httr2::request(base_url) |>
    httr2::req_url_query(!!!query_params)

  resp <- httr2::req_perform(req)
  httr2::resp_check_status(resp)

  httr2::resp_body_json(resp)
}


