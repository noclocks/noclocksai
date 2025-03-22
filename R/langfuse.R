#  ------------------------------------------------------------------------
#
# Title : Langfuse Integrations
#    By : Jimmy Briggs
#  Date : 2025-03-12
#
#  ------------------------------------------------------------------------

#' Langfuse API Client
#'
#' @name langfuse
#'
#' @description
#' A collection of functions for tracking and evaluating LLM interactions
#' using Langfuse.
#'
#' Below are the functions grouped by category:
#'
#' ## Core Client Functions
#'
#' - `lf_client()`: Create a Langfuse API client configuration.
#' - `lf_ingestion()`: Send data to the Langfuse ingestion endpoint.
#'
#' ## Chat Tracing
#'
#' - `lf_trace_chat()`: Trace an individual ellmer chat interaction.
#' - `lf_trace_chat_session()`: Trace a chat interaction within a session.
#' - `lf_add_feedback()`: Add user feedback for a traced chat interaction.
#'
#' ## Session Management
#'
#' - `lf_create_session()`: Create a new session for grouped interactions.
#' - `lf_create_observation()`: Add an observation to a trace.
#' - `lf_create_evaluation()`: Add an evaluation score to a trace.
#'
#' ## Prompt Management
#'
#' - `lf_add_prompt()`: Add a prompt template to Langfuse.
#' - `lf_get_prompt()`: Retrieve a prompt template from Langfuse.
#'
#' ## Dataset & Experimentation
#'
#' - `lf_add_dataset()`: Create a new dataset for testing.
#' - `lf_add_dataset_item()`: Add an item to a dataset.
#' - `lf_run_experiment()`: Run an experiment using a dataset.
#'
#' @importFrom cli cli_alert_warning cli_alert_danger
#' @importFrom httr2 request req_url_path_append req_method req_headers req_auth_basic
#' @importFrom httr2 req_body_json req_perform resp_check_status resp_body_json
#' @importFrom uuid UUIDgenerate
NULL

#' Create a Langfuse API Client
#'
#' @description
#' This function creates a Langfuse API client configuration.
#'
#' @param secret_key Langfuse API Secret Key. Defaults to `LANGFUSE_SECRET_KEY` environment variable.
#' @param public_key Langfuse API Public Key. Defaults to `LANGFUSE_PUBLIC_KEY` environment variable.
#' @param host Langfuse API Host URL. Defaults to `LANGFUSE_HOST` environment variable.
#'   If not set, defaults to `https://us.cloud.langfuse.com` (US region).
#' @param enabled Whether tracing is enabled. Defaults to `TRUE`.
#'
#' @return A list containing the Langfuse client configuration.
#'
#' @export
#'
#' @examples
#' # Create client with environment variables
#' client <- lf_client()
#'
#' # Create client with explicit keys
#' client <- lf_client(
#'   secret_key = "your_secret_key",
#'   public_key = "your_public_key"
#' )
lf_client <- function(
    secret_key = Sys.getenv("LANGFUSE_SECRET_KEY"),
    public_key = Sys.getenv("LANGFUSE_PUBLIC_KEY"),
    host = Sys.getenv("LANGFUSE_HOST", "https://us.cloud.langfuse.com"),
    enabled = TRUE
) {

  if (nzchar(secret_key) && nzchar(public_key)) {
    enabled <- enabled
  } else {
    enabled <- FALSE
    cli::cli_alert_warning("Langfuse credentials missing. Tracing disabled.")
  }

  list(
    secret_key = secret_key,
    public_key = public_key,
    host = host,
    enabled = enabled
  )
}

#' Send Data to Langfuse Ingestion Endpoint
#'
#' @description
#' This function sends data to the Langfuse `/ingestion` endpoint.
#'
#' @param batch The batch data to send as a list
#' @param client A Langfuse client configuration created with `lf_client()`
#'
#' @return The response from Langfuse on success, FALSE on failure
#'
#' @export
#'
lf_ingestion <- function(batch, client) {
  if (is.null(client) || !isTRUE(client$enabled)) {
    return(FALSE)
  }

  req <- httr2::request(client$host) |>
    httr2::req_url_path_append("api", "public", "ingestion") |>
    httr2::req_method("POST") |>
    httr2::req_headers("Content-Type" = "application/json") |>
    httr2::req_auth_basic(username = client$public_key, password = client$secret_key) |>
    httr2::req_body_json(list(batch = batch))

  tryCatch({
    resp <- httr2::req_perform(req)
    httr2::resp_check_status(resp)
    httr2::resp_body_json(resp)
  }, error = function(e) {
    cli::cli_alert_danger("Failed to ingest data: {conditionMessage(e)}")
    return(FALSE)
  })
}

