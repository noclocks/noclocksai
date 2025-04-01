
#  ------------------------------------------------------------------------
#
# Title : Open Weather API
#    By : Jimmy Briggs
#  Date : 2025-03-29
#
#  ------------------------------------------------------------------------

#' Open Weather API
#'
#' @name openweather
#'
#' @description
#' The [OpenWeather API](https://openweathermap.org/api) provides weather data for any location.
#'
#' The following functions are available:
#'
#' - `ow_geocode()`: Geocode a location using the OpenWeather API.
#' - `ow_get_weather()`: Get the current weather for a given location using the OpenWeather API.
#'
#' @param location A character string representing the location to get the weather for.
#' @param api_key A character string representing the Open Weather API key.
#'   Defaults to the value returned by `get_api_key("openweather")`.
#'
#' @returns
#' - `ow_geocode()`: A list containing the geocoded location data.
#' - `ow_get_weather()`: A list containing the current weather data for the specified location.
#'
#' @examples examples/ex_openweather.R
NULL

# geocode ---------------------------------------------------------------------------------------------------------

#' @rdname openweather
#' @export
#' @importFrom httr2 request req_url_query req_perform resp_check_status resp_body_json
ow_geocode <- function(location, api_key = get_api_key("openweather")) {

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

# weather ---------------------------------------------------------------------------------------------------------

#' @rdname openweather
#' @export
#' @importFrom httr2 request req_url_query req_perform resp_check_status resp_body_json
#' @importFrom purrr compact
ow_get_weather <- function(lat, lon, units = c("standard", "metric", "imperial"), api_key = get_api_key("openweather")) {

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
