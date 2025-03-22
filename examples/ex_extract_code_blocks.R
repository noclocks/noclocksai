md_text <- "
Here is some Python code:

```python
print('Hello, World!')
```

And here is R code:

```R
cat('Hello, World!')
```
"

# get only python code
extract_code_blocks(md_text, lang = "python")

# get only R code
extract_code_blocks(md_text, lang = "r")

# return as list with language names
extract_code_blocks(md_text, as_list = TRUE, named_by_language = TRUE)

# Only include Python code blocks
extract_code_blocks(md_text, include_only_languages = "python")