#' Create a Trace Event
#'
#' @description
#' Creates a trace event for Langfuse.
#'
#' @param name Name of the trace
#' @param user_id User ID
#' @param input Input text
#' @param output Output text
#' @param metadata Additional metadata as a list
#'
#' @return A list representing a trace event
#'
#' @keywords internal
lf_create_trace_event <- function(name, user_id = NULL, input = NULL, output = NULL, metadata = NULL) {
  id <- uuid::UUIDgenerate()
  timestamp <- format(Sys.time(), "%Y-%m-%dT%H:%M:%OS6Z")

  event <- list(
    id = id,
    timestamp = timestamp,
    type = "trace-create",
    body = list(
      id = id,
      timestamp = timestamp,
      name = name,
      environment = "production"
    )
  )

  if (!is.null(user_id)) event$body$userId <- user_id
  if (!is.null(input)) event$body$input <- input
  if (!is.null(output)) event$body$output <- output
  if (!is.null(metadata)) event$body$metadata <- metadata

  return(event)
}

#' Create a Generation Event
#'
#' @description
#' Creates a generation event for Langfuse.
#'
#' @param trace_id Parent trace ID
#' @param model Model name
#' @param prompt Prompt text
#' @param completion Completion text
#' @param metadata Additional metadata as a list
#'
#' @return A list representing a generation event
#'
#' @keywords internal
lf_create_generation_event <- function(trace_id, model, prompt, completion = NULL, metadata = NULL) {
  id <- uuid::UUIDgenerate()
  timestamp <- format(Sys.time(), "%Y-%m-%dT%H:%M:%OS6Z")

  event <- list(
    id = id,
    timestamp = timestamp,
    type = "generation-create",
    body = list(
      id = id,
      traceId = trace_id,
      startTime = timestamp,
      model = model,
      prompt = list(
        role = "user",
        content = prompt
      ),
      metadata = metadata %||% list()
    )
  )

  if (!is.null(completion)) {
    event$body$completion <- completion
    event$body$endTime <- timestamp
  }

  return(event)
}

#' Create a Score Event
#'
#' @description
#' Creates a score event for Langfuse.
#'
#' @param trace_id Parent trace ID
#' @param value Score value (0-1)
#' @param comment Optional comment
#'
#' @return A list representing a score event
#'
#' @keywords internal
lf_create_score_event <- function(trace_id, value, comment = NULL) {
  id <- uuid::UUIDgenerate()
  timestamp <- format(Sys.time(), "%Y-%m-%dT%H:%M:%OS6Z")

  event <- list(
    id = id,
    timestamp = timestamp,
    type = "score-create",
    body = list(
      id = id,
      traceId = trace_id,
      name = "user_feedback",
      value = value
    )
  )

  if (!is.null(comment)) event$body$comment <- comment

  return(event)
}

#' Trace an Ellmer Chat Interaction
#'
#' @description
#' Sends a message to an ellmer chat and tracks the interaction with Langfuse.
#'
#' @param chat An ellmer chat object
#' @param message User message
#' @param langfuse_client Langfuse client configuration from `lf_client()`
#' @param user_id Optional user ID
#' @param metadata Optional metadata
#'
#' @return The chat response with trace_id attribute
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Create a langfuse client
#' lf_client <- lf_client()
#'
#' # Create a chat
#' chat <- ellmer::chat_openai(model = "gpt-4")
#'
#' # Trace a chat interaction
#' response <- lf_trace_chat(
#'   chat = chat,
#'   message = "Tell me about R programming",
#'   langfuse_client = lf_client
#' )
#' }
lf_trace_chat <- function(chat, message, langfuse_client, user_id = NULL, metadata = NULL) {
  if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
    return(chat$chat(message))
  }

  # Create trace
  trace_event <- lf_create_trace_event(
    name = "chat_interaction",
    user_id = user_id,
    input = message,
    metadata = metadata
  )

  # Get trace ID
  trace_id <- trace_event$body$id

  # Start timing
  start_time <- Sys.time()

  # Start generation
  gen_event <- lf_create_generation_event(
    trace_id = trace_id,
    model = chat$get_model(),
    prompt = message,
    metadata = list(
      provider = class(chat$provider)[1],
      start_time = format(start_time, "%Y-%m-%dT%H:%M:%OS6Z")
    )
  )

  # Send events to Langfuse
  lf_ingestion(list(trace_event, gen_event), langfuse_client)

  # Call the chat function
  result <- tryCatch({
    chat$chat(message)
  }, error = function(e) {
    # Log error
    error_gen_event <- lf_create_generation_event(
      trace_id = trace_id,
      model = chat$get_model(),
      prompt = message,
      metadata = list(
        error = conditionMessage(e),
        duration_ms = as.numeric(difftime(Sys.time(), start_time, units = "secs")) * 1000
      )
    )
    lf_ingestion(list(error_gen_event), langfuse_client)
    stop(e)
  })

  # End timing
  end_time <- Sys.time()
  duration_ms <- as.numeric(difftime(end_time, start_time, units = "secs")) * 1000

  # Get the completion text
  completion <- chat$last_turn()@text

  # Send completion
  completion_gen_event <- lf_create_generation_event(
    trace_id = trace_id,
    model = chat$get_model(),
    prompt = message,
    completion = completion,
    metadata = list(
      duration_ms = duration_ms
    )
  )

  # Update trace with output
  update_trace_event <- list(
    id = uuid::UUIDgenerate(),
    timestamp = format(end_time, "%Y-%m-%dT%H:%M:%OS6Z"),
    type = "trace-update",
    body = list(
      id = trace_id,
      output = completion
    )
  )

  # Send events to Langfuse
  lf_ingestion(list(completion_gen_event, update_trace_event), langfuse_client)

  # Store trace ID as an attribute
  attr(result, "trace_id") <- trace_id

  return(result)
}

