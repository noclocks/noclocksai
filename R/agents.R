#  ------------------------------------------------------------------------
#
# Title : AI Agents
#    By : Jimmy Briggs
#  Date : 2025-03-03
#
#  ------------------------------------------------------------------------


#' Create an EDA Agent
#'
#' @description
#' Creates a collection of specialized agents for exploratory data analysis.
#'
#' @param data The data frame to analyze
#' @param anomaly_threshold Threshold for anomaly detection (default 0.95)
#'
#' @return A list of agents specialized for different EDA tasks
#'
#' @export
eda_agent <- function(data, anomaly_threshold = 0.95) {
  check_data_frame(data)

  # Create specialized agents
  anomaly_detector_agent <- ellmer::chat_openai(
    model = "gpt-4o",
    system_prompt = "You are an anomaly detection specialist. Analyze data to identify outliers and unusual patterns."
  )

  root_cause_agent <- ellmer::chat_openai(
    model = "gpt-4o",
    system_prompt = "You are a root cause analysis expert. Your job is to determine potential causes for data anomalies."
  )

  recommendation_agent <- ellmer::chat_openai(
    model = "gpt-4o",
    system_prompt = "You are a data science recommendation engine. Suggest specific actions to address identified issues."
  )

  # Register tools with agents
  anomaly_detector_agent$register_tool(tool_anomaly_detection(data = data))
  root_cause_agent$register_tool(tool_root_cause_analysis(data = data))

  # Create a tool for recommendations
  recommendation_tool <- ellmer::tool(
    .name = "recommend_actions",
    .description = "Recommend actions to address data issues",
    .fun = function(column_name, issue_description) {
      # This will be handled by the recommendation agent's LLM capabilities
      paste("Recommendations for", column_name, "issue:", issue_description)
    },
    column_name = ellmer::type_string(
      description = "Column with the issue",
      required = TRUE
    ),
    issue_description = ellmer::type_string(
      description = "Description of the issue",
      required = TRUE
    )
  )

  recommendation_agent$register_tool(recommendation_tool)

  # Return the agents as a list
  return(list(
    anomaly_detector = anomaly_detector_agent,
    root_cause = root_cause_agent,
    recommendation = recommendation_agent,
    threshold = anomaly_threshold,
    data = data
  ))
}

#' Create a Mermaid Diagram Agent
#'
#' @description
#' Creates an agent specialized for generating Mermaid diagrams.
#'
#' @return An ellmer chat agent configured for Mermaid diagram generation
#'
#' @export
mermaid_agent <- function() {
  ellmer::chat_openai(
    model = "gpt-4o",
    system_prompt = prompt_mermaid_sys(),
    echo = "none",
    api_args = list(temperature = 0)
  )
}

#' Create a Git Agent
#'
#' @description
#' Creates an agent specialized for Git operations and repository management.
#'
#' @param repo_path Path to the Git repository
#'
#' @return An agent object configured for Git operations
#'
#' @export
git_agent <- function(repo_path = ".") {
  # Validate that the path contains a Git repository
  if (!dir.exists(file.path(repo_path, ".git"))) {
    cli::cli_abort("The specified path does not appear to be a Git repository.")
  }

  # Create Git agent
  agent <- Agent$new(
    provider = "openai",
    model = "gpt-4o",
    system_prompt = "You are a Git expert that helps with repository management, commit messages, and Git operations.",
    name = "git-assistant"
  )

  # Create Git-specific tools
  git_status_tool <- ellmer::tool(
    .name = "git_status",
    .description = "Get the current status of the Git repository",
    .fun = function() {
      # Run git status
      status <- system(paste("cd", repo_path, "&& git status"), intern = TRUE)
      paste(status, collapse = "\n")
    }
  )

  git_log_tool <- ellmer::tool(
    .name = "git_log",
    .description = "Get the commit history of the Git repository",
    .fun = function(n = 10) {
      # Run git log
      log <- system(
        paste0("cd ", repo_path, " && git log --oneline --graph --decorate -n ", n),
        intern = TRUE
      )
      paste(log, collapse = "\n")
    },
    n = ellmer::type_number(
      description = "Number of commits to show",
      required = FALSE
    )
  )

  git_diff_tool <- ellmer::tool(
    .name = "git_diff",
    .description = "Get the diff of the current changes",
    .fun = function(staged = FALSE) {
      # Run git diff
      diff_cmd <- if (staged) "git diff --staged" else "git diff"
      diff <- system(paste("cd", repo_path, "&&", diff_cmd), intern = TRUE)
      paste(diff, collapse = "\n")
    },
    staged = ellmer::type_boolean(
      description = "Whether to show staged changes",
      required = FALSE
    )
  )

  # Register tools with agent
  agent$register_tool(git_status_tool)
  agent$register_tool(git_log_tool)
  agent$register_tool(git_diff_tool)

  return(agent)
}
