# noclocksai <img src="man/figures/logo.png" align="right" height="120" alt="" />

<!-- badges: start -->
[![Test Coverage](https://github.com/noclocks/noclocksai/actions/workflows/coverage.yml/badge.svg)](https://github.com/noclocks/noclocksai/actions/workflows/coverage.yml)
[![R-CMD-Check](https://github.com/noclocks/noclocksai/actions/workflows/rcmdcheck.yml/badge.svg)](https://github.com/noclocks/noclocksai/actions/workflows/rcmdcheck.yml)
[![Automate Changelog](https://github.com/noclocks/noclocksai/actions/workflows/changelog.yml/badge.svg)](https://github.com/noclocks/noclocksai/actions/workflows/changelog.yml)
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

## AI & Agentic Capabilities

### LLM Provider Integrations

- **OpenAI**: GPT-4o, GPT-4, and other models
- **Anthropic**: Claude models
- **Google**: Gemini models
- **Ollama**: Local model hosting
- **Groq**: High-performance inference

### AI Agents

- **Base Agent**: R6 class with memory, tools, and vector store capabilities
- **Specialized Agents**:
  - **EDA Agent**: For exploratory data analysis and anomaly detection
  - **Mermaid Agent**: For generating diagrams from natural language
  - **Git Agent**: For repository management and commit messages

### Included Prompt Templates

- **Code Analysis**: For analyzing and explaining code
- **Document Processing**: For document summarization and analysis
- **Exploratory Data Analysis**: For statistical analysis
- **Markdown Enhancement**: For improving markdown documents
- **Git Commits**: For generating commit messages
- **Synthetic Data**: For generating sample data
- **SQL to Text**: For explaining SQL queries
- **Execute R Code**: For safe code execution
- **Anomaly Detection**: For identifying outliers in data

### AI Tools

- **Code Tools**: Extract, format, and execute code
- **Data Analysis**: Anomaly detection, correlation analysis
- **Geospatial**: Google Maps integration, geocoding, weather data
- **Database**: Query execution with LLM assistance
- **Time & Date**: Timezone-aware functions

### External API Integrations

- **OpenWeather**: Weather data retrieval by coordinates or location
- **Google Maps**: Geocoding, place search, and location data
- **FireCrawl**: Web scraping and crawling capabilities
- **Langfuse**: Comprehensive LLM observability and analytics
  - Trace chat sessions
  - Record user feedback
  - Manage prompt templates
  - Create evaluation datasets
  - Run experiments

### Type System

The package includes a robust type system for parameter validation:

- **Primitive Types**: String, number, integer, boolean, array, object
- **Complex Types**: For specialized data formats
  - `type_gmaps_geocode_response`: Google Maps geocoding responses
  - `type_gmaps_places_search_response`: Places API responses
  - `type_dataset_docs`: Document dataset format

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

### Working with PostgreSQL Databases

```r
# Connect to a PostgreSQL database
conn <- db_connect(list(
  driver = "PostgreSQL",
  host = "localhost",
  dbname = "my_database",
  user = "postgres",
  password = "password",
  port = 5432
))

# Query the database and store documents for vector search
db_store_document(
  conn,
  title = "Sample Document",
  content = "This is a sample document for vector search.",
  metadata = list(author = "Jane Doe", date = Sys.Date())
)

# Retrieve documents using semantic search
results <- db_get_documents(conn, "sample vector search")
```

### Complex Workflow Example

The following example shows how to create an agent that uses multiple tools:

```r
# Create an agent with vector store capabilities
agent <- Agent$new(
  provider = "openai",
  model = "gpt-4o",
  system_prompt = "You are an assistant that helps analyze real estate data.",
  name = "real-estate-assistant"
)

# Register external API tools with the agent
agent$register_tool(tool_geocode_location())
agent$register_tool(tool_get_weather())
agent$register_tool(tool_gmaps_places_search())

# Connect the agent to a database for document storage
agent$db_connect(db_config = list(
  driver = "PostgreSQL",
  host = "34.75.86.90",
  dbname = "gmh_leasing_dev",
  user = "postgres",
  password = "password",
  port = 5432
))

# Add a resource to the agent
agent$add_resource(
  name = "market_data",
  content = read.csv("market_data.csv"),
  type = "dataframe"
)

# Ask the agent a question that requires using multiple tools
response <- agent$chat(
  "What are the current market conditions for apartment rentals in New York City,
  and how might the current weather impact showings this weekend?"
)

# Save the agent state for later use
agent$save_state("agent_state.rds")
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