#' Add Feedback for a Chat Interaction
#'
#' @description
#' Adds user feedback for a traced chat interaction.
#'
#' @param result The result returned from `lf_trace_chat()`
#' @param score Score value (0-1)
#' @param comment Optional comment
#' @param langfuse_client Langfuse client configuration from `lf_client()`
#'
#' @return Invisibly returns whether the feedback was sent
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # First trace a chat interaction
#' response <- lf_trace_chat(chat, "Tell me about R", lf_client)
#'
#' # Then add feedback
#' lf_add_feedback(
#'   result = response,
#'   score = 0.95,
#'   comment = "Very helpful response",
#'   langfuse_client = lf_client
#' )
#' }
lf_add_feedback <- function(result, score, comment = NULL, langfuse_client) {
  if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
    return(invisible(FALSE))
  }

  trace_id <- attr(result, "trace_id")
  if (is.null(trace_id)) {
    cli::cli_alert_warning("No trace ID found. Was this result created with lf_trace_chat()?")
    return(invisible(FALSE))
  }

  # Validate score
  if (!is.numeric(score) || score < 0 || score > 1) {
    cli::cli_alert_error("Score must be a numeric value between 0 and 1")
    return(invisible(FALSE))
  }

  # Create score event
  score_event <- lf_create_score_event(
    trace_id = trace_id,
    value = score,
    comment = comment
  )

  # Send to Langfuse
  result <- lf_ingestion(list(score_event), langfuse_client)

  return(invisible(!isFALSE(result)))
}

#' Create a Session in Langfuse
#'
#' @description
#' Creates a new session for grouping related traces together.
#'
#' @param name Session name
#' @param user_id Optional user ID
#' @param metadata Optional metadata
#' @param langfuse_client Langfuse client configuration from `lf_client()`
#'
#' @return Session ID if successful, NULL otherwise
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Create a session
#' session_id <- lf_create_session(
#'   name = "User Learning Session",
#'   user_id = "user-123",
#'   metadata = list(app_version = "1.0.0"),
#'   langfuse_client = lf_client
#' )
#' }
lf_create_session <- function(name, user_id = NULL, metadata = NULL, langfuse_client) {
  if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
    return(NULL)
  }

  session_id <- uuid::UUIDgenerate()
  timestamp <- format(Sys.time(), "%Y-%m-%dT%H:%M:%OS6Z")

  event <- list(
    id = uuid::UUIDgenerate(),
    timestamp = timestamp,
    type = "session-create",
    body = list(
      id = session_id,
      name = name,
      timestamp = timestamp
    )
  )

  if (!is.null(user_id)) event$body$userId <- user_id
  if (!is.null(metadata)) event$body$metadata <- metadata

  result <- lf_ingestion(list(event), langfuse_client)

  if (!isFALSE(result)) {
    return(session_id)
  } else {
    return(NULL)
  }
}

#' Create an Observation in Langfuse
#'
#' @description
#' Adds an observation to a trace, such as retrieval results or intermediate calculations.
#'
#' @param trace_id Parent trace ID
#' @param type Observation type (e.g., "completion", "prompt", "retrieval")
#' @param input Input text or data
#' @param output Output text or data
#' @param metadata Optional metadata
#' @param langfuse_client Langfuse client configuration from `lf_client()`
#'
#' @return Observation ID if successful, NULL otherwise
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # First trace a chat interaction
#' response <- lf_trace_chat(chat, "Tell me about R", lf_client)
#' trace_id <- attr(response, "trace_id")
#'
#' # Add an observation
#' lf_create_observation(
#'   trace_id = trace_id,
#'   type = "analysis",
#'   input = "User is asking about R",
#'   output = "User seems to be a beginner",
#'   langfuse_client = lf_client
#' )
#' }
lf_create_observation <- function(trace_id, type, input = NULL, output = NULL, metadata = NULL, langfuse_client) {
  if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
    return(NULL)
  }

  observation_id <- uuid::UUIDgenerate()
  timestamp <- format(Sys.time(), "%Y-%m-%dT%H:%M:%OS6Z")

  event <- list(
    id = uuid::UUIDgenerate(),
    timestamp = timestamp,
    type = "observation-create",
    body = list(
      id = observation_id,
      traceId = trace_id,
      type = type,
      timestamp = timestamp
    )
  )

  if (!is.null(input)) event$body$input <- input
  if (!is.null(output)) event$body$output <- output
  if (!is.null(metadata)) event$body$metadata <- metadata

  result <- lf_ingestion(list(event), langfuse_client)

  if (!isFALSE(result)) {
    return(observation_id)
  } else {
    return(NULL)
  }
}

