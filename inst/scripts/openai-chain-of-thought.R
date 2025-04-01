# chain of thought ------------------------------------------------------------------------------------------------

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
          content = "You are a helpful math tutor. Guide the user through the solution step by step."
        ),
        list(
          role = "user",
          content = "how can I solve 8x + 7 = -23"
        )
      ),
      text = list(
        format = list(
          type = "json_schema",
          name = "math_reasoning",
          schema = list(
            type = "object",
            properties = list(
              steps = list(
                type = "array",
                items = list(
                  type = "object",
                  properties = list(
                    explanation = list(type = "string"),
                    output = list(type = "string")
                  ),
                  required = c("explanation", "output"),
                  additionalProperties = FALSE
                )
              ),
              final_answer = list(type = "string")
            ),
            required = c("steps", "final_answer"),
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
