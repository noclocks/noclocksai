# CLAUDE.md - noclocksai R Package

## Commands

- **Install dependencies**: `R CMD INSTALL .` or `pak::local_install()`
- **Load package**: `pkgload::load_all()`
- **Update DESCRIPTION & NAMESPACE**: `attachment::att_amend_desc()`
- **Run all tests**: `devtools::test()` or `testthat::test_package("noclocksai")`
- **Run single test**: `testthat::test_file("tests/testthat/test-file-name.R")`
- **Run R CMD check**: `devtools::check()`
- **Build documentation**: `devtools::document()`
- **Lint code**: `lintr::lint_package()` 

## Code Style Guidelines

- **Use snake_case** for functions, variables, and file names
- **Use UPPER_SNAKE_CASE** for constants
- **Indentation**: 2 spaces 
- **Line length**: 80 characters maximum
- **Documentation**: Use roxygen2 style (function descriptions, @param, @return)
- **Error handling**: Use `tryCatch` for error handling with informative messages
- **Imports**: List all imports in NAMESPACE via roxygen2 tags
- **Vectorize** operations when possible instead of using loops
- **Function purity**: Aim for pure functions that have no side effects

## Package Structure

Keep functionality organized in appropriate directories: R/, tests/, data/, inst/, man/
