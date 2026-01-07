#' WebR Package Management Functions
#'
#' @description
#' Functions for checking package availability and managing dependencies
#' in the webR/Shinylive environment.
#'
#' @name webr_packages
NULL

# Cache for package list to avoid repeated downloads
.webr_package_cache <- new.env()

#' Get WebR Package List
#'
#' @description
#' Retrieves the list of available packages in the webR repository.
#'
#' @param force_refresh Logical. Whether to force refresh the cache (default: FALSE)
#' @return Character vector of available package names
#' @export
get_webr_package_list <- function(force_refresh = FALSE) {
  if (!force_refresh && exists("package_list", envir = .webr_package_cache)) {
    return(.webr_package_cache$package_list)
  }

  # First try to load from local qs file (much faster)
  local_packages_file <- system.file("extdata", "PACKAGES.qs", package = "noclocksai")

  if (!force_refresh && file.exists(local_packages_file)) {
    tryCatch({
      available_packages <- qs2::qs_read(local_packages_file)

      if (is.data.frame(available_packages) && "Package" %in% colnames(available_packages)) {
        package_list <- available_packages$Package

        # Cache the result
        .webr_package_cache$package_list <- package_list
        .webr_package_cache$last_updated <- file.info(local_packages_file)$mtime
        .webr_package_cache$source <- "local_qs"

        return(package_list)
      }
    }, error = function(e) {
      message("Failed to load local package file: ", e$message)
    })
  }

  # Fallback to downloading from webR repository
  webr_packages_url <- "https://repo.r-wasm.org/bin/emscripten/contrib/4.4/PACKAGES.rds"

  tryCatch({
    temp_file <- tempfile(fileext = ".rds")
    download.file(webr_packages_url, temp_file, mode = "wb", quiet = TRUE)
    available_packages <- readRDS(temp_file) |>
      tibble::as_tibble()
    unlink(temp_file)

    if (is.data.frame(available_packages) && "Package" %in% colnames(available_packages)) {
      package_list <- available_packages$Package
    } else {
      package_list <- rownames(available_packages)
    }

    # Cache the result
    .webr_package_cache$package_list <- package_list
    .webr_package_cache$last_updated <- Sys.time()
    .webr_package_cache$source <- "downloaded"

    return(package_list)

  }, error = function(e) {
    message("Failed to fetch webR package list: ", e$message)

    # Extended fallback list based on common webR packages
    fallback_packages <- c(
      "shiny", "bslib", "htmlwidgets", "DT", "plotly", "ggplot2",
      "dplyr", "tidyr", "readr", "stringr", "lubridate", "forcats",
      "leaflet", "reactable", "gt", "apexcharter", "highcharter",
      "jsonlite", "httr", "curl", "xml2", "rvest", "knitr", "rmarkdown",
      "scales", "viridis", "RColorBrewer", "gridExtra", "patchwork",
      "crosstalk", "sparkline", "flexdashboard", "thematic", "htmltools",
      "mime", "httpuv", "later", "promises", "magrittr", "tibble",
      "purrr", "glue", "lifecycle", "rlang", "vctrs", "cli", "crayon"
    )

    .webr_package_cache$package_list <- fallback_packages
    .webr_package_cache$source <- "fallback"
    return(fallback_packages)
  })
}

#' Check WebR Package Availability
#'
#' @description
#' Checks if specified packages are available in the webR repository.
#'
#' @param packages Character vector of package names to check
#' @return Named logical vector indicating availability
#' @export
check_webr_packages <- function(packages) {
  # Get the cached package list (downloads if not cached)
  available_names <- get_webr_package_list()

  # Check which requested packages are available
  result <- packages %in% available_names
  names(result) <- packages

  return(result)
}

#' Format Package Availability Message
#'
#' @description
#' Creates a formatted message about package availability for display.
#'
#' @param packages Character vector of package names
#' @return Character string with availability information
#' @export
format_package_availability <- function(packages) {
  availability <- check_webr_packages(packages)

  available <- names(availability)[availability]
  unavailable <- names(availability)[!availability]

  msg <- "Package availability in webR/Shinylive:\n"

  if (length(available) > 0) {
    msg <- paste0(msg, "✅ Available: ", paste(available, collapse = ", "), "\n")
  }

  if (length(unavailable) > 0) {
    msg <- paste0(msg, "❌ Not available: ", paste(unavailable, collapse = ", "), "\n")
    msg <- paste0(msg, "Consider alternatives or built-in packages for: ", paste(unavailable, collapse = ", "))
  }

  return(msg)
}

#' Extract Package Names from Text
#'
#' @description
#' Extracts package names from user input text using common patterns.
#'
#' @param text Character string containing user input
#' @return Character vector of potential package names
#' @export
extract_package_names <- function(text) {
  # Look for common patterns indicating package requests
  patterns <- c(
    "\\buse\\s+(\\w+)\\s+package",
    "\\bwith\\s+(\\w+)\\s+package",
    "\\blibrary\\((\\w+)\\)",
    "\\brequire\\((\\w+)\\)",
    "\\bpackage\\s+(\\w+)",
    "\\b(ggplot2|plotly|DT|leaflet|shiny|bslib|dplyr|tidyr|apexcharter|highcharter|reactable|gt)\\b"
  )

  matches <- c()
  for (pattern in patterns) {
    found <- stringr::str_extract_all(text, pattern, simplify = TRUE)
    if (length(found) > 0) {
      # Extract just the package name from the match
      pkg_names <- stringr::str_extract(found, "\\w+$")
      matches <- c(matches, pkg_names[!is.na(pkg_names)])
    }
  }

  # Remove duplicates and common non-package words
  stopwords <- c("use", "with", "package", "library", "require", "the", "and", "or")
  matches <- unique(matches[!matches %in% stopwords])

  return(matches)
}

#' Suggest Package Alternatives
#'
#' @description
#' Suggests alternative packages available in webR for unavailable packages.
#'
#' @param package_name Character string of unavailable package name
#' @return Character vector of alternative package suggestions
#' @export
suggest_package_alternatives <- function(package_name) {
  # Common package alternatives for webR
  alternatives_map <- list(
    # Visualization
    "ggvis" = c("plotly", "ggplot2"),
    "rgl" = c("plotly", "htmlwidgets"),
    "lattice" = c("ggplot2", "plotly"),

    # Data manipulation
    "data.table" = c("dplyr", "tidyr"),
    "reshape2" = c("tidyr", "dplyr"),

    # Statistical modeling
    "caret" = c("randomForest", "glmnet"),
    "e1071" = c("randomForest", "glmnet"),

    # Web scraping
    "RSelenium" = c("rvest", "httr"),
    "robotstxt" = c("httr", "curl"),

    # Database connections
    "RPostgreSQL" = c("DBI", "jsonlite"),
    "RSQLite" = c("DBI", "jsonlite"),

    # File I/O
    "openxlsx" = c("readr", "jsonlite"),
    "writexl" = c("jsonlite", "readr")
  )

  return(alternatives_map[[package_name]] %||% character(0))
}
