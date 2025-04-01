# UI generation ---------------------------------------------------------------------------------------------------

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
          content = "You are a UI generator AI. Convert the user input into a UI."
        ),
        list(
          role = "user",
          content = "Make a User Profile Form"
        )
      ),
      text = list(
        format = list(
          type = "json_schema",
          name = "ui",
          description = "Dynamically generated UI",
          schema = list(
            type = "object",
            properties = list(
              type = list(
                type = "string",
                description = "The type of the UI component",
                enum = c("div", "button", "header", "section", "field", "form")
              ),
              label = list(
                type = "string",
                description = "The label of the UI component, used for buttons or form fields"
              ),
              children = list(
                type = "array",
                description = "Nested UI components",
                items = list(
                  "$ref" = "#"
                )
              ),
              attributes = list(
                type = "array",
                description = "Arbitrary attributes for the UI component, suitable for any element",
                items = list(
                  type = "object",
                  properties = list(
                    name = list(
                      type = "string",
                      description = "The name of the attribute, for example onClick or className"
                    ),
                    value = list(
                      type = "string",
                      description = "The value of the attribute"
                    )
                  ),
                  required = c("name", "value"),
                  additionalProperties = FALSE
                )
              )
            ),
            required = c("type", "label", "children", "attributes"),
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
