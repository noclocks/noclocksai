% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tools.R
\name{register_tool}
\alias{register_tool}
\alias{register_tools}
\title{Tool Registration}
\usage{
register_tool(chat, tool, use_cache = TRUE, cache = NULL)

register_tools(chat, tools)
}
\arguments{
\item{chat}{An \code{\link[ellmer:chat_openai]{ellmer::chat_openai()}} object.}

\item{tool}{An \code{\link[ellmer:tool]{ellmer::tool()}} object.}

\item{tools}{A list of \code{\link[ellmer:tool]{ellmer::tool()}} objects.}
}
\value{
While these functions are used for there side-effects (registering tools to the chat session), they do
invisibly return the chat object.
}
\description{
Register custom, function calling tools to the chat session.
\itemize{
\item \code{register_tool()}: Register a single tool.
\item \code{register_tools()}: Register multiple tools.
}
}
\examples{
\dontrun{
chat <- initialize_chat()
register_tool(chat, tool_gmaps_places_search())
register_tools(chat, list(tool_gmaps_geocode_address(), tool_hunter_get_email_address()))
}
}
