% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract.R
\name{write_code_to_file}
\alias{write_code_to_file}
\title{Write Extracted Code to a File}
\usage{
write_code_to_file(
  markdown_text,
  file,
  language = "R",
  format = TRUE,
  style = list()
)
}
\arguments{
\item{markdown_text}{The markdown text containing code blocks.}

\item{file}{The output file path.}

\item{language}{The language identifier to extract (default: "R").}

\item{format}{Whether to format the code (default: TRUE).}

\item{style}{A list of formatting options.}
}
\value{
Invisibly returns TRUE if successful, FALSE otherwise.
}
\description{
Extracts code blocks, formats them, and writes to a file.
}
