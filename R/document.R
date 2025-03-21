
#  ------------------------------------------------------------------------
#
# Title : Document
#    By : Jimmy Briggs
#  Date : 2025-03-20
#
#  ------------------------------------------------------------------------


# document_dataset ------------------------------------------------------------------------------------------------

document_dataset <- function(
    data,
    include_examples = TRUE,
    verbose = FALSE
) {

  check_data_frame(data)

  chat <- initialize_chat(system_prompt = prompt_document_dataset_sys())

  dataset_name <- deparse(substitute(data))
  col_names <- names(data)
  col_types <- purrr::map_chr(data, typeof)

  data_skim <- skimr::skim(data)

  qry <- prompt_document_dataset_user(data = data)
  response <- chat$chat(qry)

}


generate_roxygen_doc <- function(data,
                                 model = "gpt-4o",
                                 include_examples = TRUE,
                                 verbose = FALSE) {

  # Validate input
  if (!is.data.frame(data)) {
    stop("Input must be a data.frame or tibble")
  }

  # Create a chat object with ellmer
  chat <- chat_openai(
    model = model,
    system_prompt = "You are an expert R programmer specializing in package documentation."
  )

  # Generate the prompt
  prompt <- prompt_document_dataset_user(data)

  resp <- chat$chat(prompt)

  # extract code
  code <- extract_code(resp, "r")

  # return code
  return(code)
}
