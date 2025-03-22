

get_r_files <- function(path = ".") {

  path <- normalizePath(path)

  list.files(
    path,
    pattern = "\\.R$|\\.r$",
    recursive = TRUE,
    full.names = TRUE
  ) |>
    normalizePath()

}


analyze_codebase <- function(path = ".", pattern = "\\.R$") {

  path <- normalizePath(path)
  r_files <- get_r_files(path)
  lint_results <- lapply(r_files, lintr::lint)
  code_structure <- lapply(r_files, function(file) {
    script <- CodeDepends::readScript(file)
    CodeDepends::getInputs(script)
  })

  list(
    files = r_files,
    lint_results = lint_results,
    code_structure = code_structure
  )
}

extract_naming_conventions <- function(analysis_results) {

  var_names <- c()
  func_names <- c()
  file_names <- basename(analysis_results$files)

  for (file in analysis_results$files) {
    script_content <- readLines(file)
    # Simple pattern matching for demonstration
    # In practice, use more robust parsing
    var_pattern <- "\\b([a-zA-Z][a-zA-Z0-9_]*)\\s*<-"
    func_pattern <- "([a-zA-Z][a-zA-Z0-9_]*)\\s*<-\\s*function"

    var_matches <- regmatches(script_content,
                              regexec(var_pattern, script_content))
    func_matches <- regmatches(script_content,
                               regexec(func_pattern, script_content))

    var_names <- c(var_names, sapply(var_matches[lengths(var_matches) > 0],
                                     function(x) x[2]))
    func_names <- c(func_names, sapply(func_matches[lengths(func_matches) > 0],
                                       function(x) x[2]))
  }

  list(
    variable_names = var_names,
    function_names = func_names,
    file_names = file_names
  )
}

library(ellmer)

code_analyzer <- chat_openai(
  model = "gpt-4o",
  system_prompt = "You are an expert R code analyzer specializing in identifying coding patterns,
  naming conventions, and style preferences. Your task is to analyze code samples and extract
  consistent patterns that can be formalized into coding conventions. Focus on naming conventions,
  code structure, documentation practices, and functional programming patterns."
)

# Function to extract code style from a file
extract_file_style <- function(file_path) {
  if (!file.exists(file_path)) {
    return(list(error = "File not found"))
  }

  content <- readLines(file_path)

  # Basic style analysis
  indentation <- gsub("^(\\s*).*$", "\\1", content)
  indentation_spaces <- nchar(indentation)
  avg_indentation <- mean(indentation_spaces[indentation_spaces > 0])

  # Line length analysis
  line_lengths <- nchar(content)
  avg_line_length <- mean(line_lengths)

  # Comment analysis
  comment_lines <- grep("^\\s*#", content)
  comment_ratio <- length(comment_lines) / length(content)

  list(
    file_path = file_path,
    avg_indentation = avg_indentation,
    avg_line_length = avg_line_length,
    comment_ratio = comment_ratio,
    sample_content = paste(head(content, 20), collapse = "\n")
  )
}

# Register the tool with the AI
code_analyzer$register_tool(
  tool(
    extract_file_style,
    "Extracts code style metrics from an R file",
    file_path = type_string("Path to the R file to analyze")
  )
)

analyze_naming_patterns <- function(conventions, chat) {
  # Prepare data for AI analysis
  var_sample <- sample(conventions$variable_names,
                       min(100, length(conventions$variable_names)))
  func_sample <- sample(conventions$function_names,
                        min(100, length(conventions$function_names)))
  file_sample <- conventions$file_names

  # Format the data for the AI
  data_for_ai <- list(
    variable_names = var_sample,
    function_names = func_sample,
    file_names = file_sample
  )

  # Ask AI to analyze the naming patterns
  prompt <- paste0(
    "Analyze these naming patterns from my R codebase and identify consistent conventions:\n\n",
    "Variable names: ", paste(var_sample, collapse = ", "), "\n\n",
    "Function names: ", paste(func_sample, collapse = ", "), "\n\n",
    "File names: ", paste(file_sample, collapse = ", "), "\n\n",
    "Please identify the naming conventions used for each type, including case style (camelCase, snake_case, PascalCase), prefixes/suffixes, and any other patterns you observe."
  )

  chat$chat(prompt)
}

