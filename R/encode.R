
#  ------------------------------------------------------------------------
#
# Title : Encoding
#    By : Jimmy Briggs
#  Date : 2025-03-13
#
#  ------------------------------------------------------------------------

#' Base64 Encoding & Decoding
#'
#' @name encode_base64
#'
#' @description
#' Functions for encoding and decoding data using Base64 encoding.
#'
#' @param data A character vector to encode or decode.
#'
#' @returns
#' - `encode_base64()`: A character vector of Base64 encoded data.
#' - `decode_base64()`: A character vector of decoded data.
#'
#' @export
NULL

#' @rdname encode_base64
#' @export
encode_base64 <- function(data) {
  base64enc::base64encode(data)
}

#' @rdname encode_base64
#' @export
decode_base64 <- function(data) {
  base64enc::base64decode(data)
}

#' Encode Data
#'
#' @name encode_data
#'
#' @description
#' Encode a data frame into a specified format (e.g., JSON, CSV, or text) with optional
#' truncation of rows to a specified maximum number.
#'
#' Its primary purpose is to provide a convenient way to encode data for use with
#' AI Chat Agents.
#'
#' @param data A data frame to encode.
#' @param method A character string specifying the encoding method. Options include "json", "csv", or "text".
#'   The default value is "json".
#' @param max_rows An integer specifying the maximum number of rows to include in the encoded output.
#'   If the number of rows in the data frame exceeds this value, the output will be truncated.
#'   The default value is `100`.
#' @param show_end An integer specifying the number of rows to show at the end of the encoded output.
#'   The default value is `10`.
#'
#' @returns
#' A character string representing the encoded data.
#'
#' @export
#'
#' @importFrom jsonlite toJSON
#' @importFrom readr write_csv
#' @importFrom stringr str_remove str_trim
#' @importFrom cli cli_alert_warning cli_alert_info
#'
#' @examples
#' encode_data(hud_markets, "json", max_rows = 10, show_end = 5) |> cat()
#' encode_data(hud_markets, "csv", max_rows = 10, show_end = 5) |> cat()
#' encode_data(hud_markets, "text", max_rows = 10, show_end = 5) |> cat()
encode_data <- function(data, method = c("json", "csv", "text"), max_rows = 100, show_end = 10) {

  check_tibble(data)

  if (nrow(data) == 0) {
    cli::cli_alert_warning("Provided {.arg data} is empty. Encoding empty data as text.")
    return(encode_data_text(data))
  }

  method <- match.arg(method)
  encoder <- switch(
    method,
    json = encode_data_json,
    csv = encode_data_csv,
    text = encode_data_text
  )

  if (method == "text" || (nrow(data) <= max_rows)) { return(encoder(data)) }

  head_rows <- data[1:max_rows, ]
  tail_rows <- data[(nrow(data) - show_end + 1):nrow(data), ]

  if (method == "json") {
    json_head <- encoder(head_rows, strip_brackets = TRUE)
    json_tail <- encoder(tail_rows, strip_brackets = TRUE)

    return(
      paste0(
        "[\n",
        paste0("  ", json_head),
        ",\n  // ...",
        nrow(data) - max_rows,
        " rows omitted... //\n",
        paste0("  ", json_tail),
        "\n]\n"
      )
    )
  }

  if (method == "csv") {
    csv_head <- encoder(head_rows)
    csv_tail <- encoder(tail_rows, colnames = FALSE)

    return(
      paste(
        collapse = "\n",
        c(
          csv_head,
          sprintf("... %d rows omitted ...", nrow(data) - max_rows),
          csv_tail,
          ""
        )
      )
    )
  }
}

#' @rdname encode_data
#' @export
#' @importFrom readr write_csv
encode_data_csv <- function(data, colnames = TRUE) {
  check_tibble(data)
  temp_file <- tempfile(fileext = ".csv")
  on.exit(unlink(temp_file))
  readr::write_csv(data, file = temp_file, col_names = colnames)
  paste(readLines(temp_file), collapse = "\n")
}

#' @rdname encode_data
#' @export
#' @importFrom jsonlite toJSON
encode_data_json <- function(data, strip_brackets = FALSE) {
  check_tibble(data)
  hold <- jsonlite::toJSON(data, dataframe = "rows", na = "string", pretty = TRUE, auto_unbox = TRUE)
  if (strip_brackets) { return(strip_json_brackets(hold)) }
  hold
}

#' @rdname encode_data
#' @export
encode_data_text <- function(data) {
  check_tibble(data)
  hold <- paste(collapse = "\n", capture.output(print(data)))
  lines <- strsplit(hold, "\n")[[1]]
  lines <- lines[!grepl("print", lines)]
  return(paste(lines, collapse = "\n"))
}

#' @keywords internal
#' @importFrom stringr str_remove str_trim
strip_json_brackets <- function(json) {
  json |> stringr::str_remove("^\\[") |> stringr::str_remove("\\]$") |> stringr::str_trim()
}


# expressions -----------------------------------------------------------------------------------------------------


