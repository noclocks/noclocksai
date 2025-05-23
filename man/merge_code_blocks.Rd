% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract.R
\name{merge_code_blocks}
\alias{merge_code_blocks}
\title{Merge Code Blocks into a Single String}
\usage{
merge_code_blocks(markdown_text, language = "R", separator = `\\n\\n`)
}
\arguments{
\item{markdown_text}{The markdown text containing code blocks.}

\item{language}{The language identifier to extract (default: "R").}

\item{separator}{String used to join blocks (default: \verb{\\n\\n}).}
}
\value{
A single string containing all merged code blocks.
}
\description{
This function extracts code blocks of a specified language from markdown text
and merges them into a single string.
}
