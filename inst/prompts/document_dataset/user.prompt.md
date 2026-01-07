<instructions>
Your task is to generate valid roxygen2 documentation for a provided R dataset.
</instructions>
<data>
Here is information pertaining to the dataset:
Dimensions: {{nrow(data)}} rows x {{ncol(data)}} columns
Column names: {{paste(colnames(data), collapse = ", ")}}
Data types: {{paste(sapply(data, class), collapse = ", ")}}
Summary:
{{paste(capture.output(skimr::skim(data)), collapse = "\n")}}
</data>
<output>
Generate comprehensive roxygen2 documentation for the provided dataset.
</output>
<example>
Below is an example using the mtcars data:
```R
#' mtcars dataset
#'
#' @description
#' The `mtcars` dataset contains information about various car models and their specifications.
#'
#' @source
#' The dataset is extracted from the 1974 Motor Trend US magazine.
#'
#' @format A data.frame with 32 rows and 11 columns:
#' \describe{
#'   \item{mpg}{Miles per gallon}
#'   \item{cyl}{Number of cylinders}
#'   \item{disp}{Displacement (cu.in.)}
#'   \item{hp}{Gross horsepower}
#'   \item{drat}{Rear axle ratio}
#'   \item{wt}{Weight (1000 lbs)}
#'   \item{qsec}{1/4 mile time}
#'   \item{vs}{Engine type (0 = V/S, 1 = straight)}
#'   \item{am}{Transmission (0 = automatic, 1 = manual)}
#'   \item{gear}{Number of forward gears}
#'   \item{carb}{Number of carburetors}
#' }
"mtcars"
```
</example>
