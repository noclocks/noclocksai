% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{get_regex_code_pattern}
\alias{get_regex_code_pattern}
\title{Get Regex Code Pattern}
\usage{
get_regex_code_pattern(lang = NULL)
}
\arguments{
\item{lang}{The language of the code block to extract. If left \code{NULL}, the pattern will match any language
using a wildcard \verb{.*?} to match the language name.}
}
\value{
A regular expression pattern for extracting code blocks from a markdown string.
}
\description{
Get a regular expression pattern for extracting code blocks from a markdown string.

For example, to extract R code from a string, you need a pattern to match the following:

\if{html}{\out{<div class="sourceCode">}}\preformatted{```R
# some R code
```
}\if{html}{\out{</div>}}

This function returns a pattern that can be used to extract the code block from the string.

In the above example with R code the pattern would be: \verb{(?s)(?<=```(r|R)\\n).*?(?=```)}.
}
\examples{
examples/ex_get_regex_code_pattern.R
}
