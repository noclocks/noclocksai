% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chats.R
\name{initialize_chat}
\alias{initialize_chat}
\title{Initialize AI Chat}
\usage{
initialize_chat(
  model = "gpt-4o",
  system_prompt = prompt_default_sys(),
  tools = NULL,
  temperature = 0,
  api_key = get_openai_api_key(),
  ...
)
}
\arguments{
\item{model}{The model to use for the chat. Default is \verb{gpt-4o}.}

\item{system_prompt}{The system prompt to use for the chat. Default is \code{prompt_default_sys()}.}

\item{tools}{A list of tools to register with the chat.}

\item{api_key}{The OpenAI API key to use for the chat. Default is \code{get_openai_api_key()}.}

\item{...}{Additional arguments to pass to \code{\link[ellmer:chat_openai]{ellmer::chat_openai()}}.}
}
\value{
An \link[ellmer:Chat]{ellmer::Chat} S7 object.
}
\description{
Initialize an AI chat via \code{\link[ellmer:chat_openai]{ellmer::chat_openai()}} and optionally register tools.
}
\examples{
\dontrun{
chat <- initialize_chat()
chat$chat("What is the meaning of life?")
}
}
\seealso{
\code{\link[ellmer:chat_openai]{ellmer::chat_openai()}}
}
