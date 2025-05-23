% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cache.R
\name{cache}
\alias{cache}
\alias{write_cache}
\alias{read_cache}
\title{Caching Utility Functions}
\usage{
write_cache(obj, name = NULL, path = "cache", overwrite = FALSE, ...)

read_cache(name, path = "cache", ...)
}
\arguments{
\item{obj}{The object to be cached.}

\item{name}{The name of the object to be cached. If \code{NULL}, the name of the object in the environment will be used.}

\item{path}{The directory where the object will be cached. Default is \code{"cache"}.}

\item{overwrite}{If \code{TRUE}, overwrite the existing file if it exists. Default is \code{FALSE}.}

\item{...}{Additional arguments passed to the \code{qs2} functions.}
}
\value{
\itemize{
\item \code{write_cache()}: Invisible object.
\item \code{read_cache()}: Invisible path to the cached file.
}
}
\description{
These functions provide a simple caching mechanism for storing and retrieving objects to and from disk.
\itemize{
\item \code{write_cache()}: Save an object to disk using the \code{qs} format.
\item \code{read_cache()}: Read an object from disk using the \code{qs} format.
}
}
\seealso{
\code{\link[qs2:qs_read]{qs2::qs_read()}} and \code{\link[qs2:qs_save]{qs2::qs_save()}}
}
