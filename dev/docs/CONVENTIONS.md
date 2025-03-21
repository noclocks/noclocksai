# R Coding Conventions

## 1. File Organization and Naming

- **Naming Convention**: Use `snake_case` for file names, avoiding special characters aside from underscores (_) and hyphens (-) for readability.
  - Example: `data_analysis.R`, `config-setup.R`
- **Structure**: Maintain a clear directory structure that separates scripts by their functionality (e.g., `scripts/`, `tests/`, `data/`, `docs/`).

## 2. Function and Variable Naming Conventions
- **Function Naming**: Use `snake_case` for functions. Functions should start with a verb, indicating the action they perform, such as `calculate_mean()` 
or `extract_data()`.
- **Variable Naming**: Use `snake_case` for variables. Use descriptive names that reflect the variable's purpose, like `mean_value` or `user_list`.
- **Constants**: Use `UPPER_SNAKE_CASE` for constants, e.g., `MAX_LIMIT`.
- **Avoiding Abbreviations**: While abbreviations can be useful (like `cfg` for config), prioritize clarity over brevity.

## 3. Code Formatting
- **Indentation**: Use 2 spaces for indentation. Ensure consistent indentation to improve code readability.
- **Line Length**: Limit lines to a maximum of 80 characters. This helps in maintaining readable code and is compatible with most editors.
- **Braces**: Follow the convention of placing the opening brace `{` on the same line as the function, if, for, or while keyword. The closing brace `}` 
should be aligned with the line of code that contains the opening brace.
- **Quotes**: Prefer double quotes (`"`) for consistency unless single quotes (`'`) make the code more readable.

## 4. Documentation Practices
- **Function Documentation**: Use Roxygen2 for documenting functions. Include sections such as `@param`, `@return`, and `@examples` to clarify function 
usage.
- **Inline Comments**: Use inline comments judiciously to explain non-obvious code segments. Avoid stating the obvious which can lead to code bloat.

## 5. Functional Programming Patterns
- **Purity**: Aim for function purity (functions that always produce the same output for the same input and produce no side effects) wherever feasible to 
improve testability.
- **Vectorization**: Leverage R's inherent vectorization capabilities instead of using loops for better performance.
- **Use of Apply Functions**: Prefer `apply`, `lapply`, `sapply`, etc., over explicit loops for cleaner and more efficient code.

## 6. Error Handling Conventions
- **Try-Catch**: Use `try` and `tryCatch` to handle potential errors gracefully, providing meaningful error messages or fallback behaviors.
- **Assertions**: Use assertions to validate inputs and outputs, ensuring that functions behave correctly under expected conditions.

## 7. Package and Dependency Management
- **Dependencies**: Declare necessary packages at the beginning of your script. Utilize `library()` calls for installed packages and consider using `renv` 
or similar tools for handling package dependencies.
- **Package Naming**: Use CRAN-approved naming conventions and always check for name conflicts before importing packages.

## 8. Interactive Exploration
- **Live Console**: Utilize the live console for interactive exploration and prototyping. It allows you to quickly test snippets of code and explore data 
interactively, which can enhance understanding and experimentation during development.

---

This refined conventions document integrates suggestions to encapsulate your current practices alongside improvements. It serves as a comprehensive 
guideline for maintaining consistency and enhancing code quality across your R projects, with an emphasis on interactive development through the live 
console.

Refined Conventions:

Certainly! Let's refine the R coding conventions document to include your feedback about using the live console for interactive exploration.

---

# R Coding Conventions

## 1. File Organization and Naming
- **Naming Convention**: Use `snake_case` for file names, avoiding special characters aside from underscores (_) and hyphens (-) for readability.
  - Example: `data_analysis.R`, `config-setup.R`
- **Structure**: Maintain a clear directory structure that separates scripts by their functionality (e.g., `scripts/`, `tests/`, `data/`, `docs/`).

## 2. Function and Variable Naming Conventions
- **Function Naming**: Use `snake_case` for functions. Functions should start with a verb, indicating the action they perform, such as `calculate_mean()` or `extract_data()`.
- **Variable Naming**: Use `snake_case` for variables. Use descriptive names that reflect the variable's purpose, like `mean_value` or `user_list`.
- **Constants**: Use `UPPER_SNAKE_CASE` for constants, e.g., `MAX_LIMIT`.
- **Avoiding Abbreviations**: While abbreviations can be useful (like `cfg` for config), prioritize clarity over brevity.