generate_conventions_document <- function(static_analysis, ai_chat) {
  # First, get AI to analyze the static analysis results
  static_summary <- paste(
    "Here's a summary of my static code analysis:",
    "Number of files analyzed:", length(static_analysis$files),
    "Common linting issues:", summarize_lint_issues(static_analysis$lint_results),
    sep = "\n"
  )

  prompt <- paste0(
    static_summary,
    "\n\nBased on this analysis, help me create a comprehensive R coding conventions document ",
    "that captures my current practices and suggests improvements where appropriate. ",
    "Include sections on:\n",
    "1. File organization and naming\n",
    "2. Function and variable naming conventions\n",
    "3. Code formatting (indentation, line length, etc.)\n",
    "4. Documentation practices\n",
    "5. Functional programming patterns\n",
    "6. Error handling conventions\n",
    "7. Package and dependency management\n"
  )

  ai_chat$chat(prompt)
}

# Helper function to summarize lint issues
summarize_lint_issues <- function(lint_results) {
  # Extract and count lint issues by type
  all_issues <- unlist(lapply(lint_results, function(x) {
    sapply(x, function(issue) issue$linter)
  }))

  issue_counts <- table(all_issues)

  # Format as text
  paste(names(sort(issue_counts, decreasing = TRUE)),
        ":", sort(issue_counts, decreasing = TRUE),
        collapse = "\n")
}

refine_conventions <- function(initial_conventions, ai_chat) {
  # Display initial conventions
  cat("Initial Conventions:\n\n")
  cat(initial_conventions)

  # Get human feedback
  cat("\n\nProvide feedback for refinement (or type 'done' to finish):\n")
  feedback <- readline(prompt = "> ")

  while(feedback != "done") {
    # Send feedback to AI
    prompt <- paste0(
      "Here are my current R coding conventions:\n\n",
      initial_conventions,
      "\n\nI have the following feedback to refine these conventions:\n",
      feedback,
      "\n\nPlease update the conventions document accordingly."
    )

    # Get refined conventions
    refined <- ai_chat$chat(prompt)

    # Display refined conventions
    cat("\nRefined Conventions:\n\n")
    cat(refined)

    # Get more feedback or finish
    cat("\n\nProvide additional feedback (or type 'done' to finish):\n")
    feedback <- readline(prompt = "> ")

    # Update the conventions for the next iteration
    initial_conventions <- refined
  }

  return(initial_conventions)
}

# Main function to analyze code and generate conventions
generate_ai_conventions <- function(code_dir) {
  # Set up AI assistant
  ai_assistant <- chat_openai(
    model = "gpt-4o",
    system_prompt = "You are an expert R code analyzer specializing in identifying coding patterns,
    naming conventions, and style preferences. Your task is to analyze code samples and extract
    consistent patterns that can be formalized into coding conventions."
  )

  # Register necessary tools
  ai_assistant$register_tool(
    tool(
      extract_file_style,
      "Extracts code style metrics from an R file",
      file_path = type_string("Path to the R file to analyze")
    )
  )

  # Step 1: Run static analysis
  cli::cli_alert_info("Running static analysis on codebase...")
  analysis_results <- analyze_codebase(code_dir)

  # Step 2: Extract naming conventions
  cli::cli_alert_info("Extracting naming conventions...")
  naming_conventions <- extract_naming_conventions(analysis_results)

  # Step 3: Analyze naming patterns with AI
  cli::cli_alert_info("Analyzing naming patterns with AI...")
  naming_analysis <- analyze_naming_patterns(naming_conventions, ai_assistant)

  # Step 4: Generate initial conventions document
  cli::cli_alert_info("Generating initial conventions document...")
  initial_conventions <- generate_conventions_document(analysis_results, ai_assistant)

  # Step 5: Interactive refinement
  cli::cli_alert_info("Starting interactive refinement process...")
  final_conventions <- refine_conventions(initial_conventions, ai_assistant)

  # Step 6: Save the final conventions
  output_file <- file.path(code_dir, "r_coding_conventions.md")
  writeLines(final_conventions, output_file)

  cli::cli_alert_success(paste("AI Conventions document saved to", output_file))

  return(final_conventions)
}

# Run the entire process on your codebase
conventions <- generate_ai_conventions(".")

# For interactive exploration, you can also use the live console
live_console(code_analyzer)

