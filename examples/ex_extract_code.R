
# example markdown with python code block
example_md <- paste(
  "This is my awesome Python code:",
  "",
  "```python",
  "print('Hello, World!')",
  "```",
  "",
  "That's all folks!",
  collapse = "\n"
)

# extract python code from markdown
extract_code(text = example_md, lang = "python")