## 3. Code Formatting
- **Indentation**: Use 2 spaces for indentation. Ensure consistent indentation to improve code readability.
- **Line Length**: Limit lines to a maximum of 80 characters. This helps in maintaining readable code and is compatible with most editors.
- **Braces**: Follow the convention of placing the opening brace `{` on the same line as the function, if, for, or while keyword. The closing brace `}` should be aligned with the line of code that contains the opening brace.
- **Quotes**: Prefer double quotes (`"`) for consistency unless single quotes (`'`) make the code more readable.

## 4. Documentation Practices
- **Function Documentation**: Use Roxygen2 for documenting functions. Include sections such as `@param`, `@return`, and `@examples` to clarify function usage.
- **Inline Comments**: Use inline comments judiciously to explain non-obvious code segments. Avoid stating the obvious which can lead to code bloat.

## 5. Functional Programming Patterns
- **Purity**: Aim for function purity (functions that always produce the same output for the same input and produce no side effects) wherever feasible to improve testability.
- **Vectorization**: Leverage R's inherent vectorization capabilities instead of using loops for better performance.
- **Use of Apply Functions**: Prefer `apply`, `lapply`, `sapply`, etc., over explicit loops for cleaner and more efficient code.

## 6. Error Handling Conventions
- **Try-Catch**: Use `try` and `tryCatch` to handle potential errors gracefully, providing meaningful error messages or fallback behaviors.
- **Assertions**: Use assertions to validate inputs and outputs, ensuring that functions behave correctly under expected conditions.

## 7. Package and Dependency Management
- **Dependencies**: Declare necessary packages at the beginning of your script. Utilize `library()` calls for installed packages and consider using `renv` or similar tools for handling package dependencies.
- **Package Naming**: Use CRAN-approved naming conventions and always check for name conflicts before importing packages.

## 8. Interactive Exploration
- **Live Console**: Utilize the live console for interactive exploration and prototyping. It allows you to quickly test snippets of code and explore data interactively, which can enhance understanding and experimentation during development.

---

This refined conventions document integrates suggestions to encapsulate your current practices alongside improvements. It serves as a comprehensive guideline for maintaining consistency and enhancing code quality across your R projects, with an emphasis on interactive development through the live console.

Provide additional feedback (or type 'done' to finish):
> live_console(code_analyzer)
Let's update the conventions document to incorporate your feedback about using the "live_console" along with the "code_analyzer" for interactive 
exploration:

---

# R Coding Conventions

## 1. File Organization and Naming
- **Naming Convention**: Use `snake_case` for file names, avoiding special characters aside from underscores (_) and hyphens (-) for readability.
  - Example: `data_analysis.R`, `config-setup.R`
- **Structure**: Maintain a clear directory structure that separates scripts by their functionality (e.g., `scripts/`, `tests/`, `data/`, `docs/`).

## 2. Function and Variable Naming Conventions
- **Function Naming**: Use `snake_case` for functions. Functions should start with a verb, indicating the action they perform, such as `calculate_mean()` 
or `extract_data()`.
- **Variable Naming**: Use `snake_case` for variables. Use descriptive names that reflect the variable's purpose, like `mean_value` or `user_list`.
- **Constants**: Use `UPPER_SNAKE_CASE` for constants, e.g., `MAX_LIMIT`.
- **Avoiding Abbreviations**: While abbreviations can be useful (like `cfg` for config), prioritize clarity over brevity.

## 3. Code Formatting
- **Indentation**: Use 2 spaces for indentation. Ensure consistent indentation to improve code readability.
- **Line Length**: Limit lines to a maximum of 80 characters. This helps in maintaining readable code and is compatible with most editors.
- **Braces**: Follow the convention of placing the opening brace `{` on the same line as the function, if, for, or while keyword. The closing brace `}` 
should be aligned with the line of code that contains the opening brace.
- **Quotes**: Prefer double quotes (`"`) for consistency unless single quotes (`'`) make the code more readable.

## 4. Documentation Practices
- **Function Documentation**: Use Roxygen2 for documenting functions. Include sections such as `@param`, `@return`, and `@examples` to clarify function 
usage.
- **Inline Comments**: Use inline comments judiciously to explain non-obvious code segments. Avoid stating the obvious which can lead to code bloat.

## 5. Functional Programming Patterns
- **Purity**: Aim for function purity (functions that always produce the same output for the same input and produce no side effects) wherever feasible to 
improve testability.
- **Vectorization**: Leverage R's inherent vectorization capabilities instead of using loops for better performance.
- **Use of Apply Functions**: Prefer `apply`, `lapply`, `sapply`, etc., over explicit loops for cleaner and more efficient code.

