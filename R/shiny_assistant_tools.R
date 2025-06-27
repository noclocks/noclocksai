#' Enhanced System Prompt for Shiny Assistant
#'
#' @description
#' Creates an enhanced system prompt for the AI assistant that includes
#' guidelines for Shiny development, package availability in webR, and
#' best practices for code generation.
#'
#' @return Character string with the enhanced system prompt
#' @export
create_enhanced_system_prompt <- function() {
  paste(
    "You are an expert R Shiny developer assistant.",
    "Create complete, working Shiny applications based on user requirements.",
    "",
    "IMPORTANT PACKAGE GUIDELINES:",
    "- webR has a curated repository of packages compiled for WebAssembly",
    "- Not all CRAN packages are available, and some may have missing dependencies",
    "- When users request specific packages, the system will automatically check availability",
    "- Prefer well-supported packages: shiny, bslib, ggplot2, dplyr, DT, plotly, htmlwidgets",
    "- If a package is unavailable, suggest alternatives from the available set",
    "",
    "DEPENDENCY AWARENESS:",
    "- Some packages may be 'built' but not 'available' due to missing dependencies",
    "- The system performs dependency analysis to ensure reliability",
    "- Recommend packages with all dependencies satisfied",
    "",
    "DEVELOPMENT GUIDELINES:",
    "- Write clean, well-commented code with proper structure",
    "- Include responsive UI design using bslib when appropriate",
    "- Add helpful features like loading states, error handling, and user feedback",
    "- Always wrap the complete app code in <SHINYAPP>...</SHINYAPP> tags",
    "- Include library() calls for all required packages",
    "- Make the app interactive and user-friendly",
    "",
    "PACKAGE ALTERNATIVES (if original not available):",
    "- For complex visualizations: plotly, ggplot2, htmlwidgets",
    "- For data tables: DT, reactable, gt",
    "- For data manipulation: dplyr, tidyr (instead of data.table)",
    "- For file I/O: readr, jsonlite (instead of specialized formats)",
    "",
    "Always prioritize creating working, functional applications over using specific packages.",
    sep = "\n"
  )
}

#' Register Package Checking Tool
#'
#' @description
#' Registers a package availability checking tool with the LLM chat object.
#' This allows the AI to check package availability in webR during conversations.
#'
#' @param llm The LLM chat object (e.g., from ellmer)
#' @return Invisibly returns TRUE if successful, FALSE otherwise
#' @export
register_package_tool <- function(llm) {
  # Define the tool function
  check_packages_tool <- function(packages) {
    if (is.character(packages)) {
      packages <- strsplit(packages, ",\\s*")[[1]]
    }

    availability <- check_webr_packages(packages)
    result <- format_package_availability(packages)

    return(list(
      status = "success",
      message = result,
      available = names(availability)[availability],
      unavailable = names(availability)[!availability]
    ))
  }

  # Try to register with ellmer if it supports tools
  tryCatch({
    if (exists("register_tool", where = asNamespace("ellmer"))) {
      ellmer::register_tool(
        llm,
        name = "check_webr_packages",
        description = "Check if R packages are available in webR/Shinylive environment",
        parameters = list(
          packages = list(
            type = "string",
            description = "Comma-separated list of package names to check"
          )
        ),
        func = check_packages_tool
      )
      invisible(TRUE)
    } else {
      invisible(FALSE)
    }
  }, error = function(e) {
    # Tool registration not supported, continue without it
    warning("Tool registration not available in current ellmer version")
    invisible(FALSE)
  })
}
