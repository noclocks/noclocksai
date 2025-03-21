
#  ------------------------------------------------------------------------
#
# Title : Mermaid Diagrams
#    By : Jimmy Briggs
#  Date : 2025-03-14
#
#  ------------------------------------------------------------------------

#' Generate Mermaid Diagrams
#'
#' @description
#' Generate a mermaid diagram using the dedicated [mermaid_agent()] based on a prompt or code.
#'
#' @param chat_agent An optional chat agent object. If not provided, a default agent will be created.
#' @param prompt A prompt to generate the diagram. If not provided, a default prompt will be used.
#' @param ... Additional arguments passed to [prompt_mermaid_user()]. (e.g. `context`, `code`, `chart_type`, `chart_styles`).
#'
#' @returns
#' A character string containing the mermaid code block.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # generate a diagram based off of code
#' example <- "
#'   starwars |>
#'     group_by(species) |>
#'     summarise(
#'       n = n(),
#'       mass = mean(mass, na.rm = TRUE)
#'     ) |>
#'     filter(
#'       n > 1,
#'       mass > 50
#'     )
#' "
#' create_mermaid_diagram(code = example)
#'
#' # generate a diagram based off of a prompt
#' prompt <- prompt_mermaid_user("Create a flowchart representing the process of photosynthesis.")
#' create_mermaid_diagram(prompt = prompt)
#'
#' # specify chart type and styles
#' create_mermaid_diagram(prompt = prompt, chart_type = "flowchart", chart_styles = "Make the chart colorful.")
#' }
create_mermaid_diagram <- function(
  chat_agent = NULL,
  prompt = NULL,
  ...
) {

  # chat_agent
  if (is.null(chat_agent)) chat_agent <- mermaid_agent()
  check_chat(chat_agent)

  # prompt
  if (is.null(prompt)) prompt <- prompt_mermaid_user(...)

  # response
  resp <- chat_agent$chat(prompt)

  # code
  mermaid_code <- extract_code(resp, lang = "mermaid")

  # print
  cat(mermaid_code)

  # return
  return(mermaid_code)

}
