
#  ------------------------------------------------------------------------
#
# Title : FireCrawl API Wrappers
#    By : Jimmy Briggs
#  Date : 2025-03-20
#
#  ------------------------------------------------------------------------

#' FireCrawl API
#'
#' @name firecrawl
#'
#' @description
#' The FireCrawl API provides a way to scrape and crawl web pages.
#'
#' - `firecrawl_request()`: Create a request object for the FireCrawl API.
#' - `firecrawl_scrape_url()`: Scrape a URL using the FireCrawl API.
#' - `firecrawl_crawl_url()`: Crawl a URL using the FireCrawl API.
#'
#' @param endpoint The API endpoint to use. Default is `NULL`.
#' @param api_key The API key to use. Defaults to the value returned by `get_api_key("firecrawl")`.
#' @param url The URL to scrape or crawl.
#' @param ... Additional arguments to pass to the API.
#'
#' @returns
#' - `firecrawl_request()`: A request object for the FireCrawl API.
#' - `firecrawl_scrape_url()`: The scraped content in markdown format.
#' - `firecrawl_crawl_url()`: The response from the FireCrawl API.
NULL

#' @rdname firecrawl
#' @export
#' @importFrom httr2 req_auth_bearer_token req_headers req_method request req_url_path_append
firecrawl_request <- function(endpoint = NULL, api_key = get_api_key("firecrawl")) {

  base_url <- "https://api.firecrawl.dev/v1/"

  req <- httr2::request(base_url) |>
    httr2::req_method("POST") |>
    httr2::req_headers(
      "Content-Type" = "application/json"
    ) |>
    httr2::req_auth_bearer_token(api_key)

  if (is.null(endpoint)) return(req)

  req |>
    httr2::req_url_path_append(endpoint)

}

#' @rdname firecrawl
#' @export
#' @importFrom httr2 req_body_json req_perform resp_check_status resp_body_json
#' @importFrom purrr pluck
firecrawl_scrape_url <- function(url, api_key = get_api_key("firecrawl")) {

  req_body <- list(
    url = url,
    formats = list("markdown")
  )

  req <- firecrawl_request("scrape", api_key) |>
    httr2::req_body_json(req_body)

  resp <- httr2::req_perform(req)
  httr2::resp_check_status(resp)

  httr2::resp_body_json(resp) |>
    purrr::pluck("data", "markdown")

}

#' @rdname firecrawl
#' @export
#' @importFrom httr2 req_body_json req_perform resp_check_status resp_body_json
firecrawl_crawl_url <- function(url, ..., api_key = get_api_key("firecrawl")) {

  req_body <- list(
    url = url,
    maxDepth = 10L,
    ignoreSitemap = FALSE,
    ignoreQueryParameters = FALSE,
    limit = 10000,
    allowBackwardLinks = FALSE,
    allowExternalLinks = FALSE,
    scrapeOptions = list(
      blockAds = TRUE
    )
  )

  req <- firecrawl_request("crawl", api_key) |>
    httr2::req_body_json(req_body)

  resp <- httr2::req_perform(req)
  httr2::resp_check_status(resp)

  httr2::resp_body_json(resp)

}
