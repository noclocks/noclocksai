
#  ------------------------------------------------------------------------
#
# Title : Google Maps API Functions
#    By : Jimmy Briggs
#  Date : 2025-02-25
#
#  ------------------------------------------------------------------------

# geocode ---------------------------------------------------------------------------------------------------------

#' Geocode Address
#'
#' @description
#' Geocode an address using the Google Maps Geocoding API.
#'
#' @param address A character string representing the address to geocode.
#' @param api_key A character string representing the Google Maps API key.
#'   Will default to the result from [get_gmaps_api_key()].
#'
#' @returns
#' A list containing the following elements:
#'
#' - `status`: A character string indicating the status of the API request.
#' - `formatted_address`: A character string representing the formatted address.
#' - `place_id`: A character string representing the place ID.
#' - `place_types`: A character string representing the place types.
#' - `latitude`: A numeric value representing the latitude.
#' - `longitude`: A numeric value representing the longitude.
#'
#' @export
#'
#' @examples examples/ex_gmaps_geocode_address.R
#'
#' @importFrom googleway google_geocode
#' @importFrom purrr pluck
gmaps_geocode_address <- function(address, api_key = get_gmaps_api_key()) {

  cli::cli_alert_info("Geocoding address: {.field {address}}.")

  googleway::set_key(api_key)

  tryCatch({
    resp <- googleway::google_geocode(address = address)
    # gmaps_check_response(resp)
    results <- purrr::pluck(resp, "results")
    formatted_address <- purrr::pluck(results, "formatted_address")
    place_id <- purrr::pluck(results, "place_id")
    place_types <- purrr::pluck(results, "types", 1)
    location <- purrr::pluck(results, "geometry", "location")
    latitude <- purrr::pluck(location, "lat")
    longitude <- purrr::pluck(location, "lng")

    return(
      list(
        status = "OK",
        formatted_address = formatted_address,
        place_id = place_id,
        place_types = place_types,
        latitude = latitude,
        longitude = longitude
      )
    )
  }, error = function(e) {
    return(
      list(
        status = "ERROR",
        error = as.character(e$message),
        formatted_address = NA,
        place_id = NA,
        place_types = NA,
        latitude = NA,
        longitude = NA
      )
    )
  })

}


#' Google Maps Places Search
#'
#' @description
#' Search for a company using the Google Maps Places API.
#'
#' @param company_name Character string representing the name of the company.
#' @param company_address Character string representing the address of the company.
#' @param company_phone Character string representing the phone number of the company.
#' @param api_key A character string representing the Google Maps API key.
#'   Defaults to the result from [get_gmaps_api_key()].
#'
#' @returns
#' A list containing the following elements:
#'
#' - `website`: A character string representing the website URL.
#' - `domain`: A character string representing the domain extracted from the website URL.
#' - `display_name`: A character string representing the display name of the place.
#' - `formatted_address`: A character string representing the formatted address of the place.
#' - `phone`: A character string representing the phone number of the place.
#' - `business_status`: A character string representing the business status of the place.
#' - `business_type`: A character string representing the business type of the place.
#' - `latitude`: A numeric value representing the latitude of the place.
#' - `longitude`: A numeric value representing the longitude of the place.
#' - `maps_url`: A character string representing the Google Maps URL of the place.
#' - `place_id`: A character string representing the place ID of the place.
#'
#' @export
#'
#' @importFrom httr2 request req_method req_headers req_body_json req_perform resp_check_status resp_body_json
#' @importFrom purrr pluck
#' @importFrom snakecase to_title_case
#' @importFrom cli cli_alert_info cli_alert_danger
#'
#' @examples
#' \dontrun{
#'   gmaps_places_search("Google", "1600 Amphitheatre Parkway, Mountain View, CA")
#' }
gmaps_places_search <- function(
    company_name,
    company_address,
    company_phone = NULL,
    api_key = get_gmaps_api_key()
) {

  cli::cli_alert_info("Searching for company: {.field {company_name}} at address: {.field {company_address}}.")

  base_url <- "https://places.googleapis.com/v1/places:searchText"
  req_query_txt <- paste(company_name, company_address, sep = " ")
  req_fields <- paste(
    "places.id",
    "places.displayName,",
    "places.formattedAddress,",
    "places.websiteUri,",
    "places.nationalPhoneNumber,",
    "places.internationalPhoneNumber,",
    "places.businessStatus,",
    "places.types,",
    "places.primaryTypeDisplayName,",
    "places.shortFormattedAddress,",
    "places.location",
    collapse = ","
  )

  req <- httr2::request(base_url) |>
    httr2::req_method("POST") |>
    httr2::req_headers(
      `Content-Type` = "application/json",
      `X-Goog-Api-Key` = api_key,
      `X-Goog-FieldMask` = req_fields #"*" #req_fields
    ) |>
    httr2::req_body_json(
      data = list(
        textQuery = req_query_txt
      )
    )

  tryCatch({
    resp <- httr2::req_perform(req)
    httr2::resp_check_status(resp)
    resp_json <- httr2::resp_body_json(resp)
    resp_places <- purrr::pluck(resp_json, "places")

    resp_len <- length(resp_places)
    cli::cli_alert_info(
      "Google Maps Places API returned {.field {resp_len}} results for the search query."
    )

    if (resp_len == 0L) {
      cli::cli_alert_danger(
        "No places found for the search query. Please check the company name and address."
      )
      return(
        list(
          website = NA_character_,
          domain = NA_character_,
          display_name = NA_character_,
          formatted_address = NA_character_,
          phone = NA_character_,
          business_status = NA_character_,
          business_type = NA_character_,
          latitude = NA_real_,
          longitude = NA_real_,
          maps_url = NA_character_,
          place_id = NA_character_
        )
      )
    }

    if (resp_len == 1L) {
      resp_place <- resp_places[[1]]
      return(gmaps_extract_place_info(resp_place))
    }

    # If multiple places are found, we need to determine the best match
    cli::cli_alert_info(
      "Multiple places found for the search query. Determining best match."
    )

    best_match <- gmaps_find_best_match(
      resp_places,
      company_name,
      company_address,
      company_phone
    )

    return(best_match)

  }, error = function(e) {
    cli::cli_alert_danger(
      c(
        "Failed to perform request to Google Maps Places API.\n",
        "Error: {e$message}"
      )
    )
    return(
      list(
        website = NA_character_,
        domain = NA_character_,
        display_name = NA_character_,
        formatted_address = NA_character_,
        phone = NA_character_,
        business_status = NA_character_,
        business_type = NA_character_,
        latitude = NA_real_,
        longitude = NA_real_,
        maps_url = NA_character_,
        place_id = NA_character_,
        error = as.character(e$message)
      )
    )
  })

}

