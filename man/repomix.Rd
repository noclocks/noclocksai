% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/repomix.R
\name{repomix}
\alias{repomix}
\title{Repomix}
\usage{
repomix(path = ".", repo = NULL, output = NULL, ...)
}
\arguments{
\item{path}{The path to the directory containing the codebase. Default is the current working directory.}

\item{repo}{The remote repository URL to clone. Default is NULL. If provided, ignores the \code{path} argument.}

\item{output}{The output file name. Default is NULL. If provided, the output file will be saved with this name.}

\item{...}{Additional arguments passed to the \verb{npx repomix} function as arguments.}
}
\value{
The output of the \verb{npx repomix} command.
}
\description{
Repomix is a command-line tool for collecting an entire codebase into a single file for
use with AI Chat Agents. It can be used to extract code blocks from various file formats
and merge them into a single file.
}
