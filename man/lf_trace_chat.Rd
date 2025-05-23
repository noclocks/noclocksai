% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/langfuse.R
\name{lf_trace_chat}
\alias{lf_trace_chat}
\title{Trace an Ellmer Chat Interaction}
\usage{
lf_trace_chat(chat, message, langfuse_client, user_id = NULL, metadata = NULL)
}
\arguments{
\item{chat}{An ellmer chat object}

\item{message}{User message}

\item{langfuse_client}{Langfuse client configuration from \code{lf_client()}}

\item{user_id}{Optional user ID}

\item{metadata}{Optional metadata}
}
\value{
The chat response with trace_id attribute
}
\description{
Sends a message to an ellmer chat and tracks the interaction with Langfuse.
}
\examples{
\dontrun{
# Create a langfuse client
lf_client <- lf_client()

# Create a chat
chat <- ellmer::chat_openai(model = "gpt-4")

# Trace a chat interaction
response <- lf_trace_chat(
  chat = chat,
  message = "Tell me about R programming",
  langfuse_client = lf_client
)
}
}