#' Create an Evaluation in Langfuse
#'
#' @description
#' Adds a quality evaluation score to a trace.
#'
#' @param trace_id Parent trace ID
#' @param name Evaluation name
#' @param value Numeric score value (0-1)
#' @param comment Optional comment
#' @param metadata Optional metadata
#' @param langfuse_client Langfuse client configuration from `lf_client()`
#'
#' @return Evaluation ID if successful, NULL otherwise
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # First trace a chat interaction
#' response <- lf_trace_chat(chat, "Tell me about R", lf_client)
#' trace_id <- attr(response, "trace_id")
#'
#' # Add an evaluation
#' lf_create_evaluation(
#'   trace_id = trace_id,
#'   name = "response_quality",
#'   value = 0.95,
#'   comment = "Excellent explanation",
#'   langfuse_client = lf_client
#' )
#' }
lf_create_evaluation <- function(trace_id, name, value, comment = NULL, metadata = NULL, langfuse_client) {
  if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
    return(NULL)
  }

  eval_id <- uuid::UUIDgenerate()
  timestamp <- format(Sys.time(), "%Y-%m-%dT%H:%M:%OS6Z")

  event <- list(
    id = uuid::UUIDgenerate(),
    timestamp = timestamp,
    type = "score-create",
    body = list(
      id = eval_id,
      traceId = trace_id,
      name = name,
      value = value,
      timestamp = timestamp
    )
  )

  if (!is.null(comment)) event$body$comment <- comment
  if (!is.null(metadata)) event$body$metadata <- metadata

  result <- lf_ingestion(list(event), langfuse_client)

  if (!isFALSE(result)) {
    return(eval_id)
  } else {
    return(NULL)
  }
}

#' Add a Prompt to Langfuse
#'
#' @description
#' Adds a prompt template to Langfuse for version control and reuse.
#'
#' @param name Prompt name
#' @param prompt Prompt text or array of message objects (depends on type)
#' @param type Prompt type, either "text" or "chat"
#' @param config Optional configuration parameters (model, temperature, etc.)
#' @param labels Optional list of labels for organizing prompts
#' @param tags Optional list of tags for categorizing prompts
#' @param commit_message Optional message describing changes (for versioning)
#' @param langfuse_client Langfuse client configuration from `lf_client()`
#'
#' @return Prompt ID if successful, NULL otherwise
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Add a text prompt template
#' prompt_id <- lf_add_prompt(
#'   name = "r_tutorial_text",
#'   prompt = "You are a helpful R programming tutor. Explain {{topic}} with examples.",
#'   type = "text",
#'   langfuse_client = lf_client
#' )
#'
#' # Add a chat prompt template
#' prompt_id <- lf_add_prompt(
#'   name = "r_tutorial_chat",
#'   prompt = list(
#'     list(role = "system", content = "You are a helpful R programming tutor."),
#'     list(role = "user", content = "Explain {{topic}} in simple terms with examples.")
#'   ),
#'   type = "chat",
#'   config = list(model = "gpt-4", temperature = 0.7),
#'   labels = c("tutorial", "r-programming"),
#'   langfuse_client = lf_client
#' )
#' }
lf_add_prompt <- function(name, prompt, type = c("chat", "text"), config = NULL,
                          labels = NULL, tags = NULL, commit_message = NULL,
                          langfuse_client) {
  if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
    return(NULL)
  }

  type <- match.arg(type)

  # Prepare the request body
  body <- list(
    name = name,
    type = type
  )

  # Handle the prompt format based on type
  if (type == "text") {
    # For text prompts, ensure it's a simple string
    if (!is.character(prompt) || length(prompt) != 1) {
      cli::cli_alert_danger("For text prompts, 'prompt' must be a single character string")
      return(NULL)
    }
    body$prompt = prompt
  } else if (type == "chat") {
    # For chat prompts, ensure it's an array of messages with role/content
    if (is.character(prompt) && length(prompt) == 1) {
      # Convert simple string to a chat format with user role
      body$prompt = list(list(role = "user", content = prompt))
    } else if (is.list(prompt)) {
      # Validate the list structure
      valid <- all(sapply(prompt, function(msg) {
        is.list(msg) && !is.null(msg$role) && !is.null(msg$content)
      }))

      if (!valid) {
        cli::cli_alert_danger("Chat prompts must be a list of objects with 'role' and 'content' fields")
        return(NULL)
      }
      body$prompt = prompt
    } else {
      cli::cli_alert_danger("Invalid prompt format for chat type")
      return(NULL)
    }
  }

  # Add optional parameters if provided
  if (!is.null(config)) body$config <- config
  if (!is.null(labels)) body$labels <- as.list(labels)
  if (!is.null(tags)) body$tags <- as.list(tags)
  if (!is.null(commit_message)) body$commitMessage <- commit_message

  # Create the API request
  req <- httr2::request(langfuse_client$host) |>
    httr2::req_url_path_append("api", "public", "v2", "prompts") |>
    httr2::req_method("POST") |>
    httr2::req_headers("Content-Type" = "application/json") |>
    httr2::req_auth_basic(username = langfuse_client$public_key, password = langfuse_client$secret_key) |>
    httr2::req_body_json(body)

  tryCatch({
    resp <- httr2::req_perform(req)
    httr2::resp_check_status(resp)
    result <- httr2::resp_body_json(resp)
    return(result$id)
  }, error = function(e) {
    cli::cli_alert_danger("Failed to create prompt: {conditionMessage(e)}")
    return(NULL)
  })
}

