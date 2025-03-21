md <- readLines(pkg_sys_extdata("documents/example-markdown.md")) |> paste(collapse = "\n")

prompt_enhance_markdown_user(md)

chat <- ellmer::chat_openai(model = "gpt-4o")

chat$chat(prompt_enhance_markdown_user(md))
