% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prompts.R
\name{prompts}
\alias{prompts}
\alias{prompt_default_sys}
\alias{prompt_r_sys}
\alias{prompt_r_user}
\alias{prompt_mermaid_sys}
\alias{prompt_mermaid_user}
\alias{prompt_pkgdown_sys}
\alias{prompt_pkgdown_user}
\title{Prompts}
\usage{
prompt_default_sys(...)

prompt_r_sys()

prompt_r_user(code)

prompt_mermaid_sys()

prompt_mermaid_user(
  context = NULL,
  code = NULL,
  chart_type = NULL,
  chart_styles = NULL,
  ...
)

prompt_pkgdown_sys()

prompt_pkgdown_user(pkg_name, pkg_funcs, existing_yaml)
}
\arguments{
\item{...}{Additional arguments passed to the template as data.}

\item{code}{The R code to be executed for \code{prompt_r_user()}.}

\item{context}{The context for the Mermaid diagram for \code{prompt_mermaid_user()}.}

\item{pkg_name, pkg_funcs, existing_yaml}{Variables passed to the \code{prompt_pkgdown_user()} function.}
}
\value{
All prompt functions return a character string representing the (interpolated) prompt.
}
\description{
A collection of functions for generating prompts.

There are functions for generating system prompts and user prompts.

\code{noclocksai} comes with various prompt templates included that can be
found under the package's installed \verb{/prompts/} directory or retrieved
directly via \code{\link[=pkg_sys_prompt]{pkg_sys_prompt()}}.
}
\section{Prompts}{


Default Prompt:
\itemize{
\item \code{prompt_default_sys()}: Generate the default system prompt for the chat session.
}

Execute R Code Prompts:
\itemize{
\item \code{prompt_r_sys()}: Generate the system prompt for executing R code.
\item \code{prompt_r_user()}: Generate the user prompt for executing R code.
}

Roxygen Prompts:
\itemize{
\item \code{prompt_roxygen_sys()}: Generate the system prompt for Roxygen documentation.
\item \code{prompt_roxygen_user()}: Generate the user prompt for Roxygen documentation.
}

Exploratory Data Analysis (EDA) Prompts:
\itemize{
\item \code{prompt_eda_sys()}: Generate the system prompt for exploratory data analysis.
\item \code{prompt_eda_user()}: Generate the user prompt for exploratory data analysis.
}

Regular Expression (regex) Prompts:
\itemize{
\item \code{prompt_regex_sys()}: Generate the system prompt for regular expressions.
\item \code{prompt_regex_user()}: Generate the user prompt for regular expressions.
}

Google Maps Prompts:
\itemize{
\item \code{prompt_gmaps_sys()}: Generate the system prompt for Google Maps.
\item \code{prompt_gmaps_user()}: Generate the user prompt for Google Maps.
}

Database Prompts:
\itemize{
\item \code{prompt_db_sys()}: Generate the system prompt for database interaction.
\item \code{prompt_db_user()}: Generate the user prompt for database interaction.
}

Synthetic Data Prompts:
\itemize{
\item \code{prompt_synthetic_sys()}: Generate the system prompt for synthetic data generation.
\item \code{prompt_synthetic_user()}: Generate the user prompt for synthetic data generation.
}

\code{pkgdown} Prompts:
\itemize{
\item \code{prompt_pkgdown_sys()}: Generate the system prompt for the package documentation.
\item \code{prompt_pkgdown_user()}: Generate the user prompt for the package documentation.
}

Mermaid Prompts:
\itemize{
\item \code{prompt_mermaid_sys()}: Generate the system prompt for a Mermaid diagram.
\item \code{prompt_mermaid_user()}: Generate the user prompt for a Mermaid diagram.
}
}

\seealso{
\code{\link[ellmer:interpolate]{ellmer::interpolate_file()}}, \code{\link[=pkg_sys_prompt]{pkg_sys_prompt()}}
}