#' Get a Prompt from Langfuse
#'
#' @description
#' Retrieves a prompt template from Langfuse.
#'
#' @param prompt_name Name of the prompt to retrieve
#' @param version Specific version number to retrieve (if NULL, latest version will be fetched)
#' @param label Label of the prompt to retrieve (optional)
#' @param langfuse_client Langfuse client configuration from `lf_client()`
#'
#' @return Prompt object if successful, NULL otherwise
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Get the latest version of a prompt
#' prompt <- lf_get_prompt(
#'   prompt_name = "r_tutorial_chat",
#'   langfuse_client = lf_client
#' )
#'
#' # Get a specific version of a prompt
#' prompt <- lf_get_prompt(
#'   prompt_name = "r_tutorial_chat",
#'   version = 2,
#'   langfuse_client = lf_client
#' )
#'
#' # Get a prompt with a specific label
#' prompt <- lf_get_prompt(
#'   prompt_name = "r_tutorial_chat",
#'   label = "development",
#'   langfuse_client = lf_client
#' )
#' }
lf_get_prompt <- function(prompt_name, version = NULL, label = NULL, langfuse_client) {
  if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
    return(NULL)
  }

  # Validate prompt name
  if (is.null(prompt_name) || !is.character(prompt_name) || nchar(prompt_name) == 0) {
    cli::cli_alert_danger("'prompt_name' must be a non-empty string")
    return(NULL)
  }

  # If version is not provided, try to get a list of versions first
  if (is.null(version) && is.null(label)) {
    # Get all prompt versions
    versions_req <- httr2::request(langfuse_client$host) |>
      httr2::req_url_path_append("api", "public", "v2", "prompts", prompt_name, "versions") |>
      httr2::req_method("GET") |>
      httr2::req_auth_basic(username = langfuse_client$public_key, password = langfuse_client$secret_key)

    versions_result <- tryCatch({
      resp <- httr2::req_perform(versions_req)
      httr2::resp_check_status(resp)
      httr2::resp_body_json(resp)
    }, error = function(e) {
      cli::cli_alert_warning("Failed to get prompt versions: {conditionMessage(e)}")
      return(NULL)
    })

    # If we got versions, use the latest one
    if (!is.null(versions_result) && length(versions_result) > 0) {
      # Sort by version number (descending)
      version_numbers <- sapply(versions_result, function(v) as.integer(v$version))
      latest_version <- max(version_numbers)
      cli::cli_alert_info("Using latest version: {latest_version}")
      version <- latest_version
    } else {
      # Default to version 1 if we couldn't get a list of versions
      cli::cli_alert_info("Could not determine latest version, defaulting to version 1")
      version <- 1
    }
  }

  # Build the request for a specific version or label
  req <- httr2::request(langfuse_client$host) |>
    httr2::req_url_path_append("api", "public", "v2", "prompts", prompt_name) |>
    httr2::req_method("GET") |>
    httr2::req_auth_basic(username = langfuse_client$public_key, password = langfuse_client$secret_key)

  # Add optional query parameters
  if (!is.null(version)) {
    req <- httr2::req_url_query(req, version = as.integer(version))
  }

  if (!is.null(label)) {
    req <- httr2::req_url_query(req, label = label)
  }

  tryCatch({
    resp <- httr2::req_perform(req)
    httr2::resp_check_status(resp)
    result <- httr2::resp_body_json(resp)
    return(result)
  }, error = function(e) {
    cli::cli_alert_danger("Failed to get prompt: {conditionMessage(e)}")
    return(NULL)
  })
}