#' Extract Place Information
#'
#' @description
#' This function extracts relevant information from a place object returned by the Google Maps Places API.
#'
#' @param place A list representing a place object returned by the Google Maps Places API.
#'
#' @returns
#' A list containing the following elements:
#'
#' - `display_name`: The display name of the place.
#' - `formatted_address`: The formatted address of the place.
#' - `phone`: The phone number of the place.
#' - `business_status`: The business status of the place.
#' - `business_primary_type`: The primary type of the business.
#' - `business_types`: A vector of business types associated with the place.
#' - `latitude`: The latitude of the place.
#' - `longitude`: The longitude of the place.
#' - `maps_url`: The Google Maps URL of the place.
#' - `place_id`: The unique identifier of the place.
#' - `website`: The website URL of the place.
#' - `domain`: The domain extracted from the website URL.
#'
#' @export
#'
#' @importFrom purrr pluck
#' @importFrom snakecase to_title_case
#' @importFrom cli cli_alert_warning cli_alert_success
gmaps_extract_place_info <- function(place) {

  hold <- list(
    display_name = purrr::pluck(place, "displayName", "text") %||% NA_character_,
    formatted_address = purrr::pluck(place, "formattedAddress") %||% NA_character_,
    phone = purrr::pluck(place, "nationalPhoneNumber") %||% NA_character_,
    business_status = purrr::pluck(place, "businessStatus") %||% NA_character_,
    business_primary_type = purrr::pluck(place, "primaryTypeDisplayName", "text") %||% NA_character_,
    business_types = purrr::pluck(place, "types") |> unlist() |> snakecase::to_title_case() %||% c(NA_character_),
    latitude = purrr::pluck(place, "location", "latitude") %||% NA_real_,
    longitude = purrr::pluck(place, "location", "longitude") %||% NA_real_,
    maps_url = purrr::pluck(place, "googleMapsUri") %||% NA_character_,
    place_id = purrr::pluck(place, "id") %||% NA_character_,
    website = purrr::pluck(place, "websiteUri") %||% NA_character_,
    domain = if (!is.null(purrr::pluck(place, "websiteUri"))) {
      get_domain_from_url(purrr::pluck(place, "websiteUri"))
    } else {
      NA_character_
    }
  )

  fields <- names(hold)
  missing_fields <- fields[is.na(hold)]
  if (length(missing_fields) > 0) {
    cli::cli_alert_warning(
      "The following fields are missing or not found: {.field {missing_fields}}."
    )
  } else {
    cli::cli_alert_success(
      "All fields successfully extracted from the place information."
    )
  }

  return(hold)

}

