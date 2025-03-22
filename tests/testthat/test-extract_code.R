
# > get_regex_code_pattern
# function(lang = NULL) {
#
#   if (is.null(lang)) return("(?s)(?<=```).*?(?=```)")
#
#   lang_match <- paste0("(", tolower(lang), "|", toupper(lang), ")")
#
#   glue::glue("(?s)(?<=```{lang_match}\\n).*?(?=```)")
# }
# <environment: namespace:noclocksai>

# > extract_code
# function(text, lang = NULL, print = FALSE) {
#
#   pattern <- get_regex_code_pattern(lang)
#   content <- stringr::str_extract(text, pattern)
#
#   if (length(content) == 0) {
#     cli::cli_abort("No code block content found in provided {.arg resp} argument.")
#   }
#
#   if (print) cat(content, sep = "\n")
#
#   content
# }
# <environment: namespace:noclocksai>

test_that("extract_code() works", {

  # example content
  example_md <- paste(
    "This is my awesome Python code:",
    "",
    "```python",
    "print('Hello, World!')",
    "```",
    "",
    "That's all folks!",
    sep = "\n"
  )

  # extract python code from markdown
  code <- extract_code(text = example_md, lang = "python")

  expect_equal(code, "print('Hello, World!')")

})