#' Add a Dataset to Langfuse
#'
#' @description
#' Creates a new dataset for testing and evaluation.
#'
#' @param name Dataset name
#' @param description Dataset description (optional)
#' @param metadata Additional metadata as a list (optional)
#' @param langfuse_client Langfuse client configuration from `lf_client()`
#'
#' @return Dataset ID if successful, NULL otherwise
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Create a dataset
#' dataset_id <- lf_add_dataset(
#'   name = "R Programming Questions",
#'   description = "Common questions about R programming for testing",
#'   langfuse_client = lf_client
#' )
#' }
lf_add_dataset <- function(name, description = NULL, metadata = NULL, langfuse_client) {
  if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
    return(NULL)
  }

  # Build request body
  body <- list(name = name)
  if (!is.null(description)) body$description <- description
  if (!is.null(metadata)) body$metadata <- metadata

  req <- httr2::request(langfuse_client$host) |>
    httr2::req_url_path_append("api", "public", "v2", "datasets") |>
    httr2::req_method("POST") |>
    httr2::req_headers("Content-Type" = "application/json") |>
    httr2::req_auth_basic(username = langfuse_client$public_key, password = langfuse_client$secret_key) |>
    httr2::req_body_json(body)

  tryCatch({
    resp <- httr2::req_perform(req)
    httr2::resp_check_status(resp)
    result <- httr2::resp_body_json(resp)
    return(result$id)
  }, error = function(e) {
    cli::cli_alert_danger("Failed to create dataset: {conditionMessage(e)}")
    return(NULL)
  })
}

#' Add an Item to a Dataset
#'
#' @description
#' Adds a test item to a Langfuse dataset.
#'
#' @param dataset_name Name of the dataset
#' @param input Input text or data
#' @param expected_output Expected output (optional)
#' @param metadata Optional metadata as a list
#' @param source_trace_id Optional trace ID that this item is based on
#' @param source_observation_id Optional observation ID that this item is based on
#' @param id Optional custom ID for the dataset item (must be unique)
#' @param status Item status ("ACTIVE" or "ARCHIVED", defaults to "ACTIVE")
#' @param langfuse_client Langfuse client configuration from `lf_client()`
#'
#' @return Item ID if successful, NULL otherwise
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Add an item to a dataset
#' lf_add_dataset_item(
#'   dataset_name = "R Programming Questions",
#'   input = "What are the differences between a list and a data frame in R?",
#'   expected_output = "A detailed comparison of lists and data frames",
#'   metadata = list(category = "data_structures"),
#'   langfuse_client = lf_client
#' )
#'
#' # Add an item with a custom ID
#' lf_add_dataset_item(
#'   dataset_name = "R Programming Questions",
#'   input = "How do you create a ggplot2 visualization?",
#'   id = "ggplot2-question",
#'   langfuse_client = lf_client
#' )
#' }
lf_add_dataset_item <- function(dataset_name, input, expected_output = NULL,
                                metadata = NULL, source_trace_id = NULL,
                                source_observation_id = NULL, id = NULL,
                                status = "ACTIVE", langfuse_client) {
  if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
    return(NULL)
  }

  # Validate required parameters
  if (is.null(dataset_name) || !is.character(dataset_name) || nchar(dataset_name) == 0) {
    cli::cli_alert_danger("'dataset_name' must be a non-empty string")
    return(NULL)
  }

  # Build the request body
  body <- list(
    datasetName = dataset_name,
    input = input,
    status = status
  )

  # Add optional fields
  if (!is.null(expected_output)) body$expectedOutput <- expected_output
  if (!is.null(metadata)) body$metadata <- metadata
  if (!is.null(source_trace_id)) body$sourceTraceId <- source_trace_id
  if (!is.null(source_observation_id)) body$sourceObservationId <- source_observation_id
  if (!is.null(id)) body$id <- id

  req <- httr2::request(langfuse_client$host) |>
    httr2::req_url_path_append("api", "public", "dataset-items") |>
    httr2::req_method("POST") |>
    httr2::req_headers("Content-Type" = "application/json") |>
    httr2::req_auth_basic(username = langfuse_client$public_key, password = langfuse_client$secret_key) |>
    httr2::req_body_json(body)

  tryCatch({
    resp <- httr2::req_perform(req)
    httr2::resp_check_status(resp)
    result <- httr2::resp_body_json(resp)
    return(result$id)
  }, error = function(e) {
    cli::cli_alert_danger("Failed to add dataset item: {conditionMessage(e)}")
    return(NULL)
  })
}