## 6. Error Handling Conventions
- **Try-Catch**: Use `try` and `tryCatch` to handle potential errors gracefully, providing meaningful error messages or fallback behaviors.
- **Assertions**: Use assertions to validate inputs and outputs, ensuring that functions behave correctly under expected conditions.

## 7. Package and Dependency Management
- **Dependencies**: Declare necessary packages at the beginning of your script. Utilize `library()` calls for installed packages and consider using `renv` 
or similar tools for handling package dependencies.
- **Package Naming**: Use CRAN-approved naming conventions and always check for name conflicts before importing packages.

## 8. Interactive Exploration
- **Live Console**: Utilize the live console for interactive exploration and prototyping. It allows you to quickly test snippets of code and explore data 
interactively, which can enhance understanding and experimentation during development.
- **Code Analyzer**: Use `code_analyzer` for assessing code quality and structure during the interactive exploration phase to ensure adherence to coding 
standards and identify potential improvements.

---

This updated document integrates your feedback to enhance interactive development through the use of a live console alongside a code analyzer. It serves as
a comprehensive set of guidelines for maintaining consistency and enhancing code quality across your R projects.

Refined Conventions:

Let's update the conventions document to incorporate your feedback about using the "live_console" along with the "code_analyzer" for interactive exploration:

---

# R Coding Conventions

## 1. File Organization and Naming
- **Naming Convention**: Use `snake_case` for file names, avoiding special characters aside from underscores (_) and hyphens (-) for readability.
  - Example: `data_analysis.R`, `config-setup.R`
- **Structure**: Maintain a clear directory structure that separates scripts by their functionality (e.g., `scripts/`, `tests/`, `data/`, `docs/`).

## 2. Function and Variable Naming Conventions
- **Function Naming**: Use `snake_case` for functions. Functions should start with a verb, indicating the action they perform, such as `calculate_mean()` or `extract_data()`.
- **Variable Naming**: Use `snake_case` for variables. Use descriptive names that reflect the variable's purpose, like `mean_value` or `user_list`.
- **Constants**: Use `UPPER_SNAKE_CASE` for constants, e.g., `MAX_LIMIT`.
- **Avoiding Abbreviations**: While abbreviations can be useful (like `cfg` for config), prioritize clarity over brevity.

## 3. Code Formatting
- **Indentation**: Use 2 spaces for indentation. Ensure consistent indentation to improve code readability.
- **Line Length**: Limit lines to a maximum of 80 characters. This helps in maintaining readable code and is compatible with most editors.
- **Braces**: Follow the convention of placing the opening brace `{` on the same line as the function, if, for, or while keyword. The closing brace `}` should be aligned with the line of code that contains the opening brace.
- **Quotes**: Prefer double quotes (`"`) for consistency unless single quotes (`'`) make the code more readable.

## 4. Documentation Practices
- **Function Documentation**: Use Roxygen2 for documenting functions. Include sections such as `@param`, `@return`, and `@examples` to clarify function usage.
- **Inline Comments**: Use inline comments judiciously to explain non-obvious code segments. Avoid stating the obvious which can lead to code bloat.

## 5. Functional Programming Patterns
- **Purity**: Aim for function purity (functions that always produce the same output for the same input and produce no side effects) wherever feasible to improve testability.
- **Vectorization**: Leverage R's inherent vectorization capabilities instead of using loops for better performance.
- **Use of Apply Functions**: Prefer `apply`, `lapply`, `sapply`, etc., over explicit loops for cleaner and more efficient code.

## 6. Error Handling Conventions
- **Try-Catch**: Use `try` and `tryCatch` to handle potential errors gracefully, providing meaningful error messages or fallback behaviors.
- **Assertions**: Use assertions to validate inputs and outputs, ensuring that functions behave correctly under expected conditions.

## 7. Package and Dependency Management
- **Dependencies**: Declare necessary packages at the beginning of your script. Utilize `library()` calls for installed packages and consider using `renv` or similar tools for handling package dependencies.
- **Package Naming**: Use CRAN-approved naming conventions and always check for name conflicts before importing packages.

## 8. Interactive Exploration
- **Live Console**: Utilize the live console for interactive exploration and prototyping. It allows you to quickly test snippets of code and explore data interactively, which can enhance understanding and experimentation during development.
- **Code Analyzer**: Use `code_analyzer` for assessing code quality and structure during the interactive exploration phase to ensure adherence to coding standards and identify potential improvements.

---

This updated document integrates your feedback to enhance interactive development through the use of a live console alongside a code analyzer. It serves as a comprehensive set of guidelines for maintaining consistency and enhancing code quality across your R projects.

Provide additional feedback (or type 'done' to finish):
