
#  ------------------------------------------------------------------------
#
# Title : AI Chats
#    By : Jimmy Briggs
#  Date : 2025-03-03
#
#  ------------------------------------------------------------------------

#' Initialize AI Chat
#'
#' @description
#' Initialize an AI chat via [ellmer::chat_openai()] and optionally register tools.
#'
#' @param model The model to use for the chat. Default is `gpt-4o`.
#' @param system_prompt The system prompt to use for the chat. Default is `prompt_default_sys()`.
#' @param tools A list of tools to register with the chat.
#' @param api_key The OpenAI API key to use for the chat. Default is `get_openai_api_key()`.
#' @param ... Additional arguments to pass to [ellmer::chat_openai()].
#'
#' @returns
#' An [ellmer::Chat] S7 object.
#'
#' @export
#'
#' @seealso [ellmer::chat_openai()]
#'
#' @importFrom ellmer chat_openai
#'
#' @examples
#' \dontrun{
#' chat <- initialize_chat()
#' chat$chat("What is the meaning of life?")
#' }
initialize_chat <- function(
    model = "gpt-4o",
    system_prompt = prompt_default_sys(),
    tools = NULL,
    temperature = 0,
    api_key = get_openai_api_key(),
    ...
) {

  chat <- ellmer::chat_openai(
    model = model,
    system_prompt = system_prompt,
    api_key = api_key,
    api_args = list(temperature = temperature),
    ...
  )

  if (!is.null(tools)) {
    register_tools(chat, tools)
  }

  return(chat)

}

chat_eda <- function(
  data,
  chat = NULL,
  ...
) {

  check_data_frame(data)

  sys_prompt <- prompt_eda_sys()

  if (is.null(chat)) {
    chat <- initialize_chat(system_prompt = prompt_eda_sys())
  } else {
    check_chat(chat)
    old_sys_prompt <- chat$get_system_prompt()
    withr::defer(chat$set_system_prompt(old_sys_prompt))
    chat$set_system_prompt(prompt_eda_sys())
  }

  check_chat(chat)

  prompt <- prompt_eda_user(data)

  chat$chat(prompt, ...)

}