#' Run an Experiment on a Dataset
#'
#' @description
#' Runs an experiment by processing items from a dataset and recording the results.
#'
#' @param name Experiment name
#' @param dataset_name Name of the dataset to use
#' @param chat_function Function to process each item (should accept input and return output)
#' @param langfuse_client Langfuse client configuration from `lf_client()`
#' @param max_items Maximum number of items to process (0 = all)
#' @param filter_status Filter items by status ("ACTIVE" or "ARCHIVED")
#'
#' @return Experiment results as a list
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Run an experiment with a fresh chat instance for each item
#' experiment_results <- lf_run_experiment(
#'   name = "R Tutor Test",
#'   dataset_name = "R Programming Questions",
#'   chat_function = function(input) {
#'     # Create a fresh chat for each item
#'     item_chat <- ellmer::chat_openai(model = "gpt-4o")
#'     # The chat() method returns the text response directly
#'     return(item_chat$chat(input))
#'   },
#'   langfuse_client = lf_client,
#'   max_items = 10
#' )
#' }
lf_run_experiment <- function(name, dataset_name, chat_function, langfuse_client,
                              max_items = 0, filter_status = "ACTIVE") {
  if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
    cli::cli_alert_warning("Langfuse client not configured or disabled")
    return(NULL)
  }

  # Get dataset items
  req <- httr2::request(langfuse_client$host) |>
    httr2::req_url_path_append("api", "public", "dataset-items") |>
    httr2::req_method("GET") |>
    httr2::req_auth_basic(username = langfuse_client$public_key, password = langfuse_client$secret_key) |>
    httr2::req_url_query(datasetName = dataset_name)

  # Add status filter if provided
  if (!is.null(filter_status)) {
    req <- httr2::req_url_query(req, status = filter_status)
  }

  items_response <- tryCatch({
    resp <- httr2::req_perform(req)
    httr2::resp_check_status(resp)
    httr2::resp_body_json(resp)
  }, error = function(e) {
    cli::cli_alert_danger("Failed to get dataset items: {conditionMessage(e)}")
    return(NULL)
  })

  # Handle different possible response formats from the API
  items <- NULL
  if (is.null(items_response)) {
    items <- NULL
  } else if (is.list(items_response) && length(items_response) > 0) {
    if ("items" %in% names(items_response) && is.list(items_response$items)) {
      # If response has an "items" field that's a list, use that
      items <- items_response$items
    } else {
      # Otherwise assume the response itself is the list of items
      items <- items_response
    }
  }

  if (is.null(items) || length(items) == 0) {
    cli::cli_alert_warning("No items found in dataset")
    return(NULL)
  }

  # Limit items if requested
  if (max_items > 0 && max_items < length(items)) {
    items <- items[1:max_items]
  }

  # Create experiment session
  session_id <- lf_create_session(
    name = paste0("Experiment: ", name),
    metadata = list(
      dataset_name = dataset_name,
      item_count = length(items)
    ),
    langfuse_client = langfuse_client
  )

  # Process each item
  results <- lapply(items, function(item) {
    # Extract and validate item ID
    item_id <- "unknown"
    if (!is.null(item$id) && is.character(item$id) && nchar(item$id) > 0) {
      item_id <- item$id
    }

    # Make sure we have a valid input
    if (is.null(item$input) || !is.character(item$input) || nchar(item$input) == 0) {
      cli::cli_alert_warning("Item {item_id} has no valid input, skipping")
      return(list(
        item_id = item_id,
        error = "No valid input found",
        skipped = TRUE
      ))
    }

    cli::cli_alert_info("Processing item {item_id}")

    # Create a trace for this item
    trace_event <- lf_create_trace_event(
      name = paste0("experiment_item_", item_id),
      metadata = list(
        dataset_name = dataset_name,
        item_id = item_id,
        session_id = session_id,
        experiment_name = name
      )
    )
    trace_id <- trace_event$body$id

    # Send the trace event
    lf_ingestion(list(trace_event), langfuse_client)

    # Process the item using the provided function
    start_time <- Sys.time()
    output <- NULL
    error <- NULL

    # Use tryCatch to properly capture any errors
    tryCatch({
      output <- chat_function(item$input)

      # Ensure output is a character string
      if (!is.character(output)) {
        output <- as.character(output)
      }
    }, error = function(e) {
      error <- conditionMessage(e)
      cli::cli_alert_danger("Error processing item {item_id}: {error}")
    })

    end_time <- Sys.time()
    duration_ms <- as.numeric(difftime(end_time, start_time, units = "secs")) * 1000

    # Create appropriate events based on success or failure
    if (is.null(error)) {
      # Create a generation event with the successful output
      gen_event <- lf_create_generation_event(
        trace_id = trace_id,
        model = "experiment",
        prompt = item$input,
        completion = output,
        metadata = list(
          duration_ms = duration_ms
        )
      )

      # Update trace with output
      update_trace_event <- list(
        id = uuid::UUIDgenerate(),
        timestamp = format(end_time, "%Y-%m-%dT%H:%M:%OS6Z"),
        type = "trace-update",
        body = list(
          id = trace_id,
          output = output
        )
      )

      # Send events to Langfuse
      lf_ingestion(list(gen_event, update_trace_event), langfuse_client)

      # If expected output exists, create an evaluation
      if (!is.null(item$expectedOutput)) {
        # Here you could add an automated evaluation
      }
    } else {
      # Log the error to Langfuse
      error_gen_event <- lf_create_generation_event(
        trace_id = trace_id,
        model = "experiment",
        prompt = item$input,
        metadata = list(
          error = error,
          duration_ms = duration_ms
        )
      )

      # Update trace with error info
      error_trace_event <- list(
        id = uuid::UUIDgenerate(),
        timestamp = format(end_time, "%Y-%m-%dT%H:%M:%OS6Z"),
        type = "trace-update",
        body = list(
          id = trace_id,
          output = paste("Error:", error),
          status = "error"
        )
      )

      lf_ingestion(list(error_gen_event, error_trace_event), langfuse_client)
    }

    return(list(
      item_id = item_id,
      input = item$input,
      output = output,
      error = error,
      trace_id = trace_id,
      duration_ms = duration_ms
    ))
  })

  return(list(
    experiment_name = name,
    dataset_name = dataset_name,
    session_id = session_id,
    results = results
  ))
}

