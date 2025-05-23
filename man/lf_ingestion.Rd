% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/langfuse.R
\name{lf_ingestion}
\alias{lf_ingestion}
\title{Send Data to Langfuse Ingestion Endpoint}
\usage{
lf_ingestion(batch, client)
}
\arguments{
\item{batch}{The batch data to send as a list}

\item{client}{A Langfuse client configuration created with \code{lf_client()}}
}
\value{
The response from Langfuse on success, FALSE on failure
}
\description{
This function sends data to the Langfuse \verb{/ingestion} endpoint.
}
