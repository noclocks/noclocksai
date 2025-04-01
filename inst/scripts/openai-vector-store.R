# list vector stores

req <- httr2::request("https://api.openai.com/v1/vector_stores") |>
  httr2::req_method("GET") |>
  httr2::req_headers(
    "Content-Type" = "application/json",
    "OpenAI-Beta" = "assistants=v2"
  ) |>
  httr2::req_auth_bearer_token(Sys.getenv("OPENAI_API_KEY"))

resp <- httr2::req_perform(req)
httr2::resp_check_status(resp)

httr2::resp_body_json(resp)

# create a vector store
req <- httr2::request("https://api.openai.com/v1/vector_stores") |>
  httr2::req_method("POST") |>
  httr2::req_headers(
    "Content-Type" = "application/json",
    "OpenAI-Beta" = "assistants=v2"
  ) |>
  httr2::req_auth_bearer_token(Sys.getenv("OPENAI_API_KEY")) |>
  httr2::req_body_json(
    list(
      name = "Support FAQ"
    )
  )

resp <- httr2::req_perform(req)
httr2::resp_check_status(resp)
httr2::resp_body_json(resp)

# retrieve a vector store
req <- httr2::request("https://api.openai.com/v1/vector_stores/") |>
  httr2::req_method("GET") |>
  httr2::req_headers(
    "Content-Type" = "application/json",
    "OpenAI-Beta" = "assistants=v2"
  ) |>
  httr2::req_auth_bearer_token(Sys.getenv("OPENAI_API_KEY")) |>
  httr2::req_url_path_append("vs_67ec48d4eea0819197b2df885863a3cc")

resp <- httr2::req_perform(req)
httr2::resp_check_status(resp)
httr2::resp_body_json(resp) |> tibblify::tibblify()
