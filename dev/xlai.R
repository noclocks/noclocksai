


#' Detect data ranges in Excel sheets
#'
#' @param metadata Excel cell metadata
#' @return List of detected data ranges
#' @export
xl_detect_data_ranges <- function(metadata) {

  sheets <- unique(metadata$sheet)

  results <- map(sheets, function(sheet_name) {
    sheet_data <- metadata |> filter(sheet == sheet_name)

    # Find potential headers (rows with multiple formatted cells)
    potential_headers <- sheet_data |>
      group_by(row) |>
      summarize(
        formatted_cells = sum(!is.na(local_format_id)),
        distinct_formats = n_distinct(local_format_id, na.rm = TRUE)
      ) |>
      filter(formatted_cells > 3, distinct_formats >= 2) |>
      arrange(row) |>
      pull(row)

    # Find data regions (dense regions of cells below headers)
    data_regions <- map(potential_headers, function(header_row) {
      # Get column range
      cols <- sheet_data |>
        filter(row == header_row, !is.na(character)) |>
        pull(col)

      if (length(cols) < 2) return(NULL)

      min_col <- min(cols)
      max_col <- max(cols)

      # Find where data ends
      data_rows <- sheet_data |>
        filter(col >= min_col, col <= max_col, row > header_row) |>
        group_by(row) |>
        summarize(filled = sum(!is.na(character) | !is.na(numeric))) |>
        filter(filled > 0) |>
        pull(row)

      if (length(data_rows) == 0) return(NULL)

      max_row <- max(data_rows)

      # Return as cellranger range
      list(
        header_row = header_row,
        range = cellranger::cell_limits(
          ul = c(header_row, min_col),
          lr = c(max_row, max_col)
        ),
        range_string = cellranger::cell_addr(header_row, min_col,
                                             max_row, max_col,
                                             strict = FALSE)
      )
    }) |> compact()

    list(sheet = sheet_name, regions = data_regions)
  })

  return(results)
}


tool_xl_detect_data_ranges <- function() {

  ellmer::tool(
    .fun =
  )

}

ai_analyze_xl <- function(xl_file) {

  chat <- ellmer::chat_openai(
    system_prompt = "You are an expert Excel data analyzer. Your task is to examine Excel metadata and provide structured insights about the data organization."
  )

  tryCatch({

    metadata <- xl_get_metadata(xl_file)



  })

}
