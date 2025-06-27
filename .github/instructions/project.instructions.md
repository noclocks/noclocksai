---
applyTo: "**"
description: "Project-wide instructions."
---

# `noclocksai` Project Instructions

## Overview

The `noclocksai` R package provides a comprehensive AI agent framework for R that enables integration with multiple
LLM providers, tool systems, and data management capabilities.

This document covers the tech stack, high-level architecture, core components, and system relationships within the package.

<!-- BEGIN:TECH_STACK -->

## Tech Stack

> **Maintenance Note**: This section should be updated when dependencies change. The authoritative source for current dependencies is the [`DESCRIPTION` file](../../DESCRIPTION). When updating, verify GitHub repository URLs and ensure package descriptions are accurate and current.

`noclocksai` is an **R Package** that provides a comprehensive AI agent framework for R, enabling integration with multiple LLM providers, tool systems, and data management capabilities.

The package leverages a carefully curated set of dependencies to support AI workflows, data handling, API communication, configuration management, and more. Dependencies are organized by their primary function within the system:

### Core AI & LLM Integration

- [`ellmer`](https://github.com/tidyverse/ellmer): Enables calling large language model (LLM) APIs from within R with a modern, tidyverse-compatible interface.

### Data Manipulation & Analysis

- [`dplyr`](https://github.com/tidyverse/dplyr): A grammar of data manipulation providing a consistent set of verbs for data transformation.
- [`purrr`](https://github.com/tidyverse/purrr): Functional programming tools for working with functions and vectors in a consistent, type-safe way.
- [`tibble`](https://github.com/tidyverse/tibble): Modern reimagining of data frames with enhanced printing and subsetting.
- [`tibblify`](https://github.com/mgirlich/tibblify): Automates parsing of large, complex, nested data structures into rectangular, tidy tibbles using pre-defined specifications.
- [`tidyselect`](https://github.com/tidyverse/tidyselect): Backend for selecting variables using tidy evaluation principles.
- [`tidyxl`](https://github.com/nacnudus/tidyxl): Imports non-tabular data from Excel files while preserving cell formatting and structure.

### Data Import/Export & Serialization

- [`readr`](https://github.com/tidyverse/readr): Fast and friendly data import from delimited files with automatic type detection.
- [`qs2`](https://github.com/qsbase/qs2): Fast serialization of R objects with compression for efficient storage and transfer.
- [`jsonlite`](https://github.com/jeroen/jsonlite): Robust and flexible JSON parser and generator optimized for statistical data.
- [`yaml`](https://github.com/vubiostat/r-yaml): Methods to convert R objects to and from YAML format for configuration files.
- [`base64enc`](https://github.com/s-u/base64enc): Tools for base64 encoding and decoding of binary data.

### Database Integration

- [`DBI`](https://github.com/r-dbi/DBI): Database interface definition providing a common API for database communication in R.
- [`RPostgres`](https://github.com/r-dbi/RPostgres): DBI-compliant interface to PostgreSQL databases with modern features.
- [`dm`](https://github.com/r-dbi/dm): Tools for working with relational data models and managing multiple connected tables.
- [`pool`](https://github.com/r-dbi/pool): Database connection pooling for improved performance and resource management.

### HTTP & API Communication

- [`httr2`](https://github.com/r-lib/httr2): Modern HTTP client for R with support for authentication, retries, rate limiting, and request/response pipelines.
- [`googleway`](https://github.com/SymbolixAU/googleway): Interface to various Google APIs including Maps, Places, and Geocoding services.

### Configuration & Environment Management

- [`config`](https://github.com/rstudio/config): Flexible management of environment-specific configuration values with YAML support and inheritance.
- [`rappdirs`](https://github.com/r-lib/rappdirs): Platform-appropriate paths for user data, config, cache, and log directories following OS conventions.

### Process & System Management

- [`sys`](https://github.com/jeroen/sys): Portable system utilities for running external commands with process control and stream management.
- [`processx`](https://github.com/r-lib/processx): Advanced tools for running and controlling external processes with background job support.
- [`callr`](https://github.com/r-lib/callr): Execute R scripts and expressions in separate R sessions for isolation and reproducibility.
- [`withr`](https://github.com/r-lib/withr): Temporarily modify global state ensuring clean and reversible changes to options and environment.
- [`parallel`](https://stat.ethz.ch/R-manual/R-devel/library/parallel/doc/parallel.pdf): Support for parallel computing in R (base R package).
- [`future`](https://github.com/HenrikBengtsson/future): Unified parallel and distributed processing with multiple backend support.

### Caching & Performance

- [`cachem`](https://github.com/r-lib/cachem): High-performance, thread-safe caching for R objects with automatic memory management.
- [`memoise`](https://github.com/r-lib/memoise): Function memoization for caching expensive computations and improving performance.

### Text Processing & Templating

- [`stringr`](https://github.com/tidyverse/stringr): Consistent, intuitive string manipulation functions built on top of stringi.
- [`snakecase`](https://github.com/Tazinho/snakecase): Tools for converting strings between different case formats (snake_case, camelCase, etc.).
- [`glue`](https://github.com/tidyverse/glue): String interpolation with embedded R expressions for readable templating.
- [`whisker`](https://github.com/edwindj/whisker): Logicless templating system based on Mustache for generating dynamic content.

### Web & UI Components

- [`bslib`](https://github.com/rstudio/bslib): Bootstrap themes and components for modern web applications in R.
- [`htmltools`](https://github.com/rstudio/htmltools): Tools for HTML generation and manipulation in R web applications.
- [`shiny`](https://github.com/rstudio/shiny): Web application framework for R enabling interactive dashboards and applications.
- [`shinychat`](https://github.com/jcheng5/shinychat): Chat interface components for Shiny applications with modern UI patterns.

### Object-Oriented Programming

- [`R6`](https://github.com/r-lib/R6): Encapsulated object-oriented programming system with reference semantics.
- [`S7`](https://github.com/r-lib/S7): Modern object-oriented programming system for R with improved performance and features.

### Utilities & Support

- [`fs`](https://github.com/r-lib/fs): Cross-platform file system operations with a consistent API across operating systems.
- [`formatR`](https://github.com/yihui/formatR): Tools for formatting R code with automatic indentation and style improvements.
- [`uuid`](https://github.com/eddelbuettel/uuid): Generate universally unique identifiers for data tracking and identification.
- [`skimr`](https://github.com/ropensci/skimr): Compact and flexible summary statistics for quick data exploration.
- [`listviewer`](https://github.com/timelyportfolio/listviewer): Interactive visualization and exploration of nested list structures.

### Image Processing

- [`magick`](https://github.com/ropensci/magick): Advanced image processing capabilities with ImageMagick integration for R.

### Date/Time Processing

- [`lubridate`](https://github.com/tidyverse/lubridate): Simple and consistent tools for working with dates and times in R.

### Logging & Monitoring

- [`lgr`](https://github.com/s-fleck/lgr): Flexible logging framework with multiple backends and hierarchical loggers.
- [`logger`](https://github.com/daroczig/logger): Lightweight logging utility with customizable output formats and levels.

### Code Evaluation & Execution

- [`evaluate`](https://github.com/r-lib/evaluate): Tools for parsing and evaluating R code with capture of output, warnings, and errors.
- [`pkgload`](https://github.com/r-lib/pkgload): Simulates package loading for development workflows and testing.

### Low-Level R Infrastructure

- [`rlang`](https://github.com/r-lib/rlang): Tools for working with R language constructs, expressions, and environments.
- [`cli`](https://github.com/r-lib/cli): Modern command line interface tools with styling, progress bars, and user interaction.
- [`vctrs`](https://github.com/r-lib/vctrs): Vector types and operations providing the foundation for type-stable data analysis.

### External System Requirements

- **npm**: Node.js package manager required for JavaScript dependencies and build tools.
- **npx**: Node.js package runner for executing npm packages without global installation.

### Development Dependencies (Suggests)

Additional packages used for development, testing, and documentation but not required for core functionality:

- [`DiagrammeR`](https://github.com/rich-iannone/DiagrammeR): Graph and network visualization with Graphviz and mermaid support.
- [`knitr`](https://github.com/yihui/knitr): Dynamic report generation combining R code with narrative text.
- [`rmarkdown`](https://github.com/rstudio/rmarkdown): R Markdown format for reproducible research documents.
- [`spelling`](https://github.com/ropensci/spelling): Spell checking for R packages and documentation.
- [`testthat`](https://github.com/r-lib/testthat): Unit testing framework for R with hierarchical structure and rich output.

<!-- END:TECH_STACK -->