#' Trace a Chat Interaction within a Session
#'
#' @description
#' Sends a message to an ellmer chat and tracks the interaction with Langfuse
#' within a defined session.
#'
#' @param chat An ellmer chat object
#' @param message User message
#' @param session_id Session ID for grouped traces from `lf_create_session()`
#' @param langfuse_client Langfuse client configuration from `lf_client()`
#' @param user_id Optional user ID
#' @param metadata Optional metadata
#'
#' @return The chat response with trace_id and session_id attributes
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Create a langfuse client and session
#' lf_client <- lf_client()
#' session_id <- lf_create_session(name = "Learning Session", langfuse_client = lf_client)
#'
#' # Create a chat
#' chat <- ellmer::chat_openai(model = "gpt-4")
#'
#' # Trace chat interactions in the session
#' response1 <- lf_trace_chat_session(
#'   chat = chat,
#'   message = "What are the main features of R?",
#'   session_id = session_id,
#'   langfuse_client = lf_client
#' )
#'
#' response2 <- lf_trace_chat_session(
#'   chat = chat,
#'   message = "Tell me more about data visualization in R",
#'   session_id = session_id,
#'   langfuse_client = lf_client
#' )
#' }
lf_trace_chat_session <- function(chat, message, session_id, langfuse_client, user_id = NULL, metadata = NULL) {
  if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
    return(chat$chat(message))
  }

  # Create trace with session ID
  trace_event <- lf_create_trace_event(
    name = "chat_interaction",
    user_id = user_id,
    input = message,
    metadata = metadata
  )

  # Add session ID to trace
  trace_event$body$sessionId <- session_id

  # Get trace ID
  trace_id <- trace_event$body$id

  # Start timing
  start_time <- Sys.time()

  # Start generation
  gen_event <- lf_create_generation_event(
    trace_id = trace_id,
    model = chat$get_model(),
    prompt = message,
    metadata = list(
      provider = class(chat$provider)[1],
      start_time = format(start_time, "%Y-%m-%dT%H:%M:%OS6Z")
    )
  )

  # Send events to Langfuse
  lf_ingestion(list(trace_event, gen_event), langfuse_client)

  # Call the chat function
  result <- tryCatch({
    chat$chat(message)
  }, error = function(e) {
    # Log error
    error_gen_event <- lf_create_generation_event(
      trace_id = trace_id,
      model = chat$get_model(),
      prompt = message,
      metadata = list(
        error = conditionMessage(e),
        duration_ms = as.numeric(difftime(Sys.time(), start_time, units = "secs")) * 1000
      )
    )
    lf_ingestion(list(error_gen_event), langfuse_client)
    stop(e)
  })

  # End timing
  end_time <- Sys.time()
  duration_ms <- as.numeric(difftime(end_time, start_time, units = "secs")) * 1000

  # Get the completion text
  completion <- chat$last_turn()@text

  # Send completion
  completion_gen_event <- lf_create_generation_event(
    trace_id = trace_id,
    model = chat$get_model(),
    prompt = message,
    completion = completion,
    metadata = list(
      duration_ms = duration_ms
    )
  )

  # Update trace with output
  update_trace_event <- list(
    id = uuid::UUIDgenerate(),
    timestamp = format(end_time, "%Y-%m-%dT%H:%M:%OS6Z"),
    type = "trace-update",
    body = list(
      id = trace_id,
      output = completion
    )
  )

  # Send events to Langfuse
  lf_ingestion(list(completion_gen_event, update_trace_event), langfuse_client)

  # Store trace ID and session ID as attributes
  attr(result, "trace_id") <- trace_id
  attr(result, "session_id") <- session_id

  return(result)
}
