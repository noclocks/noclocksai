# noclocksai <img src="man/figures/logo.png" align="right" height="120" alt="" />

<!-- badges: start -->
[![Codecov test coverage](https://codecov.io/gh/noclocks/noclocksai/graph/badge.svg)](https://app.codecov.io/gh/noclocks/noclocksai)
[![R-CMD-check](https://github.com/noclocks/noclocksai/workflows/R-CMD-check/badge.svg)](https://github.com/noclocks/noclocksai/actions)
<!-- badges: end -->

## Overview

The `noclocksai` package provides a comprehensive toolkit for working with AI services at No Clocks, LLC. It simplifies interactions with various AI models, provides utilities for embedding, database operations, and includes a flexible agent framework for creating AI assistants.

## Key Features

- **Agent Framework**: Create and manage AI agents with memory, tools, and vector store capabilities
- **Chat Interfaces**: Simplified interactions with popular AI providers (OpenAI, Claude, Gemini)
- **Embeddings**: Generate and manage vector embeddings for RAG applications
- **Database Integration**: Store and retrieve embeddings and documents
- **API Connectors**: Wrappers for OpenAI, Google Maps, Geocoding, FireCrawl, and more
- **Utility Functions**: Tools for caching, logging, data extraction, and markdown processing
- **Mermaid Diagrams**: Generate mermaid.js diagrams with natural language
- **Configuration Management**: Secure API key and environment management

## Installation

You can install the development version of noclocksai from GitHub:

```r
# install.packages("remotes")
remotes::install_github("noclocks/noclocksai")
```

### System Requirements

This package requires:
- R 4.1 or later
- Node.js with npm/npx (for certain features)
- Database connections (for vector stores)

## Basic Usage

### Creating a Chat Agent

```r
library(noclocksai)

# Initialize a simple chat
chat <- initialize_chat(
  model = "gpt-4o",
  system_prompt = "You are a helpful AI assistant."
)

# Chat with the agent
chat$chat("What is the R programming language?")
```

### Using Geocoding and Weather APIs

```r
# Get coordinates for a location
coords <- geocode("New York City")

# Get weather information
weather <- get_weather(
  lat = coords[[1]]$lat,
  lon = coords[[1]]$lon,
  units = "metric"
)
```

### Creating Mermaid Diagrams

```r
# Generate a flowchart from text description
create_mermaid_diagram(
  prompt = "Create a flowchart showing the process of data analysis in R"
)
```

### Extracting Code from Text

```r
text <- "Here's an example:
```r
library(dplyr)
mtcars |>
  group_by(cyl) |>
  summarise(avg_mpg = mean(mpg))
```"

# Extract the R code
code <- extract_code(text, lang = "r")
```

## Documentation

For more detailed information, see the package vignettes:

```r
# List available vignettes
vignette(package = "noclocksai")

# View a specific vignette
vignette("noclocksai", package = "noclocksai")
```

## License

This package is licensed under a proprietary license - see the [LICENSE](LICENSE) file for details.

## Contributing

This package is primarily maintained by [No Clocks, LLC](https://noclocks.dev). Please file issues for bugs or feature requests.
