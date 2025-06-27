---
applyTo: "**/*.R"
description: "R-specific coding instructions."
---

# R Coding Standards

## General Guidelines

- **AVOID** excessive code comments.
- **ALWAYS** use all lower-case for comments.
- **ALWAYS** use meaningful, consistent variable names.
- **ALWAYS** ensure you are structuring the project's code abiding by R Package required conventions.

## Package Guidelines

- **ALWAYS** ensure the `DESCRIPTION` and `NAMESPACE` files are properly configured and up-to-date.
- For exported functions, **ALWAYS** include appropriate documentation (e.g., using `roxygen2` comments) and examples.

## Naming Conventions

- Use snake_case for file names and function names.
- Use descriptive names that convey the purpose of the file or function.
- Include a prefix for related functions (i.e. `app_` for Shiny app functions, `mod_` for Shiny modules, `utils_` for utility functions).
- Use `mod_` prefix for Shiny modules to indicate they are modular components (`mod_home_ui()`, `mod_home_server()`, `mod_home_demo()`).
