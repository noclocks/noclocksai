
#' Execute R Code
#'
#' @description
#' This function executes a given R code string and returns the result.
#'
#' @param code A character string containing the R code to execute.
#'
#' @returns
#' The result of the executed R code.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' execute_r_code("print('Hello, World!')")
#' }
#'
#' @importFrom cli cli_alert_success cli_alert_danger
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
