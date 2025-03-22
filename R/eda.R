# EDA -------------------------------------------------------------------------------------------------------------

detect_anomalies <- function(data, column_name = NULL) {

  check_tibble(data)

  # Check if column_name is provided
  if (is.null(column_name)) {
    # Run anomaly detection on all numeric columns
    results <- data |>
      dplyr::select(tidyselect::where(is.numeric)) |>
      purrr::map(~ {
        iqr <- stats::IQR(.x, na.rm = TRUE)
        q3 <- stats::quantile(.x, 0.75, na.rm = TRUE)
        outliers <- which(.x > q3 + (iqr * 1.5))
        list(
          outliers = outliers,
          values = .x[outliers],
          severity = length(outliers) / length(.x)
        )
      }) |>
      purrr::keep(~ length(.x$outliers) > 0)
    return(results)
  } else {

    check_col_names(data, column_name)
    values <- data[[column_name]]
    if (!is.numeric(values)) {
      return(paste("Column", column_name, "is not numeric"))
    }
    # Simple IQR-based outlier detection
    iqr <- stats::IQR(values, na.rm = TRUE)
    q3 <- stats::quantile(values, 0.75, na.rm = TRUE)
    outliers <- which(values > q3 + (iqr * 1.5))
    return(
      list(
        outliers = outliers,
        values = values[outliers],
        severity = length(outliers) / length(values)
      )
    )
  }
}

correlate_with_anomalies <- function(data, column_name, anomaly_indices) {

  check_tibble(data)
  check_col_names(data, column_name)

  # Check correlations with other variables
  correlations <- data |>
    dplyr::select(tidyselect::where(is.numeric)) |>
    purrr::map_dbl(~ stats::cor(.x, data[[column_name]], use = "complete.obs"))

  # Compare distributions
  normal_indices <- setdiff(1:nrow(data), anomaly_indices)

  comparison <- data |>
    dplyr::select(tidyselect::where(is.numeric)) |>
    purrr::map(~ {
      if (length(anomaly_indices) > 0) {
        list(
          anomaly_mean = mean(.x[anomaly_indices], na.rm = TRUE),
          normal_mean = mean(.x[normal_indices], na.rm = TRUE),
          diff_percent = (mean(.x[anomaly_indices], na.rm = TRUE) /
                            mean(.x[normal_indices], na.rm = TRUE) - 1) * 100
        )
      } else {
        list(
          anomaly_mean = NA,
          normal_mean = mean(.x, na.rm = TRUE),
          diff_percent = NA
        )
      }
    })

  return(
    list(
      correlations = sort(correlations, decreasing = TRUE),
      comparison = comparison
    )
  )
}
