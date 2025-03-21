
#  ------------------------------------------------------------------------
#
# Title : API Base URLs
#    By : Jimmy Briggs
#  Date : 2025-03-09
#
#  ------------------------------------------------------------------------

# openai ----------------------------------------------------------------------------------------------------------
openai_base_urls <- list(
  base = "https://api.openai.com/v1",
  models = "https://api.openai.com/v1/models",
  chat = "https://api.openai.com/v1/chat",
  chat_completions = "https://api.openai.com/v1/chat/completions",
  completions = "https://api.openai.com/v1/completions",
  embeddings = "https://api.openai.com/v1/embeddings",
  fine_tuning = "https://api.openai.com/v1/fine_tuning"
)

# anthropic -------------------------------------------------------------------------------------------------------
anthropic_base_urls <- list(
  models = "https://api.anthropic.com/v1/models",
  messages = "https://api.anthropic.com/v1/messages",
  messages_batch = "https://api.anthropic.com/v1/messages/batch"
)

# gemini ---------------------------------------------------------------------------------------------------------
gemini_base_urls <- list(
  base = "https://generativelanguage.googleapis.com/v1beta/",
  models = "https://generativelanguage.googleapis.com/v1beta/models"
)


# ollama ----------------------------------------------------------------------------------------------------------

ollama_base_urls <- list(
  base = "http://localhost:11434/api/",
  embeddings = "http://localhost:11434/api/embed"
)

# merge -----------------------------------------------------------------------------------------------------------

provider_base_urls <- list(
  openai = openai_base_urls,
  anthropic = anthropic_base_urls,
  gemini = gemini_base_urls,
  ollama = ollama_base_urls
)

# cleanup ---------------------------------------------------------------------------------------------------------
rm(
  openai_base_urls,
  anthropic_base_urls,
  gemini_base_urls,
  ollama_base_urls
)

cli::cli_alert_success("Succssfully prepared {.field provider_base_urls}.")

