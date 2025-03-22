# get a regex pattern for extracting any code blocks
get_regex_code_pattern()

# get a regex pattern for extracting R code blocks
get_regex_code_pattern("R")

# example markdown with SQL code block
example_md <- paste(
  "This is my awesome SQL query:",
  "",
  "```sql",
  "SELECT * FROM table",
  "```",
  "",
  "That's all folks!",
  sep = "\n"
)

# extract SQL code
pattern <- get_regex_code_pattern("sql")
stringr::str_extract(example_md, pattern)

