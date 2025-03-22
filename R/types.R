
#  ------------------------------------------------------------------------
#
# Title : Custom Type Definitions
#    By : Jimmy Briggs
#  Date : 2025-03-09
#
#  ------------------------------------------------------------------------

#' Custom Type Definitions
#'
#' @name types
#'
#' @description
#' Functions for defining and maintaining various custom [ellmer::Type] definitions.
NULL

#' @rdname types
#' @export
#' @importFrom ellmer type_string type_object type_array type_number type_boolean
type_gmaps_response <- function() {

  ellmer::type_object(
    status = ellmer::type_string(description = "API Response Status Message", required = TRUE),
    error_message = ellmer::type_string(description = "API Response Error Message", required = FALSE)
  )

}

#' @rdname types
#' @export
#' @importFrom ellmer type_string type_object type_array type_number type_boolean
type_gmaps_geocode_response <- function() {

  ellmer::type_object(
    status = ellmer::type_string(description = "API Response Status Message", required = TRUE),
    error_message = ellmer::type_string(description = "API Response Error Message", required = FALSE),
    results = ellmer::type_array(
      description = "Google Maps Geocode API Response",
      required = TRUE,
      items = ellmer::type_object(
        .description = "Geocode Result",
        .required = TRUE,
        place_id = ellmer::type_string(description = "Google Maps Place ID", required = TRUE),
        formatted_address = ellmer::type_string(description = "Formatted Address", required = TRUE),
        geometry = ellmer::type_object(
          .description = "Geographic Coordinates",
          .required = TRUE,
          location = ellmer::type_object(
            .description = "Geographic Location",
            .required = TRUE,
            lat = ellmer::type_number(description = "Latitude", required = TRUE),
            lng = ellmer::type_number(description = "Longitude", required = TRUE)
          )
        ),
        address_components = ellmer::type_array(
          .description = "Address Components",
          .required = TRUE,
          items = ellmer::type_object(
            .description = "Address Component",
            .required = TRUE,
            long_name = ellmer::type_string(description = "Long Name", required = TRUE),
            short_name = ellmer::type_string(description = "Short Name", required = TRUE),
            types = ellmer::type_array(
              .description = "Address Component Types",
              .required = TRUE,
              items = ellmer::type_string(description = "Address Component Type", required = TRUE)
            )
          )
        )
      )
    )
  )

}

#' @rdname types
#' @export
#' @importFrom ellmer type_string type_object type_array type_number type_boolean
type_gmaps_places_search_response <- function() {
  ellmer::type_object(
    status = ellmer::type_string(description = "API Response Status Message", required = TRUE),
    error_message = ellmer::type_string(description = "API Response Error Message", required = FALSE),
    results = ellmer::type_array(
      description = "Places Search Results",
      required = TRUE,
      items = ellmer::type_object(
        .description = "Place Search Result",
        .required = TRUE,
        name = ellmer::type_string(description = "Place Name", required = TRUE),
        place_id = ellmer::type_string(description = "Google Maps Place ID", required = TRUE),
        formatted_address = ellmer::type_string(description = "Formatted Address", required = TRUE),
        geometry = ellmer::type_object(
          .description = "Geographic Coordinates",
          .required = TRUE,
          location = ellmer::type_object(
            .description = "Geographic Location",
            .required = TRUE,
            lat = ellmer::type_number(description = "Latitude", required = TRUE),
            lng = ellmer::type_number(description = "Longitude", required = TRUE)
          )
        ),
        rating = ellmer::type_number(description = "Place Rating", required = FALSE),
        types = ellmer::type_array(
          description = "Place Types",
          required = TRUE,
          items = ellmer::type_string(description = "Place Type", required = TRUE)
        )
      )
    )
  )
}

#' @rdname types
#' @export
#' @importFrom ellmer type_string type_object type_array type_number type_boolean
type_gmaps_place_details_response <- function() {
  ellmer::type_object(
    .description = "Google Maps Place Details API Response",
    .required = TRUE,
    status = ellmer::type_string(description = "API Response Status Message", required = TRUE),
    error_message = ellmer::type_string(description = "API Response Error Message", required = FALSE),
    result = ellmer::type_object(
      .description = "Place Details Result",
      .required = TRUE,
      name = ellmer::type_string(description = "Place Name", required = TRUE),
      place_id = ellmer::type_string(description = "Google Maps Place ID", required = TRUE),
      formatted_address = ellmer::type_string(description = "Formatted Address", required = TRUE),
      formatted_phone_number = ellmer::type_string(description = "Formatted Phone Number", required = FALSE),
      website = ellmer::type_string(description = "Website URL", required = FALSE),
      rating = ellmer::type_number(description = "Place Rating", required = FALSE),
      reviews = ellmer::type_array(
        description = "Place Reviews",
        required = FALSE,
        items = ellmer::type_object(
          .description = "Review",
          .required = TRUE,
          author_name = ellmer::type_string(description = "Author Name", required = TRUE),
          rating = ellmer::type_number(description = "Review Rating", required = TRUE),
          text = ellmer::type_string(description = "Review Text", required = TRUE),
          time = ellmer::type_number(description = "Review Timestamp", required = TRUE)
        )
      ),
      opening_hours = ellmer::type_object(
        .description = "Opening Hours",
        .required = FALSE,
        weekday_text = ellmer::type_array(
          description = "Weekday Text",
          required = TRUE,
          items = ellmer::type_string(description = "Day Hours Text", required = TRUE)
        ),
        open_now = ellmer::type_boolean(description = "Currently Open Status", required = TRUE)
      ),
      geometry = ellmer::type_object(
        .description = "Geographic Coordinates",
        .required = TRUE,
        location = ellmer::type_object(
          .description = "Geographic Location",
          .required = TRUE,
          lat = ellmer::type_number(description = "Latitude", required = TRUE),
          lng = ellmer::type_number(description = "Longitude", required = TRUE)
        )
      )
    )
  )
}

#' @rdname types
#' @export
#' @importFrom ellmer type_string type_object type_array type_number type_boolean
type_dataset_docs <- function() {

  ellmer::type_object(
    .description = "A roxygen2 skeleton for a dataset",
    .required = TRUE,
    title = ellmer::type_string(description = "Title of the dataset", required = TRUE),
    description = ellmer::type_string(description = "Description of the dataset", required = TRUE),
    format = ellmer::type_string(description = "Format of the dataset", required = TRUE),
    source = ellmer::type_string(description = "Source of the dataset", required = FALSE),
    url = ellmer::type_string(description = "URL of the dataset", required = FALSE),
    column_docs = ellmer::type_array(
      description = "Column documentation",
      required = TRUE,
      items = ellmer::type_object(
        .description = "Column documentation",
        .required = TRUE,
        name = ellmer::type_string(description = "Name of the column", required = TRUE),
        type = ellmer::type_string(description = "Type of the column", required = TRUE),
        description = ellmer::type_string(description = "Description of the column", required = TRUE)
      )
    ),
    examples = ellmer::type_array(
      description = "Examples of the dataset",
      required = FALSE,
      items = ellmer::type_string(description = "Example of the dataset", required = TRUE)
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
