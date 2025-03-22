#  ------------------------------------------------------------------------
#
# Title : Langfuse Workflow Example
#    By : Jimmy Briggs
#  Date : 2025-03-12
#
#  ------------------------------------------------------------------------

library(R6)
library(ellmer)
library(httr2)
library(uuid)
library(cli)

pkgload::load_all()

langfuse_config <- config::get("langfuse")

Sys.setenv("LANGFUSE_SECRET_KEY" = langfuse_config$secret_key)
Sys.setenv("LANGFUSE_PUBLIC_KEY" = langfuse_config$public_key)

# Initialize a Langfuse client
lf_client <- lf_client(
  secret_key = Sys.getenv("LANGFUSE_SECRET_KEY"),
  public_key = Sys.getenv("LANGFUSE_PUBLIC_KEY")
)

# Create a regular ellmer chat
chat <- ellmer::chat_openai(
  model = "gpt-4o",
  system_prompt = "You are a helpful assistant."
)

# Create a new session
session_id <- lf_create_session(
  name = "User Learning Session",
  user_id = "user-123",
  metadata = list(
    app_version = "1.0.0",
    session_type = "tutorial"
  ),
  langfuse_client = lf_client
)

# Have a conversation in a session
result1 <- lf_trace_chat_session(
  chat = chat,
  message = "What are the main features of R?",
  session_id = session_id,
  langfuse_client = lf_client,
  user_id = "user-123"
)

# Continue the conversation
result2 <- lf_trace_chat_session(
  chat = chat,
  message = "Can you explain more about data visualization in R?",
  session_id = session_id,
  langfuse_client = lf_client,
  user_id = "user-123"
)

# Add some observations about the conversation
lf_create_observation(
  trace_id = attr(result2, "trace_id"),
  type = "analysis",
  input = "User is asking follow-up questions about R visualization",
  output = "User seems engaged and interested in data visualization",
  metadata = list(
    topic = "data_visualization",
    expertise_level = "beginner"
  ),
  langfuse_client = lf_client
)

# Add evaluation for the quality of response
lf_create_evaluation(
  trace_id = attr(result2, "trace_id"),
  name = "response_quality",
  value = 0.95,
  comment = "Excellent explanation with good examples",
  metadata = list(
    evaluated_by = "system"
  ),
  langfuse_client = lf_client
)

# Add a text prompt to Langfuse for reuse
text_prompt_id <- lf_add_prompt(
  name = "r_tutorial_text",
  prompt = "You are a helpful R programming tutor. Explain {{topic}} in simple terms with examples.",
  type = "text",
  langfuse_client = lf_client
)

# Add a chat-style prompt to Langfuse
chat_prompt_id <- lf_add_prompt(
  name = "r_tutorial_chat",
  prompt = list(
    list(role = "system", content = "You are a helpful R programming tutor."),
    list(role = "user", content = "Explain {{topic}} in simple terms with examples.")
  ),
  type = "chat",
  config = list(model = "gpt-4o", temperature = 0.7),
  labels = c("tutorial", "r-programming"),
  langfuse_client = lf_client
)

# Create a dataset for testing
dataset_id <- lf_add_dataset(
  name = "R Programming Questions",
  description = "Common questions about R programming for testing",
  metadata = list(
    created_by = "noclocksai",
    category = "programming"
  ),
  langfuse_client = lf_client
)

# Add items to the dataset
lf_add_dataset_item(
  dataset_name = "R Programming Questions",
  input = "What are the differences between a list and a data frame in R?",
  expected_output = "A detailed comparison of lists and data frames",
  metadata = list(
    category = "data_structures",
    difficulty = "beginner"
  ),
  langfuse_client = lf_client
)

lf_add_dataset_item(
  dataset_name = "R Programming Questions",
  input = "How do you create a ggplot2 visualization with multiple layers?",
  expected_output = "Step-by-step explanation of ggplot2 layers",
  metadata = list(
    category = "visualization",
    difficulty = "intermediate"
  ),
  langfuse_client = lf_client
)

# Add an item with a custom ID
lf_add_dataset_item(
  dataset_name = "R Programming Questions",
  input = "Explain R's apply family of functions",
  expected_output = "Overview of apply, lapply, sapply, etc.",
  id = "apply-functions",
  metadata = list(
    category = "functions",
    difficulty = "intermediate"
  ),
  langfuse_client = lf_client
)

# Retrieve the latest version of a prompt automatically
chat_prompt <- lf_get_prompt(
  prompt_name = "r_tutorial_chat",
  langfuse_client = lf_client
)

# Retrieve a specific version of a prompt explicitly
text_prompt_v1 <- lf_get_prompt(
  prompt_name = "r_tutorial_text",
  version = 1,
  langfuse_client = lf_client
)

# Run an experiment on the dataset with direct text capture
experiment_results <- lf_run_experiment(
  name = "R Tutor Test",
  dataset_name = "R Programming Questions",
  chat_function = function(input) {
    # Create a fresh chat for each item to avoid state issues
    item_chat <- ellmer::chat_openai(
      model = "gpt-4o",
      system_prompt = "You are a helpful R programming assistant."
    )

    # Call the chat function and capture the response directly
    response <- item_chat$chat(input)

    # The chat() method returns the text response directly
    return(response)
  },
  langfuse_client = lf_client,
  max_items = 2  # Process maximum 2 items
)

# Create a regular ellmer chat
chat <- ellmer::chat_openai(
  model = "gpt-4o",
  system_prompt = "You are a helpful assistant."
)

# Use the chat with tracing
result <- lf_trace_chat(
  chat = chat,
  message = "What are the main features of R?",
  langfuse_client = lf_client,
  user_id = "user-123",
  metadata = list(
    session_type = "learning",
    client_version = "1.0.0"
  )
)

# Display the result
print(result)

# Add feedback
lf_add_feedback(
  result = result,
  score = 0.9,
  comment = "Very helpful response",
  langfuse_client = lf_client
)
