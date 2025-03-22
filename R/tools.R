
#  ------------------------------------------------------------------------
#
# Title : Custom Tools
#    By : Jimmy Briggs
#  Date : 2025-03-09
#
#  ------------------------------------------------------------------------


# registration ----------------------------------------------------------------------------------------------------

#' Tool Registration
#'
#' @description
#' Register custom, function calling tools to the chat session.
#'
#' - `register_tool()`: Register a single tool.
#' - `register_tools()`: Register multiple tools.
#'
#' @param chat An [ellmer::chat_openai()] object.
#' @param tool An [ellmer::tool()] object.
#' @param tools A list of [ellmer::tool()] objects.
#'
#' @returns
#' While these functions are used for there side-effects (registering tools to the chat session), they do
#' invisibly return the chat object.
#'
#' @export
#'
#' @importFrom cli cli_alert_success
#'
#' @examples
#' \dontrun{
#' chat <- initialize_chat()
#' register_tool(chat, tool_gmaps_places_search())
#' register_tools(chat, list(tool_gmaps_geocode_address(), tool_hunter_get_email_address()))
#' }
register_tool <- function(chat, tool, use_cache = TRUE, cache = NULL) {
  check_chat(chat)
  check_tool(tool)
  chat$register_tool(tool)
  cli::cli_alert_success("Successfully registered tool: {.field {tool@name}}")
  invisible(chat)
}

#' @rdname register_tool
#' @export
#' @importFrom cli cli_alert_success
register_tools <- function(chat, tools) {
  check_chat(chat)
  for (tool in tools) {
    check_tool(tool)
    register_tool(chat, tool)
  }
  cli::cli_alert_success("Successfully registered {.field {length(tools)}} tools.")
  invisible(chat)
}

# tools -----------------------------------------------------------------------------------------------------------

#' Custom Tools
#'
#' @name tools
#'
#' @description
#' Functions that create custom [ellmer::tool()] definitions.
#'
#' Tool Functions:
#'
#' - `tool_current_time()`: Tool that returns the current time.
#' - `tool_get_weather()`: Tool that retrieves the current weather for a given location.
#'   Wraps the [get_weather()] function.
#' - `tool_extract_code()`: Tool that extracts code blocks from text. Wraps the [extract_code()] function.
#' - `tool_execute_r_code()`: Tool that executes R code and returns the result.
#' - `tool_query_db()`: Tool that executes a SQL query on the database and returns the result.
#' - `tool_gmaps_geocode_address()`: Tool that geocodes an address using the Google Maps Geocoding API.
#'   Wraps the [gmaps_geocode_address()] function.
#' - `tool_gmaps_places_search()`: Tool that searches for a place using the Google Maps Places API.
#'   Wraps the [gmaps_places_search()] function.
#' - `tool_anomaly_detection()`: Tool that detects anomalies in a dataset.
#' - `tool_correlate_with_anomalies()`: Tool that analyzes correlations and differences between anomalies and normal data.
#'
#' @param tz Timezone to use for the current time. Default is `NULL`, which uses the system timezone.
#' @param use_cache Logical. If `TRUE`, the function will cache the results of the tool call using [memoise::memoise()].
#'   Default is `FALSE`.
#' @param api_key API key for the OpenWeather API. Defauls to `get_api_key("openweather")`.
#' @param cache Cache object for memoization. Default is `NULL`, which uses the default cache.
#' @param conn Database connection object. Default is `NULL`, which uses the default connection.
#' @param data Data frame to analyze for anomalies. Default is `NULL`.
#'
#' @returns
#' Each function returns an [ellmer::tool()] definition.
#'
#' @seealso [ellmer::tool()]
#'
#' @examples examples/ex_tools.R
NULL


# time ------------------------------------------------------------------------------------------------------------

#' @rdname tools
#' @export
#' @importFrom ellmer tool type_string
tool_current_time <- function(tz = NULL) {

  func <- function(tz = tz) {
    if (is.null(tz)) tz <- Sys.timezone()
    format(Sys.time(), tz = tz, usetz = TRUE)
  }

  ellmer::tool(
    .name = "get_current_time",
    .description = "Get the current time. If no timezone is provided, the system timezone should be used.",
    .fun = func,
    tz = ellmer::type_string("Timezone to use for the current time.", required = FALSE)
  )

}


# geo -------------------------------------------------------------------------------------------------------------

#' @rdname tools
#' @export
#' @importFrom ellmer tool
tool_geocode_location <- function(use_cache = FALSE, cache = NULL, api_key = get_api_key("openweather")) {

  func <- purrr::partial(geocode, api_key = api_key)

  if (use_cache) {
    if (is.null(cache)) cache <- cachem::cache_mem(max_size = 1024 * 1024^2)
    func <- memoise::memoise(f = func, cache = cache, omit_args = c("api_key"))
  }

  ellmer::tool(
    .name = "geocode_location",
    .description = "Get the latitude and longitude for a given location.",
    .fun = func,
    location = ellmer::type_string(description = "Location to geocode.", required = TRUE)
  )

}

# weather ---------------------------------------------------------------------------------------------------------

