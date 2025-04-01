# structured extraction -------------------------------------------------------------------------------------------


req <- httr2::request("https://api.openai.com/v1/responses") |>
  httr2::req_method("POST") |>
  httr2::req_headers(
    "Content-Type" = "application/json"
  ) |>
  httr2::req_auth_bearer_token(Sys.getenv("OPENAI_API_KEY")) |>
  httr2::req_body_json(
    list(
      model = "gpt-4o-2024-08-06",
      input = list(
        list(
          role = "system",
          content = "You are an expert at structured data extraction. You will be given unstructured text from a research paper and should convert it into the given structure."
        ),
        list(
          role = "user",
          content = "..."
        )
      ),
      text = list(
        format = list(
          type = "json_schema",
          name = "research_paper_extraction",
          schema = list(
            type = "object",
            properties = list(
              title = list(type = "string"),
              authors = list(
                type = "array",
                items = list(type = "string")
              ),
              abstract = list(type = "string"),
              keywords = list(
                type = "array",
                items = list(type = "string")
              )
            ),
            required = c("title", "authors", "abstract", "keywords"),
            additionalProperties = FALSE
          ),
          strict = TRUE
        )
      )
    )
  )

resp <- httr2::req_perform(req)
resp_json <- httr2::resp_body_json(resp)

listviewer::jsonedit(resp_json)
