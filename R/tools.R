
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
#' - `tool_extract_code()`: Tool that extracts code blocks from text. Wraps the [extract_code()] function.
#'
#' @param cache Logical. If `TRUE`, the function will cache the results of the tool call using [memoise::memoise()].
#'   Default is `FALSE`.
#'
#' @returns
#' Each function returns an [ellmer::tool()] definition.
NULL

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

tool_query_db <- function() {


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

execute_r_code <- function(code) {

  tryCatch({
    expr = {
      eval(parse(text = code))
      cli::cli_alert_success("R Code executed successfully.")
    }
  }, error = function(e) {
    cli::cli_alert_danger("Error executing R code: {e$message}")
    return(character(0))
  })

}

#' @rdname tools
#' @export
tool_execute_r_code <- function() {

  func <- execute_r_code

  ellmer::tool(
    .name = "execute_r_code",
    .description = "Executes R code and returns the result.",
    .fun = func,
    code = ellmer::type_string("R code to execute.", required = TRUE)
  )

}


# database --------------------------------------------------------------------------------------------------------

query_db <- function(conn, query) {

  check_db_conn(conn)
  if (inherits(conn, "Pool")) {
    pool <- conn
    conn <- pool::poolCheckout(conn)
    withr::defer(pool::poolReturn(conn))
  }

  tryCatch({
    result <- DBI::dbGetQuery(conn, query)
    return(as.data.frame(result))
  }, error = function(e) {
    cli::cli_alert_danger("Error executing query: {e$message}")
    return(character(0))
  })

}

#' @rdname tools
#' @export
tool_query_db <- function(conn) {

  check_db_conn(conn)
  func <- purrr::partial(query_db, conn = conn)

  ellmer::tool(
    .name = "query_db",
    .description = "Executes a SQL query on the database and returns the result.",
    .fun = func,
    query = ellmer::type_string("SQL query to execute.", required = TRUE)
  )

}

# EDA -------------------------------------------------------------------------------------------------------------

detect_anomalies <- function(data, column_name = NULL) {

  check_tibble(data)

  # Check if column_name is provided
  if (is.null(column_name)) {
    # Run anomaly detection on all numeric columns
    results <- data |>
      dplyr::select(tidyselect::where(is.numeric)) |>
      purrr::map(~ {
        iqr <- stats::IQR(.x, na.rm = TRUE)
        q3 <- stats::quantile(.x, 0.75, na.rm = TRUE)
        outliers <- which(.x > q3 + (iqr * 1.5))
        list(
          outliers = outliers,
          values = .x[outliers],
          severity = length(outliers) / length(.x)
        )
      }) |>
      purrr::keep(~ length(.x$outliers) > 0)
    return(results)
  } else {

    check_col_names(data, column_name)
    values <- data[[column_name]]
    if (!is.numeric(values)) {
      return(paste("Column", column_name, "is not numeric"))
    }
    # Simple IQR-based outlier detection
    iqr <- stats::IQR(values, na.rm = TRUE)
    q3 <- stats::quantile(values, 0.75, na.rm = TRUE)
    outliers <- which(values > q3 + (iqr * 1.5))
    return(
      list(
        outliers = outliers,
        values = values[outliers],
        severity = length(outliers) / length(values)
      )
    )
  }
}

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

correlate_with_anomalies <- function(data, column_name, anomaly_indices) {

  check_tibble(data)
  check_col_names(data, column_name)

  # Check correlations with other variables
  correlations <- data |>
    dplyr::select(tidyselect::where(is.numeric)) |>
    purrr::map_dbl(~ stats::cor(.x, data[[column_name]], use = "complete.obs"))

  # Compare distributions
  normal_indices <- setdiff(1:nrow(data), anomaly_indices)

  comparison <- data |>
    dplyr::select(tidyselect::where(is.numeric)) |>
    purrr::map(~ {
      if (length(anomaly_indices) > 0) {
        list(
          anomaly_mean = mean(.x[anomaly_indices], na.rm = TRUE),
          normal_mean = mean(.x[normal_indices], na.rm = TRUE),
          diff_percent = (mean(.x[anomaly_indices], na.rm = TRUE) /
                            mean(.x[normal_indices], na.rm = TRUE) - 1) * 100
        )
      } else {
        list(
          anomaly_mean = NA,
          normal_mean = mean(.x, na.rm = TRUE),
          diff_percent = NA
        )
      }
    })

  return(
    list(
      correlations = sort(correlations, decreasing = TRUE),
      comparison = comparison
    )
  )
}

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

# internal custom types -------------------------------------------------------------------------------------------

#' @keywords internal
#' @noRd
#' @importFrom ellmer type_string type_object type_array type_number type_boolean
.extract_code_types <- list(
  text = ellmer::type_string("Text containing code block(s).", required = TRUE),
  lang = ellmer::type_string("Language of code block to extract (i.e. 'r', 'python', 'sql', etc.).", required = FALSE)
)

#' @keywords internal
#' @noRd
#' @importFrom ellmer type_string
.gmaps_geocode_address_types <- list(
  address = ellmer::type_string("The address to geocode.", required = TRUE)
)

#' @keywords internal
#' @noRd
#' @importFrom ellmer type_string type_number
.gmaps_places_search_types <- list(
  query = ellmer::type_string("The search query to find places.", required = TRUE),
  address = ellmer::type_string("The address to search for places near.", required = FALSE),
  radius = ellmer::type_number("The radius in meters to search for places near the address.", required = FALSE)
)