#' @rdname tools
#' @export
#' @importFrom ellmer tool
tool_get_weather <- function(use_cache = FALSE, cache = NULL, api_key = get_api_key("openweather")) {

  func <- purrr::partial(get_weather, api_key = api_key)

  if (use_cache) {
    if (is.null(cache)) cache <- cachem::cache_mem(max_size = 1024 * 1024^2)
    func <- memoise::memoise(f = func, cache = cache, omit_args = c("api_key"))
  }

  ellmer::tool(
    .name = "get_weather",
    .description = paste0(
      "Get the current weather for a given location's coordinates. ",
      "If the lat/lon are not provided by the user, use the geocode_location tool to get the ",
      "coordinates if its registered."
    ),
    .fun = func,
    lat = ellmer::type_number(description = "Latitude of the location.", required = TRUE),
    lon = ellmer::type_number(description = "Longitude of the location.", required = TRUE),
    units = ellmer::type_string(
      description = "Units for the weather data. Can be 'standard', 'metric', or 'imperial'.",
      required = FALSE
    )
  )

}


# code ------------------------------------------------------------------------------------------------------------

#' @rdname tools
#' @export
#' @importFrom ellmer tool
#' @importFrom purrr partial
#' @importFrom memoise memoise
tool_execute_r_code <- function(cache = FALSE) {

  func <- execute_r_code
  if (cache) func <- memoise::memoise(func)

  ellmer::tool(
    .name = "execute_r_code",
    .description = "Executes R code and returns the result.",
    .fun = func,
    code = ellmer::type_string("R code to execute.", required = TRUE)
  )

}

#' @rdname tools
#' @export
#' @importFrom ellmer tool
#' @importFrom purrr partial
#' @importFrom memoise memoise
#' @importFrom rlang inject
tool_extract_code <- function(cache = FALSE) {

  func <- purrr::partial(extract_code, print = FALSE)
  if (cache) func <- memoise::memoise(func)

  rlang::inject(
    ellmer::tool(
      .fun = func,
      .description = "Extracts code blocks from text",
      .name = "extract_code",
      !!!.extract_code_types
    )
  )

}

# database --------------------------------------------------------------------------------------------------------

#' @rdname tools
#' @export
#' @importFrom ellmer tool type_string
#' @importFrom purrr partial
#' @importFrom memoise memoise
tool_query_db <- function(conn, cache = FALSE) {

  check_db_conn(conn)
  func <- purrr::partial(query_db, conn = conn)
  if (cache) func <- memoise::memoise(func)

  ellmer::tool(
    .name = "query_db",
    .description = "Executes a SQL query on the database and returns the result.",
    .fun = func,
    query = ellmer::type_string("SQL query to execute.", required = TRUE)
  )

}

# google maps -----------------------------------------------------------------------------------------------------

#' @rdname tools
#' @export
#' @importFrom ellmer tool
#' @importFrom purrr partial
#' @importFrom memoise memoise
tool_gmaps_geocode_address <- function(use_cache = TRUE, cache = NULL) {

  func <- purrr::partial(gmaps_geocode_address, api_key = get_gmaps_api_key())
  if (use_cache) {
    if (is.null(cache)) cache <- cachem::cache_mem(max_size = 1024 * 1024^2)
    func <- memoise::memoise(f = func, cache = cache, omit_args = c("api_key"))
  }

  rlang::inject(
    ellmer::tool(
      .name = "gmaps_geocode_address",
      .description = paste0(
        "Geocode an address using the Google Maps Geocoding API.\n",
        "This tool returns the formatted address, latitude, longitude, place ID, and place types."
      ),
      .fun = func,
      !!!.gmaps_geocode_address_types
    )
  )

}

#' @rdname tools
#' @export
#' @importFrom ellmer tool
#' @importFrom purrr partial
#' @importFrom memoise memoise
#' @importFrom cachem cache_mem
tool_gmaps_places_search <- function(use_cache = TRUE, cache = NULL) {

  func <- purrr::partial(gmaps_places_search, api_key = get_gmaps_api_key())

  if (use_cache) {
    if (is.null(cache)) cache <- cachem::cache_mem(max_size = 1024 * 1024^2)
    func <- memoise::memoise(f = func, cache = cache, omit_args = c("api_key"))
  }

  rlang::inject(
    ellmer::tool(
      .name = "gmaps_places_search",
      .description = paste0(
        "Search via the Google Maps Places (New) API to find information about a place.\n",
        "This tool queries the Places Text Search API using a query and address.\n",
        "The response back will be a parsed list of the results."
      ),
      .fun = func,
      !!!.gmaps_places_search_types
    )
  )

}

# analysis / EDA --------------------------------------------------------------------------------------------------

#' @rdname tools
#' @export
#' @importFrom ellmer tool type_string
#' @importFrom purrr partial
tool_anomaly_detection <- function(data) {

  check_tibble(data)

  func <- purrr::partial(detect_anomalies, data = data)

  ellmer::tool(
    .name = "detect_anomalies",
    .description = "Detects anomalies in the dataset using IQR method",
    .fun = func,
    column_name = type_string("Optional column name to analyze", required = FALSE)
  )
}

#' @rdname tools
#' @export
#' @importFrom ellmer tool type_string type_array type_integer
tool_correlate_with_anomalies <- function(data) {

  func <- purrr::partial(correlate_with_anomalies, data = data)

  ellmer::tool(
    .name = "correlate_with_anomalies",
    .description = "Analyzes correlations and differences between anomalies and normal data",
    column_name = ellmer::type_string("Column name with anomalies"),
    anomaly_indices = ellmer::type_array(
      items = ellmer::type_integer(
        description = "Indices of anomalous rows",
        required = TRUE
      )
    )
  )
}


