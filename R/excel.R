
#  ------------------------------------------------------------------------
#
# Title : Excel
#    By : Jimmy Briggs
#  Date : 2025-03-29
#
#  ------------------------------------------------------------------------

#' Get Excel Metadata
#'
#' @description
#' Get metadata from an Excel workbook using the [tidyxl] package.
#'
#' @param xl_file Path to an Excel workbook.
#' @param sheets A character vector of sheet names to include in the metadata. If `NULL`, all sheets will be included.
#'
#' @returns
#' A list containing the following elements:
#'
#' - `file_path`: The normalized path to the Excel workbook.
#' - `file_info`: A list of file information.
#' - `xl_sheets`: A character vector of sheet names.
#' - `xl_cells`: A data frame of cell information.
#' - `xl_formats`: A data frame of cell formats.
#' - `xl_named_ranges`: A data frame of named ranges.
#'
#' @export
#'
#' @importFrom fs file_info
#' @importFrom tidyxl xlsx_sheet_names xlsx_cells xlsx_formats xlsx_names
xl_get_metadata <- function(xl_file, sheets = NULL) {

  check_path(xl_file)

  xl_file_info <- fs::file_info(xl_file)
  xl_sheets <- tidyxl::xlsx_sheet_names(xl_file)
  if (!is.null(sheets)) xl_sheets <- intersect(xl_sheets, sheets)
  xl_cells <- tidyxl::xlsx_cells(xl_file, sheets = xl_sheets)
  xl_formats <- tidyxl::xlsx_formats(xl_file)
  xl_named_ranges <- tidyxl::xlsx_names(xl_file)

  list(
    file_path = normalizePath(xl_file),
    file_info = xl_file_info,
    xl_sheets = xl_sheets,
    xl_cells = xl_cells,
    xl_formats = xl_formats,
    xl_named_ranges = xl_named_ranges
  )
}



xl_get_sheets <- function(xl_file, ignore = NULL) {

  check_file(xl_file, exts = c("xlsx", "xlsm"))

}