#' Determine the Best Match from Multiple Places
#'
#' @description
#' This function takes a list of places returned from the Google Maps Places API
#' and compares them to find the best match based on various criteria.
#'
#' @details
#' The function evaluates each place based on:
#'
#' - Type of place (e.g., real estate agency, property management company)
#' - String similarity of the company name
#' - String similarity of the address
#' - Phone number area code match
#' - Presence of a website
#' - Business status (operational or not)
#'
#' The function returns the place with the highest score, indicating the best match.
#'
#' @param places List of places returned from the Google Maps Places API.
#' @param company_name Character string representing the name of the company.
#' @param company_address Character string representing the address of the company.
#' @param company_phone Character string representing the phone number of the company.
#'
#' @returns
#' A list containing the following elements:
#'
#' - `display_name`: The display name of the place.
#' - `formatted_address`: The formatted address of the place.
#' - `phone`: The phone number of the place.
#' - `business_status`: The business status of the place.
#' - `business_primary_type`: The primary type of the business.
#' - `business_types`: A vector of business types associated with the place.
#' - `latitude`: The latitude of the place.
#' - `longitude`: The longitude of the place.
#' - `maps_url`: The Google Maps URL of the place.
#' - `place_id`: The unique identifier of the place.
#' - `website`: The website URL of the place.
#' - `domain`: The domain extracted from the website URL.
#'
#' @export
#'
#' @importFrom purrr pluck pluck_exists
#' @importFrom cli cli_alert_info cli_alert_danger
gmaps_find_best_match <- function(places, company_name, company_address, company_phone = NULL) {

  scores <- numeric(length(places))

  clean_company_name <- tolower(gsub("[[:punct:]]", "", company_name))
  clean_company_address <- tolower(gsub("[[:punct:]]", "", company_address))

  if (!is.null(company_phone)) {
    company_phone_area_code <- sub("^\\D*(\\d{3})\\D*.*$", "\\1", company_phone)
  } else {
    company_phone_area_code <- NULL
  }

  for (i in seq_along(places)) {

    browser()

    place <- places[[i]]
    score <- 0
    max_score <- 30

    real_estate_types <- c(
      "real_estate_agency",
      "property_management_company",
      "corporate_office",
      "real_estate_agent"
    )

    # check types
    if (purrr::pluck_exists(place, "types")) {
      types <- purrr::pluck(place, "types")
      for (type in types) {
        if (type %in% real_estate_types) {
          score <- score + 5
          break
        }
      }
    }

    # company name string similarity
    if (purrr::pluck_exists(place, "displayName", "text") && !is.null(purrr::pluck(place, "displayName", "text"))) {
      place_name <- tolower(gsub("[[:punct:]]", "", purrr::pluck(place, "displayName", "text")))
      name_similarity <- string_similarity(clean_company_name, place_name)
      score <- score + (name_similarity * 10)
    }

    # address string similarity
    if (purrr::pluck_exists(place, "formattedAddress") && !is.null(purrr::pluck(place, "formattedAddress"))) {
      place_address <- tolower(gsub("[[:punct:]]", "", purrr::pluck(place, "formattedAddress")))
      address_similarity <- string_similarity(clean_company_address, place_address)
      score <- score + (address_similarity * 8)
    }

    # phone number area code match
    if (!is.null(company_phone_area_code) && purrr::pluck_exists(place, "nationalPhoneNumber")) {
      place_phone_area_code <- sub("^\\D*(\\d{3})\\D*.*$", "\\1", purrr::pluck(place, "nationalPhoneNumber"))
      if (place_phone_area_code == company_phone_area_code) {
        score <- score + 3
      }
    }

    # website
    if (purrr::pluck_exists(place, "websiteUri") && !is.null(purrr::pluck(place, "websiteUri"))) {
      place_website <- purrr::pluck(place, "websiteUri")
      if (!is.na(place_website) && place_website != "") {
        score <- score + 2
      }
    }

    # business status
    if (purrr::pluck_exists(place, "businessStatus") && !is.null(purrr::pluck(place, "businessStatus"))) {
      place_business_status <- purrr::pluck(place, "businessStatus")
      if (place_business_status == "OPERATIONAL") {
        score <- score + 1
      }
    }

  }

  best_index <- which.max(scores)
  best_place <- places[[best_index]]

  match_quality <- scores[best_index] / max_score

  if (match_quality < 0.5) {
    cli::cli_alert_danger("Best match found, but match quality is low: {.field {match_quality}}.")
  } else {
    cli::cli_alert_info("Best match found with good quality: {.field {match_quality}}.")
  }

  # return extracted place info
  return(gmaps_extract_place_info(best_place))

}


