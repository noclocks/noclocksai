% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/langfuse.R
\name{lf_get_prompt}
\alias{lf_get_prompt}
\title{Get a Prompt from Langfuse}
\usage{
lf_get_prompt(prompt_name, version = NULL, label = NULL, langfuse_client)
}
\arguments{
\item{prompt_name}{Name of the prompt to retrieve}

\item{version}{Specific version number to retrieve (if NULL, latest version will be fetched)}

\item{label}{Label of the prompt to retrieve (optional)}

\item{langfuse_client}{Langfuse client configuration from \code{lf_client()}}
}
\value{
Prompt object if successful, NULL otherwise
}
\description{
Retrieves a prompt template from Langfuse.
}
\examples{
\dontrun{
# Get the latest version of a prompt
prompt <- lf_get_prompt(
  prompt_name = "r_tutorial_chat",
  langfuse_client = lf_client
)

# Get a specific version of a prompt
prompt <- lf_get_prompt(
  prompt_name = "r_tutorial_chat",
  version = 2,
  langfuse_client = lf_client
)

# Get a prompt with a specific label
prompt <- lf_get_prompt(
  prompt_name = "r_tutorial_chat",
  label = "development",
  langfuse_client = lf_client
)
}
}
