#  ------------------------------------------------------------------------
#
# Title : AI Agents
#    By : Jimmy Briggs
#  Date : 2025-03-03
#
#  ------------------------------------------------------------------------


# class -----------------------------------------------------------------------------------------------------------

#' Agent Class
#'
#' @description
#' The Agent class provides a framework for creating and managing AI agents with
#' memory, tools, and vector store capabilities.
#'
#' @export
Agent <- R6::R6Class(
  "Agent",
  public = list(
    #' @field chat The ellmer Chat object
    chat = NULL,

    #' @field memory List of conversation memory entries
    memory = NULL,

    #' @field prompts List of prompts used by the agent
    prompts = NULL,

    #' @field resources List of resources available to the agent
    resources = NULL,

    #' @field config List of configuration settings
    config = NULL,

    #' @field vector_store Vector store configuration and connection
    vector_store = NULL,

    #' @field name Name of the agent
    name = NULL,

    #' @description Initialize a new Agent
    #' @param provider Provider for the chat model ("openai", "anthropic", "gemini", "ollama", "groq")
    #' @param model Model name to use
    #' @param system_prompt System prompt for the chat
    #' @param name Name of the agent (optional)
    #' @param prompts List of additional prompts
    #' @param config Configuration settings
    #' @param resources List of resources
    #' @param ... Additional arguments passed to the chat function
    initialize = function(
      provider = c("openai", "anthropic", "gemini", "ollama", "groq"),
      model = "gpt-4o",
      system_prompt = NULL,
      name = NULL,
      prompts = list(),
      config = list(
        temperature = 0,
        timeout = 6000,
        max_tokens = 1000,
        echo = FALSE,
        logger = NULL,
        use_memory = TRUE,
        capabilities = list(
          memory = TRUE,
          tools = TRUE,
          rag = FALSE,
          vector_store = FALSE,
          resources = FALSE
        )
      ),
      resources = list(),
      ...
    ) {
      # Validate provider
      provider <- match.arg(provider)

      # Set name
      self$name <- name %||% paste0(provider, "-", model, "-agent")

      # Get appropriate chat function
      chat_func <- switch(
        provider,
        "openai" = ellmer::chat_openai,
        "anthropic" = ellmer::chat_claude,
        "gemini" = ellmer::chat_gemini,
        "ollama" = ellmer::chat_ollama,
        "groq" = ellmer::chat_groq
      )

      # Initialize chat
      self$chat <- chat_func(
        model = model,
        system_prompt = system_prompt,
        api_args = list(
          temperature = config$temperature,
          max_tokens = config$max_tokens,
          timeout_ms = config$timeout
        ),
        echo = config$echo,
        ...
      )

      # Set prompts
      self$prompts <- list(
        system = system_prompt,
        user = prompts
      )

      # Set resources
      self$resources <- resources

      # Set config
      self$config <- list(
        provider = provider,
        model = model,
        system_prompt = system_prompt,
        use_memory = config$use_memory,
        capabilities = config$capabilities,
        temperature = config$temperature,
        max_tokens = config$max_tokens,
        timeout = config$timeout,
        echo = config$echo
      )

      # Initialize memory
      self$memory <- list()

      # Initialize vector store
      self$vector_store <- list()

      # Set up agent tools
      private$setup_agent_tools()

      cli::cli_alert_success(
        "Agent {.field {self$name}} initialized using {.field {provider}} provider and the {.field {model}} model."
      )
    },

    #' @description Send a query to the agent and get a response
    #' @param query The query to send
    #' @param echo Whether to echo the conversation
    #' @return The agent's response
    chat = function(query, echo = TRUE) {
      # Create memory entry
      memory_entry <- list(
        timestamp = Sys.time(),
        query = paste0("User: ", query),
        response = NULL
      )

      # Augment query with memory if enabled
      if (self$config$use_memory) {
        query <- private$augment_with_memory(query)
      }

      # Get response from chat
      response <- self$chat$chat(query, echo = echo)

      # Update memory
      memory_entry$response <- paste0("AI: ", response)
      self$memory <- append(self$memory, list(memory_entry))

      return(response)
    },

    #' @description Register a tool with the agent
    #' @param tool An ellmer tool object
    #' @return The agent object (invisibly)
    register_tool = function(tool) {
      check_tool(tool)
      self$chat$register_tool(tool)
      cli::cli_alert_success("Tool {.field {tool@name}} registered successfully.")
      invisible(self)
    },

    #' @description Connect to a database for vector storage
    #' @param db_config Database configuration
    #' @param pool Whether to use connection pooling
    #' @return The agent object (invisibly)
    db_connect = function(db_config, pool = TRUE) {
      check_db_config(db_config)
      db_conn <- db_connect(db_config, pool = pool)
      self$vector_store$db_conn <- db_conn
      check_db_conn(db_conn)
      cli::cli_alert_success("Vector store database connection established successfully.")

      # Create vector search tool
      search_tool <- ellmer::tool(
        .name = "search_vector_store",
        .fun = private$search_vector_store,
        .description = "Search the vector store for relevant information.",
        query = ellmer::type_string(
          description = "The search query to be performed to find relevant information",
          required = TRUE
        )
      )

      # Register the search tool
      self$register_tool(search_tool)

      invisible(self)
    },

    #' @description Get information about a database schema
    #' @param pool Database connection pool
    #' @param schema Schema name
    #' @return Schema information
    db_schema_info = function(pool, schema = NULL) {
      check_db_conn(pool)
      schema_info <- db_schema_info(pool, schema = schema)
      return(schema_info)
    },

    #' @description Save the agent's state to a file
    #' @param file_path Path to save the file
    #' @return The agent object (invisibly)
    save_state = function(file_path) {
      # Create directory if it doesn't exist
      dir_path <- dirname(file_path)
      if (!dir.exists(dir_path)) {
        dir.create(dir_path, recursive = TRUE)
      }

      # Save state
      state <- list(
        name = self$name,
        memory = self$memory,
        config = self$config,
        resources = self$resources,
        history = self$chat$get_turns()
      )
      qs2::qs_save(state, file_path)
      cli::cli_alert_success("Agent state saved to {.field {file_path}}.")
      invisible(self)
    },

    #' @description Load the agent's state from a file
    #' @param file_path Path to the state file
    #' @return The agent object (invisibly)
    load_state = function(file_path) {
      if (!file.exists(file_path)) {
        cli::cli_abort("File {.field {file_path}} does not exist.")
      }

      # Load state
      state <- qs2::qs_load(file_path)

      # Update agent properties
      if (!is.null(state$name)) self$name <- state$name
      if (!is.null(state$memory)) self$memory <- state$memory
      if (!is.null(state$config)) self$config <- state$config
      if (!is.null(state$resources)) self$resources <- state$resources

      # Restore chat history
      if (!is.null(state$history)) {
        self$chat$set_turns(state$history)
      }

      cli::cli_alert_success("Agent state loaded from {.field {file_path}}.")
      invisible(self)
    },

    #' @description Clear the agent's memory
    #' @return The agent object (invisibly)
    clear_memory = function() {
      self$memory <- list()
      cli::cli_alert_success("Agent memory cleared.")
      invisible(self)
    },

    #' @description Add a resource to the agent
    #' @param name Name of the resource
    #' @param content Content of the resource
    #' @param type Type of the resource
    #' @return The agent object (invisibly)
    add_resource = function(name, content, type = NULL) {
      if (is.null(type)) {
        type <- class(content)[1]
      }

      self$resources[[name]] <- list(
        content = content,
        type = type,
        timestamp = Sys.time()
      )

      cli::cli_alert_success("Resource {.field {name}} added to agent.")
      invisible(self)
    },

    #' @description Get a resource from the agent
    #' @param name Name of the resource
    #' @return The resource content
    get_resource = function(name) {
      if (!name %in% names(self$resources)) {
        cli::cli_abort("Resource {.field {name}} not found.")
      }

      return(self$resources[[name]]$content)
    }
  ),

  private = list(
    #' @description Set up agent tools
    setup_agent_tools = function() {
      # Skip if tools not enabled
      if (!self$config$capabilities$tools) {
        return(invisible(NULL))
      }

      # Add current time tool
      self$register_tool(tool_current_time())

      # Add extract code tool
      self$register_tool(tool_extract_code())

      # Additional tools can be added here

      cli::cli_alert_success("Default agent tools configured.")
      invisible(NULL)
    },

    #' @description Augment a query with memory context
    #' @param query The query to augment
    #' @return The augmented query
    augment_with_memory = function(query) {
      # Skip if no memory or memory not enabled
      if (length(self$memory) == 0 || !self$config$use_memory) {
        return(query)
      }

      # Get last 5 memory entries (or fewer if not available)
      memory_count <- min(5, length(self$memory))
      recent_memory <- self$memory[(length(self$memory) - memory_count + 1):length(self$memory)]

      # Format memory as context
      memory_text <- paste(
        sapply(recent_memory, function(entry) {
          paste(entry$query, entry$response, sep = "\n")
        }),
        collapse = "\n\n"
      )

      # Add memory context to query
      augmented_query <- paste(
        "Here's our recent conversation for context:\n\n",
        memory_text,
        "\n\nNow, please respond to my new question:\n",
        query,
        sep = ""
      )

      return(augmented_query)
    },

    #' @description Search the vector store for relevant information
    #' @param query The search query
    #' @return Search results
    search_vector_store = function(query) {
      if (is.null(self$vector_store$db_conn)) {
        return("Vector store not connected. Please connect to a database first.")
      }

      # Get connection
      conn <- self$vector_store$db_conn

      # Get documents
      docs <- db_get_documents(conn, query)

      # Format results
      if (nrow(docs) == 0) {
        return("No relevant documents found for the query.")
      }

      formatted_results <- paste(
        sapply(1:nrow(docs), function(i) {
          paste0(
            "Document ", i, ": ", docs$title[i], "\n",
            "Content: ", substr(docs$content[i], 1, 500),
            if (nchar(docs$content[i]) > 500) "..." else "",
            "\n\n"
          )
        }),
        collapse = ""
      )

      return(formatted_results)
    }
  )
)

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
