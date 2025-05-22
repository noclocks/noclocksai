This file is a merged representation of the entire codebase, combined into a single document by Repomix.

# File Summary

## Purpose
This file contains a packed representation of the entire repository's contents.
It is designed to be easily consumable by AI systems for analysis, code review,
or other automated processes.

## File Format
The content is organized as follows:
1. This summary section
2. Repository information
3. Directory structure
4. Multiple file entries, each consisting of:
  a. A header with the file path (## File: path/to/file)
  b. The full contents of the file in a code block

## Usage Guidelines
- This file should be treated as read-only. Any changes should be made to the
  original repository files, not this packed version.
- When processing this file, use the file path to distinguish
  between different files in the repository.
- Be aware that this file may contain sensitive information. Handle it with
  the same level of security as you would the original repository.

## Notes
- Some files may have been excluded based on .gitignore rules and Repomix's configuration
- Binary files are not included in this packed representation. Please refer to the Repository Structure section for a complete list of file paths, including binary files
- Files matching patterns in .gitignore are excluded
- Files matching default ignore patterns are excluded

## Additional Info

# Directory Structure
```
.gitignore
app_prompt_python.md
app_prompt_r.md
app_prompt.md
app_utils.py
app.py
denied.md
gtag.html
README.md
requirements.txt
scripts.js
scripts/send_invites.py
scripts/template.md
signature.py
style.css
```

# Files

## File: .gitignore
````
.env
__pycache__
scripts/credentials.json
scripts/token.json
````

## File: app_prompt_python.md
````markdown
- Try not to import big packages like scipy.

- Prefer using matplotlib instead of plotly for plotting. A matplotlib plot should not return `plt`. It does not need to return anything, but if necessary, can return `fig`.

- Don't mix Shiny Core and Shiny Express syntax. Just use one. Use Core by default, and if the user asks for Express, then use Express.

- Do not use the captilized functions `reactive.Calc`, `reactive.Value`, or `reactive.Effect`. Instead, use the lowercase versions: `reactive.calc`, `reactive.value`, and `reactive.effect`.

- Do not use `ui.panel_sidebar()` because it no longer exists. Instead ,use `ui.sidebar()`.

- Do not use `panel_main()` because it no longer exists. Instead of `sidebar_layout(panel_sidebar(a, b), panel_main(x, y))`, use `sidebar_layout(sidebar(a, b), x, y)`.

- Never use the `@output` decorator, as it is deprecated. Instead, only use the `@render.xx` decorator.

- Avoid using `@render.image`. Prefer to use `@render.ui` instead and return a `ui.img()` object.

- If you have dynamic UI returning a `ui.img()`, use `@render.ui`, not `@render.image`, and use `ui.output_ui()` instead of `ui.output_image()`.

- For the qrcode package, when calling `img.save(buf)`, do not use the `format="PNG"` parameter. Just do `img.save(buf)`.

- Do not define the UI as a function. Instead use `app_ui = ...`, where the `...` is a static UI definition.

- If the app makes HTTP requests, use the `urllib3` library.

- If using Shiny Express, there are some things to keep in mind:
  - Use `from shiny.express import input, ui, ...`, where the `...` represents other necessary components.
  - Do not try to import `reactive` from `shiny.express`. It is imported from `shiny`.
  - For nestable UI components, like `ui.card()`, it should be used as `with ui.card(): ...`, instead of `ui.card(...)`

- If using Shiny Core, end with the `app = App(...)` call.

- If the user says that there is an error about a missing package, tell them to add requirements.txt with that package.

- Put all required packages in a `requirements.txt` file, and present that file inside of the `<SHINYAPP>` tags.

## Examples

This example shows the assistant creating an example app in the process of answering a question. Because the user did not explicitly ask to create an app, the example should be presented in <SHINYAPP AUTORUN="0"> instead of <SHINYAPP AUTORUN="1">. This allows the user to run the app manually, but will not overwrite their existing work.

[Example]
[User]
How do I reset a `ui.input_text` to be empty?
[/User]
[Assistant]
To reset a `ui.input_text` to a default value in a Shiny for Python app, you can use the `update_text()` function. This function allows you to dynamically change the value of an input_text widget from the server side. Here's an explanation of how to do it:

1. First, you need to create an `input_text` widget in your UI with an ID.
2. In your server function, you can use the `@reactive.Effect` decorator to create a reactive effect that will update the input when a certain condition is met (like a button click).
3. Inside this effect, you use the `ui.update_text()` function to reset the value.

Here's a simple example that demonstrates this:

<SHINYAPP AUTORUN="0">
<FILE NAME="app.py">
from shiny import App, reactive, render, ui

app_ui = ui.page_fluid(
    ui.input_text("name", "Enter your name", value=""),
    ui.output_text("greeting"),
    ui.input_action_button("reset", "Reset"),
)

def server(input, output, session):
    @output
    @render.text
    def greeting():
        return f"Hello, {input.name()}!"

    @reactive.Effect
    @reactive.event(input.reset)
    def _():
        ui.update_text("name", value="")

app = App(app_ui, server)
</FILE>
</SHINYAPP>

In this example:

1. We have an `input_text` widget with the ID "name".
2. We have a button with the ID "reset".
3. In the server function, we create a reactive effect that listens for clicks on the reset button.
4. When the reset button is clicked, `ui.update_text("name", value="")` is called, which resets the "name" input to an empty string.

You can modify the default value to whatever you want by changing the `value` parameter in `ui.update_text()`. For example, if you want to reset it to "Default Name", you would use:

```python
ui.update_text("name", value="Default Name")
```

This approach allows you to reset the input text to any value you desire, providing flexibility in how you manage your app's state.
[/Assistant]
[/Example]

## Anti-Examples

These examples are INCORRECT and you must avoid these patterns when writing code. Look at these carefully and consider them before writing your own code.

### Use of nonexistent sidebar panel functions

The following code is INCORRECT because ui.panel_sidebar and ui.panel_main do not exist.

```
app_ui = ui.page_sidebar(
    ui.panel_sidebar(
        ui.input_action_button("generate", "Generate New Plot")
    ),
    ui.panel_main(
      ui.output_plot("plot")
    ),
)
```

Instead, sidebar page and sidebar layout code should look like this:

```
app_ui = ui.page_sidebar(
    ui.sidebar(
        ui.input_action_button("generate", "Generate New Plot")
    ),
    ui.output_plot("plot")
)
```

or:

```
app_ui = ui.page_fillable(
    ui.layout_sidebar(
        ui.sidebar(
            ui.input_action_button("generate", "Generate New Plot")
        ),
        ui.output_plot("plot")
    )
)
```

### Failure to import necessary modules, especially shiny.reactive

```
from shiny import App, render, ui
import numpy as np
import matplotlib.pyplot as plt

app_ui = ... # Elided for brevity

def server(input, output, session):

    @render.plot
    @reactive.event(input.generate)
    def regression_plot():
        n = input.num_points()
        noise_level = input.noise()

        # Elided for brevity

app = App(app_ui, server)
```

In this example, the code is missing the import statement for `reactive` from `shiny`. This will cause the code to fail when trying to use the `@reactive.event` decorator. The correct import statement should be:

```
from shiny import App, render, ui, reactive
```

### Incorrect import of reactive and req

The module shiny.express does not have `reactive` or `req` modules. The correct import should be from shiny.

Incorrect:

```
from shiny.express import input, ui, render, reactive, req
```

Correct:

```
from shiny import req, reactive
from shiny.express import input, ui, render
```

### `reactive.value` and a function with the same name

A reactive value must not have the same name as another object, like a function. In this example,

Incorrect, with the same name:

```
foo = reactive.value("1")

@render.text
def foo():
    ...
```

Correct, with different names:

```
foo_v = reactive.value("1")

@render.text
def foo():
    ...
```
````

## File: app_prompt_r.md
````markdown
- Use the bslib package for styling and layout.
````

## File: app_prompt.md
````markdown
You are an AI assistant specialized in helping users with Shiny for {language}.
Your tasks include explaining concepts in Shiny, explaining how to do things with Shiny, or creating a complete, functional Shiny for {language} app code as an artifact based on the user's description.
Only answer questions related to Shiny, or R or Python. Don't answer any questions related to anything else.

If the user asks for explanations about concepts or code in Shiny for {language}, then you should provide detailed and accurate information about the topic. This may include descriptions, examples, use cases, and best practices related to Shiny for {language}. If your answer includes examples of Shiny apps, you should provide the code of each one within `<SHINYAPP AUTORUN="0">` and `</SHINYAPP>` tags, and otherwise adhere to the guidelines below for creating applications.

If the user asks for an application, you should provide a Shiny for {language} app code that meets the requirements specified in the user prompt. The app should be well-structured, include necessary components, and follow best practices for Shiny app development.

Review these steps carefully and follow them to create the Shiny for {language} app. It is very important that your app follows these guidelines, so think about them before you start writing code:

- Analyze the user prompt carefully. Identify the main features, functionalities, and any specific requirements mentioned.

- Plan the structure of the app, including:
   - UI components (input widgets, output displays)
   - Server logic (data processing, reactive elements)
   - Any necessary data sources or external libraries

- Create the app code following these guidelines:
   - Use proper Shiny for {language} syntax and structure
   - Include necessary import statements at the beginning
   - Implement both the UI and server components
   - Ensure all features mentioned in the user prompt are included
   - Use cards for the UI layout
   - If the app contains a few input controls, default to using `page_sidebar` with the inputs in the sidebar and the outputs in the main panel--but if the user prompt specifies a different layout, follow that instead

- If the user prompt is vague or missing important details, make reasonable assumptions to fill in the gaps. Mention these assumptions in comments within the code.

- Ensure the app is complete and runnable. Include any additional helper functions or data processing steps as needed.

- Output the entire app code within `<SHINYAPP AUTORUN="1">` and `</SHINYAPP>` tags. Inside those tags, each file should be within `<FILE NAME="...">` and `</FILE>` tags, where the `...` is replaced with the filename.

- Only put it in those tags if it is a complete app. If you are only displaying a code fragment, do not put it in those tags; simply put it in a code block with backticks.

- If the user asks to show the shinylive or editor panel, then create an app file where the content is completely empty. Do not put anything else in the file at all. Also, do not explain why you are doing this. Just do it.

{language_specific_prompt}

Consider multiple possible implementations of the application, then choose the best one. Remember to create a fully functional Shiny for {language} app that accurately reflects the user's requirements. If you're unsure about any aspect of the app, make a reasonable decision and explain your choice in a comment.

{verbosity}
````

## File: app_utils.py
````python
import os
from pathlib import Path
from typing import Any

app_dir = Path(__file__).parent
project_root = app_dir.parent
# Look for .env in project root first, then fall back to app directory
env_file = project_root / ".env" if (project_root / ".env").exists() else app_dir / ".env"


def load_dotenv(dotenv_path: os.PathLike[str] = env_file, **kwargs: Any) -> None:
    """
    A convenience wrapper around `dotenv.load_dotenv` that warns if `dotenv` is not installed.
    It also returns `None` to make it easier to ignore the return value.
    """
    try:
        import dotenv

        dotenv.load_dotenv(dotenv_path=dotenv_path, **kwargs)
    except ImportError:
        import warnings

        warnings.warn(
            "Could not import `dotenv`. If you want to use `.env` files to "
            "load environment variables, please install it using "
            "`pip install python-dotenv`.",
            stacklevel=2,
        )
````

## File: app.py
````python
# pyright: reportPrivateUsage=false, reportUnusedFunction=false

from __future__ import annotations

import asyncio
import base64
import json
import os
import re
from pathlib import Path
from typing import Literal, TypedDict, cast
from urllib.parse import parse_qs

from anthropic import APIStatusError, AsyncAnthropic, RateLimitError
from anthropic.types import MessageParam

from app_utils import load_dotenv
from htmltools import Tag

from shiny import App, Inputs, Outputs, Session, reactive, render, ui
from shiny.ui._card import CardItem

# from signature import validate_email_server, validate_email_ui


SHINYLIVE_BASE_URL = "https://shinylive.io/"

# Environment variables

load_dotenv()
api_key = os.environ.get("ANTHROPIC_API_KEY")
if api_key is None:
    raise ValueError("Please set the ANTHROPIC_API_KEY environment variable.")

google_analytics_id = os.environ.get("GOOGLE_ANALYTICS_ID", None)

# email_sig_key = os.environ.get("EMAIL_SIGNATURE_KEY", None)

app_dir = Path(__file__).parent
www_dir = os.path.join(app_dir, "www")


# Read the contents of a file, where the base path defaults to current dir of this file.
def read_file(filename: Path | str, base_dir: Path = app_dir) -> str:
    with open(base_dir / filename, "r") as f:
        res = f.read()
        return res


app_prompt_template = read_file("app_prompt.md")

app_prompt_language_specific = {
    "r": read_file("app_prompt_r.md"),
    "python": read_file("app_prompt_python.md"),
}


greeting = """
Hello, I'm Shiny Assistant! I'm here to help you with [Shiny](https://shiny.posit.co), a web framework for data driven apps. You can ask me questions about how to use Shiny,
to explain how certain things work in Shiny, or even ask me to build a Shiny app for
you.

Here are some examples:

- "How do I add a plot to an application?"
- "Create an app that shows a normal distribution."
- "Show me how make it so a table will update only after a button is clicked."
- Ask me, "Open the editor", then copy and paste your existing Shiny code into the editor, and then ask me to make changes to it.

Let's get started! 🚀

<div class="position-relative">
  <div class="position-absolute start-50 translate-middle rounded-pill badge border border-default text-bg-light text-center"
      style="font-weight: normal; cursor: pointer;"
      data-bs-toggle="popover"
      title="Privacy notice"
      data-bs-content="The Shiny team reserves the right to log your conversations and use them to fine-tune Shiny Assistant and improve Shiny. Also, all conversation activity and Shinylive editor content in this window will be sent to APIs controlled by Anthropic PBC. Please do not use Shiny Assistant for sensitive work!">
    Who can see my activity?
    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
      <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
      <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"/>
    </svg>
  </div>
</div>
"""


class FileContent(TypedDict):
    name: str
    content: str
    type: Literal["text", "binary"]


switch_tag = ui.input_switch("language_switch", "Python", False)
switch_tag.add_style("width: unset; display: inline-block; padding: 0 20px;")
switch_tag.children[0].add_style("display: inline-block;")  # pyright: ignore
switch_tag.insert(0, ui.tags.span("R ", style="padding-right: 0.3em;"))

verbosity_tag = ui.input_select(
    "verbosity", None, ["Code only", "Concise", "Verbose"], selected="Concise"
)
verbosity_tag.add_style("width: unset; display: inline-block; padding: 0 20px;")

gear_fill_icon = ui.HTML(
    '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear-fill" viewBox="0 0 16 16"><path d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 1 0-5.86 2.929 2.929 0 0 1 0 5.858z"/></svg>'
)

app_ui = ui.page_sidebar(
    ui.sidebar(
        ui.div(class_="sidebar-resizer"),
        ui.div(
            switch_tag,
            verbosity_tag,
            ui.popover(
                gear_fill_icon,
                ui.div(
                    ui.input_checkbox("use_api_key", "Use my own API key"),
                    ui.panel_conditional(
                        "input.use_api_key === true",
                        ui.input_password(
                            "api_key",
                            None,
                            placeholder="Anthropic API key",
                        ),
                    ),
                ),
                title="Advanced settings",
            ),
        ),
        ui.chat_ui("chat", height="100%"),
        open="open",
        width="400px",
        style="height: 100%;",
        gap="3px",
        padding="3px",
    ),
    ui.head_content(
        ui.tags.title("Shiny Assistant"),
        ui.tags.link(rel="icon", href="favicon.ico"),
        ui.tags.style(read_file("style.css")),
        ui.tags.script(read_file("scripts.js")),
        (
            ui.HTML((read_file("gtag.html")) % google_analytics_id)
            if google_analytics_id is not None
            else None
        ),
    ),
    ui.output_ui("shinylive_iframe"),
    ui.tags.template(
        ui.modal(
            "Your session has been disconnected due to inactivity or network "
            "interruption. Click the button below to pick up where you left "
            "off.",
            footer=[
                ui.tags.a(
                    "Reconnect",
                    href="#",
                    class_="btn btn-primary",
                    id="custom-reconnect-link",
                )
            ],
            title="Disconnected",
        ),
        id="custom_reconnect_modal",
    ),
    ui.tags.template(
        ui.modal(
            "Please wait while we reconnect...",
            footer=[],
            easy_close=False,
            title="Reconnecting...",
        ),
        id="custom_reconnecting_modal",
    ),
    fillable=True,
)


for child in app_ui.children:
    if isinstance(child, Tag) and child.has_class("bslib-page-sidebar"):
        for child in child.children:
            if isinstance(child, CardItem) and cast(Tag, child._item).has_class(
                "bslib-sidebar-layout"
            ):
                cast(Tag, child._item).add_class("chat-full-width")
                break
        break


def server(input: Inputs, output: Outputs, session: Session):
    # with reactive.isolate():
    #     hostname = input[".clientdata_url_hostname"]()
    #     querystring = input[".clientdata_url_search"]()

    # if not validate_email_server(
    #     "validate_sig", hostname=hostname, querystring=querystring, key=email_sig_key
    # ):
    #     return

    restoring = True

    shinylive_panel_visible = reactive.value(False)
    shinylive_panel_visible_smooth_transition = reactive.value(True)

    @reactive.calc
    def llm():
        if input.use_api_key():
            return AsyncAnthropic(api_key=input.api_key())
        else:
            return AsyncAnthropic(api_key=api_key)

    @reactive.calc
    def app_prompt() -> str:
        verbosity_instructions = {
            "Code only": "If you are providing a Shiny app, please provide only the code."
            " Do not add any other text, explanations, or instructions unless"
            " absolutely necessary. Do not tell the user how to install Shiny or run"
            " the app, because they already know that.",
            "Concise": "Be concise when explaining the code."
            " Do not tell the user how to install Shiny or run the app, because they"
            " already know that.",
            "Verbose": "",  # The default behavior of Claude is to be verbose
        }

        prompt = app_prompt_template.format(
            language=language(),
            language_specific_prompt=app_prompt_language_specific[language()],
            verbosity=verbosity_instructions[input.verbosity()],
        )
        return prompt

    restored_messages: list[dict[str, str]] = []

    def parse_hash(input: Inputs) -> dict[str, list[str]]:
        with reactive.isolate():
            if ".clientdata_url_hash" not in input:
                return {}
            hash = input[".clientdata_url_hash_initial"]()
            if hash == "":
                return {}
            # Remove leading # from qs, if present
            if hash.startswith("#"):
                hash = hash[1:]
            return parse_qs(hash, strict_parsing=True)

    parsed_qs = parse_hash(input)
    if "chat_history" in parsed_qs:
        restored_messages = json.loads(
            base64.b64decode(parsed_qs["chat_history"][0]).decode("utf-8")
        )

    # Add a starting message, but only if no messages were restored.
    if len(restored_messages) == 0:
        restored_messages.insert(0, {"role": "assistant", "content": greeting})

    if "files" in parsed_qs and parsed_qs["files"]:
        shinylive_panel_visible_smooth_transition.set(False)
        shinylive_panel_visible.set(True)

    chat = ui.Chat(
        "chat",
        messages=restored_messages,
    )

    async def sync_latest_messages_locked():
        async with reactive.lock():
            await sync_latest_messages()

    @render.ui
    def shinylive_iframe():
        if not shinylive_panel_visible():
            return

        if language() == "python":
            url = (
                SHINYLIVE_BASE_URL
                + "py/editor/#code=NobwRAdghgtgpmAXGKAHVA6VBPMAaMAYwHsIAXOcpMMAXwF0g"
            )
        else:
            url = (
                SHINYLIVE_BASE_URL
                + "r/editor/#code=NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMMAXwF0g"
            )

        return ui.tags.iframe(
            id="shinylive-panel",
            src=url,
            style="flex: 1 1 auto;",
            allow="clipboard-write",
        )

    # TODO: Instead of using this hack for submitting editor content, use
    # @chat.on_user_submit. This will require some changes to the chat component.
    @reactive.effect
    @reactive.event(input.message_trigger)
    async def _send_user_message():
        nonlocal restoring
        restoring = False

        messages = chat.messages(token_limits=(16000, 3000), format="anthropic")
        messages = remove_consecutive_messages(messages)

        messages[-1][
            "content"
        ] = f"""
The following is the current app code in JSON format. The text that comes after this app
code might ask you to modify the code. If it does, please modify the code. If the text
does not ask you to modify the code, then ignore the code.

```
{input.editor_code()}
```

{ messages[-1]["content"] }
"""
        # print(messages[-1]["content"])

        messages = add_cache_breakpoints_to_messages(messages)

        await sync_latest_messages()

        # Create a response message stream
        try:
            response_stream = await llm().messages.create(
                model="claude-3-7-sonnet-20250219",
                system=[
                    {
                        "type": "text",
                        "text": app_prompt(),
                        "cache_control": {"type": "ephemeral"},
                    }
                ],
                messages=messages,
                stream=True,
                max_tokens=3000,
            )
        except Exception as e:
            await check_for_overload(e)
            await chat._raise_exception(e)
            return

        files_in_shinyapp_tags.set(None)

        async def logging_stream_wrapper():
            try:
                async for chunk in response_stream:
                    if (
                        chunk.type == "content_block_delta"
                        and chunk.delta.type == "text_delta"
                    ):
                        ...
                        # print(chunk.delta.text, end="")
                    yield chunk
                # print("")
            except Exception as e:
                await check_for_overload(e)
                raise

        # Append the response stream into the chat
        await chat.append_message_stream(logging_stream_wrapper())

    async def check_for_overload(e: Exception):
        if isinstance(e, RateLimitError):
            await chat.append_message(
                {
                    "role": "assistant",
                    "content": "**Error:** Shiny Assistant has exceeded its Anthropic rate limit. Please try again later, or provide your own Anthropic API key using the gear icon above.",
                }
            )
        elif isinstance(e, APIStatusError):
            if e.status_code == 529:
                await chat.append_message(
                    {
                        "role": "assistant",
                        "content": "**Error:** Shiny Assistant's access to Anthropic is currently overloaded. Please try again later, or provide your own Anthropic API key using the gear icon above.",
                    }
                )

    # ==================================================================================
    # Code for finding content in the <SHINYAPP> tags and sending to the client
    # ==================================================================================

    files_in_shinyapp_tags: reactive.Value[list[FileContent] | None] = reactive.Value(
        None
    )

    @chat.transform_assistant_response
    async def transform_response(content: str, chunk: str, done: bool) -> str:
        if done:
            asyncio.create_task(sync_latest_messages_locked())

        # TODO: This is inefficient because it does this processing for every chunk,
        # which means it will process the same content multiple times. It would be
        # better to do this incrementally as the content streams in.

        # Only do this when streaming. (We don't to run it when restoring messages,
        # which does not use streaming.)
        if chunk != "":
            async with reactive.lock():
                with reactive.isolate():
                    # If we see the <SHINYAPP> tag, make sure the shinylive panel is
                    # visible.
                    if '<SHINYAPP AUTORUN="1">' in content:
                        shinylive_panel_visible.set(True)

                        # The first time we see the </SHINYAPP> tag, set the files.
                        if (
                            files_in_shinyapp_tags() is None
                            and "</SHINYAPP>" in content
                        ):
                            files = shinyapp_tag_contents_to_filecontents(content)
                            files_in_shinyapp_tags.set(files)

                        await reactive.flush()

        content = re.sub(
            '<SHINYAPP AUTORUN="[01]">', "<div class='assistant-shinyapp'>\n", content
        )
        content = content.replace(
            "</SHINYAPP>",
            "\n<div class='run-code-button-container'>"
            "<button class='run-code-button btn btn-outline-primary'>Run app →</button>"
            "</div>\n</div>",
        )
        content = re.sub(
            '\n<FILE NAME="(.*?)">',
            r"\n<div class='assistant-shinyapp-file'>\n<div class='filename'>\1</div>\n\n```",
            content,
        )
        content = content.replace("\n</FILE>", "\n```\n</div>")

        return content

    @reactive.effect
    @reactive.event(files_in_shinyapp_tags)
    async def _send_shinyapp_code():
        # If in the process of restoring from a previous session, don't send the
        # code automatically.
        if restoring:
            return
        if files_in_shinyapp_tags() is None:
            return
        await session.send_custom_message(
            "set-shinylive-content", {"files": files_in_shinyapp_tags()}
        )

    @reactive.effect
    @reactive.event(input.show_shinylive)
    async def force_shinylive_open():
        # This is the client telling the server to show the shinylive panel.
        # This is currently necessary (rather than the client having total
        # control) because the server uses a render.ui to create the shinylive
        # iframe.
        if not shinylive_panel_visible():
            shinylive_panel_visible.set(True)

    @reactive.effect
    @reactive.event(shinylive_panel_visible)
    async def send_show_shinylive_panel_message():
        if shinylive_panel_visible():
            await session.send_custom_message(
                "show-shinylive-panel",
                {
                    "show": True,
                    "smooth": shinylive_panel_visible_smooth_transition(),
                },
            )

    # ==================================================================================
    # Misc utility functions
    # ==================================================================================
    @reactive.calc
    def language():
        if input.language_switch() == False:
            return "r"
        else:
            return "python"

    last_message_sent = 0

    async def sync_latest_messages():
        nonlocal last_message_sent

        with reactive.isolate():
            messages = chat.messages(
                format="anthropic",
                token_limits=None,
                transform_user="all",
                transform_assistant=False,
            )

        new_messages = messages[last_message_sent:]
        last_message_sent = len(messages)
        if len(new_messages) > 0:
            print(f"Synchronizing {len(new_messages)} messages")
            await session.send_custom_message(
                "sync-chat-messages", {"messages": new_messages}
            )


def shinyapp_tag_contents_to_filecontents(input: str) -> list[FileContent]:
    """
    Extracts the files and their contents from the <SHINYAPP>...</SHINYAPP> tags in the
    input string.
    """
    # Keep the text between the SHINYAPP tags
    shinyapp_code = re.sub(
        r".*<SHINYAPP AUTORUN=\"[01]\">(.*)</SHINYAPP>.*",
        r"\1",
        input,
        flags=re.DOTALL,
    )
    if shinyapp_code.startswith("\n"):
        shinyapp_code = shinyapp_code[1:]

    # Find each <FILE NAME="...">...</FILE> tag and extract the contents and file name
    file_contents: list[FileContent] = []
    for match in re.finditer(r"<FILE NAME=\"(.*?)\">(.*?)</FILE>", input, re.DOTALL):
        name = match.group(1)
        content = match.group(2)
        if content.startswith("\n"):
            content = content[1:]
        file_contents.append({"name": name, "content": content, "type": "text"})

    return file_contents


# Remove any consecutive user or assistant messages. Only keep the last one in a
# sequence. For example, if there are multiple user messages in a row, only keep the
# last one. This is helpful for when the user sends multiple messages in a row, which
# can happen if there was an error handling the previous message.
def remove_consecutive_messages(
    messages: tuple[MessageParam, ...],
) -> tuple[MessageParam, ...]:
    if len(messages) < 2:
        return messages

    new_messages: list[MessageParam] = []
    for i in range(len(messages) - 1):
        if messages[i]["role"] != messages[i + 1]["role"]:
            new_messages.append(messages[i])

    new_messages.append(messages[-1])

    return tuple(new_messages)


def add_cache_breakpoints_to_messages(
    messages: list[MessageParam] | tuple[MessageParam, ...],
    max_cache_breakpoints: int = 3,
) -> list[MessageParam]:
    """
    Add cache breakpoints to a list/tuple of messages.

    Parameters
    ----------
    messages
        The messages to transform
    max_cache_breakpoints
        Maximum number of user messages to transform. This defaults to 3, because
        Anthropic's prompt caching only supports 4 total breakpoints, and there is
        already one in the system prompt.

    Returns
    -------
    list[MessageParam]
        The transformed messages in prompt caching format
    """
    transformed: list[MessageParam] = []
    user_messages_transformed = 0

    for msg in reversed(messages):
        if msg["role"] == "user" and user_messages_transformed < max_cache_breakpoints:
            content = msg["content"]
            if not isinstance(content, str):
                raise ValueError(
                    "User messages must be strings, but got a non-string content: "
                    + str(content)
                )
            transformed.insert(
                0,
                {
                    "role": "user",
                    "content": [
                        {
                            "type": "text",
                            "text": content,
                            "cache_control": {"type": "ephemeral"},
                        }
                    ],
                },
            )
            user_messages_transformed += 1
        else:
            # Keep assistant messages as is. We're checking for string content mostly
            # to make the type checker happy.
            content = msg["content"]
            if not isinstance(content, str):
                raise ValueError(
                    f"{msg['role']} messages must be strings, but got a non-string content: "
                    + str(content)
                )
            transformed.insert(0, {"role": msg["role"], "content": content})

    return transformed


# ======================================================================================


app = App(app_ui, server, static_assets=www_dir)
````

## File: denied.md
````markdown
Shiny Assistant is a custom chatbot interface that's designed to help you build [Shiny](https://shiny.posit.co/) apps in both R and Python.

Shiny Assistant is currently in closed beta, but we're actively accepting new applicants. Please [join the waitlist](https://docs.google.com/forms/d/e/1FAIpQLSdzvUMXKYf80UOv01r-9-ahybel1JpKC8nsRwASS_Hy0zeM_A/viewform) and we'll email you shortly.

(If you've already received an invitation, please use the authenticated link in the email invitation.)
````

## File: gtag.html
````html
<!-- Google Tag Manager -->
<script>
  // prettier-ignore
  (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','%s');
</script>
<!-- End Google Tag Manager -->
````

## File: README.md
````markdown
Shiny Assistant implemented in Shiny for Python
===============================================


## Prequisites

This is a Shiny for Python application, so you will need Python installed on your system.

Get an Anthropic API key from [Anthropic](https://console.anthropic.com/).

You can run this Shiny application locally on your computer, or you can deploy to a hosted service like [shinyapps.io](https://www.shinyapps.io/) (Posit's managed cloud hosting service) or your own server running [Posit Connect](https://posit.co/products/enterprise/connect/) (Posit's hosting platform which you run on your own server).


## Setup and usage

Install the required packages:

```
pip install -r requirements.txt
```


Create a file `.env` that contains your Anthropic API key:

```
ANTHROPIC_API_KEY="xxxxxxxxxxxxxxxxx"
```

You can also include these optional environment variables:

* `GOOGLE_ANALYTICS_ID` - Google Analytics ID to use for tracking page views. If provided, the Google Analytics tracking code will be included in the app.

Run the app locally:

```
shiny run app.py
```

## Deploying to a server

You can deploy this app to a server for others to access.

Learn about:

- Deploying to the cloud with [shinyapps.io](https://shiny.posit.co/py/docs/deploy-cloud.html)
- Deploying to a [self-hosted server]([https://shiny.posit.co/py/docs/deploy-on-prem.html])


Once you have your server set up, you can deploy the app with:

```
# Deploy (replace `gallery` with your server's nickname)
rsconnect deploy shiny -n gallery -t assistant .
```
````

## File: requirements.txt
````
shiny
python-dotenv
tokenizers
anthropic

# For emails
google-auth
google-auth-oauthlib
google-auth-httplib2
google-api-python-client
markdown
pandas
requests
````

## File: scripts.js
````javascript
// =====================================================================================
// Set up listeners for messages from server
// =====================================================================================

function chatMessagesContainer() {
  return document.getElementById("chat");
}

Shiny.initializedPromise.then(() => {
  // When the user clicks on the send button, request the latest version of the files
  // from the shinylive iframe. This communication is async, so the file contents will
  // arrive later on the server side than the user chat message.
  messageTriggerCounter = 0;
  chatMessagesContainer().addEventListener(
    "shiny-chat-input-sent",
    async (e) => {
      const fileContents = await requestFileContentsFromWindow();
      Shiny.setInputValue("editor_code", fileContents, {
        priority: "event",
      });
      // This can be removed once we fix
      // https://github.com/posit-dev/py-shiny/issues/1600
      Shiny.setInputValue("message_trigger", messageTriggerCounter++);
    }
  );

  // Receive custom message with app code and send to the shinylive panel.
  Shiny.addCustomMessageHandler("set-shinylive-content", async (message) => {
    // It's critical that we NOT await ensureShinylivePanel from within async
    // custom message handlers. You will get hangs because
    // ensureShinylivePanel will not resolve until the shinylive panel is
    // ready, but for that to happen, a new custom message must be sent from
    // the server back to the client, which will not be handled because the
    // await holds up the message handler loop.
    //
    // Instead, we handle the promise without awaiting it directly.
    ensureShinylivePanel().then(() => {
      sendFileContentsToWindow(message.files);
    });
  });

  // Receive custom message to show the shinylive panel
  Shiny.addCustomMessageHandler("show-shinylive-panel", (message) => {
    if (message.show === true) {
      showShinylivePanel(message.smooth);
    }
  });
});

// Listener for "Run code" buttons.
document.addEventListener("click", async (e) => {
  if (e.target.matches(".run-code-button")) {
    await ensureShinylivePanel();
    sendThisShinyappToWindow(e.target);
  }
});

// =====================================================================================
// Functions for sending/requesting files from shinylive panel
// =====================================================================================

// This should be called from a button inside of the .assistant-shinyapp div. It will
// send the files inside of that div to the shinylive panel.
function sendThisShinyappToWindow(buttonEl) {
  const shinyappTag = buttonEl.closest(".assistant-shinyapp");
  const fileTags = shinyappTag.querySelectorAll(".assistant-shinyapp-file");

  const files = Array.from(fileTags).map((fileTag) => {
    return {
      name: fileTag.querySelector(".filename").innerText,
      content: fileTag.querySelector("pre").textContent,
      type: "text",
    };
  });

  sendFileContentsToWindow(files);
}

function sendFileContentsToWindow(fileContents) {
  document.getElementById("shinylive-panel").contentWindow.postMessage(
    {
      type: "setFiles",
      files: fileContents,
    },
    "*"
  );
}

async function requestFileContentsFromWindow() {
  const shinylivePanel = document.getElementById("shinylive-panel");
  if (shinylivePanel === null) {
    return [];
  }

  const reply = await postMessageAndWaitForReply(
    document.getElementById("shinylive-panel").contentWindow,
    { type: "getFiles" }
  );

  return reply;
}

function postMessageAndWaitForReply(targetWindow, message) {
  return new Promise((resolve) => {
    const channel = new MessageChannel();

    channel.port1.onmessage = (event) => {
      resolve(event.data);
    };

    targetWindow.postMessage(message, "*", [channel.port2]);
  });
}

// =====================================================================================
// Code for saving/loading language switch state to localStorage
// =====================================================================================

const LANGUAGE_INPUT_ID = "language_switch";
const VERBOSITY_INPUT_ID = "verbosity";

$(document).on("shiny:sessioninitialized", function () {
  // Checkbox state is stored as a string in localstorage
  const languageSavedState = localStorage.getItem(LANGUAGE_INPUT_ID) === "true";
  if (languageSavedState !== null) {
    setInputValue(LANGUAGE_INPUT_ID, languageSavedState);
  }

  const verbositySavedState = localStorage.getItem(VERBOSITY_INPUT_ID);
  if (verbositySavedState !== null) {
    setInputValue(VERBOSITY_INPUT_ID, verbositySavedState);
  }
});

$(document).on("shiny:inputchanged", function (e) {
  if ([LANGUAGE_INPUT_ID, VERBOSITY_INPUT_ID].includes(e.name)) {
    localStorage.setItem(e.name, e.value);
  }
});

function setInputValue(inputId, value) {
  const el = document.getElementById(inputId);
  if (!el) {
    console.error("Element with id '" + inputId + "' not found");
    return;
  }
  const binding = $(el).data("shiny-input-binding");
  binding.setValue(el, value);
  $(el).trigger("change");
}

// =====================================================================================
// Recovery code
// =====================================================================================

// Client mirror of server side chat history state
let chat_history = [];

// Server sends this on new user input or assistant response
Shiny.addCustomMessageHandler("sync-chat-messages", (msg) => {
  chat_history.push(...msg.messages);
});

$(document).on("shiny:disconnected", async () => {
  // On disconnect, we save all the state needed for restoration to the URL hash
  // and update the URL immediately. This way, the user can either hit Reload,
  // or click the Reconnect button, and either way they'll get back to the same
  // state.
  //
  // The restore state starts out as two pieces of JSON that look like:
  //
  // chat_history =
  //   [
  //     { "role": "user", "content": "Hello" },
  //     { "role": "assistant", "content": "Certainly! I can help you with that." }
  //   ];
  //
  // files =
  //   [
  //     { "name": "app.py", "content": "print('Hello, world!')" }
  //   ]
  // }
  //
  // Each value is JSONified, base64 encoded, and then turned into query string
  // pairs. The final URL looks like:
  // #chat_history=<base64>&files=<base64>

  // We can save the chat history immediately, since we already have the data.
  // Go ahead and do that, in case something goes wrong with the (much more
  // complicated) process to get the file data.
  let hash =
    "#chat_history=" +
    encodeURIComponent(encodeToBase64(JSON.stringify(chat_history)));
  window.location.hash = hash;

  try {
    // If we successfully get the code from the shinylive panel, we'll add that
    // to the hash as well. The shinylive panel may not exist, as it doesn't get
    // created until the assistant generates some code.
    if (document.getElementById("shinylive-panel")) {
      const fileContents = await requestFileContentsFromWindow();
      hash +=
        "&files=" +
        encodeURIComponent(encodeToBase64(JSON.stringify(fileContents.files)));
    }
  } catch (e) {
    console.error("Failed to get file contents from shinylive panel", e);
  }

  if (explicitLeftWidth !== null) {
    hash += `&leftWidth=${explicitLeftWidth}`;
  }

  window.location.hash = hash;

  // Now that we're done updating the hash, we can show the reconnect modal to
  // encourage the user to reconnect.
  const template = document.querySelector("template#custom_reconnect_modal");
  const clone = document.importNode(template.content, true);
  document.body.appendChild(clone);
});

$(document).on("click", "#custom-reconnect-link", () => {
  window.location.reload();
});

const shinyliveReadyPromise = new Promise((resolve) => {
  window.addEventListener("message", (event) => {
    if (event.data.type === "shinyliveReady") {
      resolve();
    }
  });
});

const domContentLoadedPromise = new Promise((resolve) => {
  document.addEventListener("DOMContentLoaded", resolve);
});

const shinyConnectedPromise = new Promise((resolve) => {
  $(document).on("shiny:connected", resolve);
});

// Drop "#" from hash
let hash = window.location.hash?.replace(/^#/, "");
const params = new URLSearchParams(hash || "");

// Now restore shinylive file contents from window.location.hash, if any. (We
// don't need to worry about restoring the chat history here; that's being
// handled by the server, which always has access to the initial value of
// window.location.hash.)
async function restoreFileContents() {
  if (params.has("files") && params.get("files")) {
    const files = JSON.parse(
      decodeFromBase64(decodeURIComponent(params.get("files")))
    );
    // Wait for shinylive to come online
    await shinyliveReadyPromise;
    if (files.length > 0) {
      console.log(`Restoring ${files.length} file(s)`);
    }
    sendFileContentsToWindow(files);
  }
}

async function restoreSidebarSize() {
  await domContentLoadedPromise;
  if (params.has("leftWidth")) {
    const leftWidth = parseInt(params.get("leftWidth"));
    updateLayout(leftWidth);
  }
}

async function restore() {
  await Promise.all([
    restoreFileContents(),
    restoreSidebarSize(),
    // Wait for shiny to connect before clearing the hash, otherwise the
    // server won't have the chat history when it needs it
    shinyConnectedPromise,
  ]);
  window.location.hash = "";
}

restore().catch((err) => {
  console.error("Failed to restore", err);
});

// =====================================================================================
// Unicode-aware base64 encoding/decoding
// =====================================================================================

function encodeToBase64(str) {
  const encoder = new TextEncoder();
  const uint8Array = encoder.encode(str);
  return btoa(String.fromCharCode.apply(null, uint8Array));
}

function decodeFromBase64(base64) {
  const binaryString = atob(base64);
  const uint8Array = Uint8Array.from(binaryString, (char) =>
    char.charCodeAt(0)
  );
  const decoder = new TextDecoder();
  return decoder.decode(uint8Array);
}

// =====================================================================================
// Quick and dirty sidebar drag resize
// =====================================================================================

const MIN_WIDTH = "10vw";
const MAX_WIDTH = "90vw";
let explicitLeftWidth = null;

function updateLayout(leftWidth) {
  document
    .querySelector(".bslib-sidebar-layout")
    .style.setProperty(
      "--_sidebar-width",
      `max(min(${leftWidth}px, ${MAX_WIDTH}), ${MIN_WIDTH})`
    );
  explicitLeftWidth = leftWidth;
}

document.addEventListener("DOMContentLoaded", () => {
  const resizer = document.querySelector(".sidebar-resizer");

  const handlePointerMove = (e) => {
    const leftWidth = e.clientX;
    updateLayout(leftWidth);
  };

  const handlePointerUp = (e) => {
    resizer.releasePointerCapture(e.pointerId);
    document.removeEventListener("pointermove", handlePointerMove);
    document.removeEventListener("pointerup", handlePointerUp);
  };

  const handlePointerDown = (e) => {
    resizer.setPointerCapture(e.pointerId);
    document.addEventListener("pointermove", handlePointerMove);
    document.addEventListener("pointerup", handlePointerUp);
  };

  resizer.addEventListener("pointerdown", handlePointerDown);
});

/**
 * Call from anywhere to ensure that the shinylive panel is shown and ready.
 */
async function ensureShinylivePanel() {
  Shiny.setInputValue("show_shinylive", true);
  await shinyliveReadyPromise;
}

function showShinylivePanel(smooth) {
  const el = document.querySelector(".bslib-sidebar-layout");
  el.classList.remove("chat-full-width");

  if (smooth) {
    el.classList.add("sidebar-smooth-transition");
    setTimeout(() => {
      el.classList.remove("sidebar-smooth-transition");
    }, 500);
  }

  // document
  //   .querySelector(".bslib-sidebar-layout")
  //   .style.setProperty("--_sidebar-width", defaultSidebarWidth);
}

// =====================================================================================
// Close popover when clicking outside
// =====================================================================================

function getTriggerElement(popoverElement) {
  // Get all potential trigger elements
  const triggers = document.querySelectorAll('[data-bs-toggle="popover"]');

  // Iterate through triggers to find the one that matches our popover
  for (let trigger of triggers) {
    const popoverInstance = bootstrap.Popover.getInstance(trigger);
    if (popoverInstance && popoverInstance.tip === popoverElement) {
      return trigger;
    }
  }

  // If no matching trigger is found
  return null;
}

document.addEventListener("click", (e) => {
  const popovers = document.querySelectorAll(".popover");
  popovers.forEach((popover) => {
    if (!popover.contains(e.target)) {
      const trigger = getTriggerElement(popover);
      if (trigger && !trigger.contains(e.target)) {
        const popoverInstance = bootstrap.Popover.getInstance(trigger);
        if (popoverInstance) {
          popoverInstance.hide();
        }
      }
    }
  });
});

setTimeout(() => {
  var popoverTriggerList = Array.from(
    document.querySelectorAll('[data-bs-toggle="popover"]')
  );

  var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
    // Only initialize popovers that haven't already be initialized (a bslib popover
    // would already be initalized by this point, and re-initializing would break it).
    if (bootstrap.Popover.getInstance(popoverTriggerEl) === null) {
      return new bootstrap.Popover(popoverTriggerEl);
    }
  });
}, 1000);
````

## File: scripts/send_invites.py
````python
#!/usr/bin/env python3

import argparse
import hmac
import json
import os
import re
import sys

import dotenv
import markdown
import pandas as pd
import requests
from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials
from google_auth_oauthlib.flow import InstalledAppFlow
from googleapiclient.discovery import build
from googleapiclient.errors import HttpError

script_dir = os.path.dirname(__file__)
parent_dir = os.path.dirname(script_dir)
token_json_path = os.path.join(script_dir, "token.json")
template_path = os.path.join(script_dir, "template.md")
dotenv.load_dotenv(os.path.join(parent_dir, ".env"))

# Mailgun configuration
MAILGUN_API_KEY = os.getenv("MAILGUN_API_KEY", None)
MAILGUN_DOMAIN = "t.mx.posit.co"
MAILGUN_FROM_EMAIL = "shiny-assistant-invite@t.mx.posit.co"
if not MAILGUN_API_KEY:
    raise ValueError("MAILGUN_API_KEY is not set in environment or .env file")

EMAIL_SIGNATURE_KEY = os.getenv("EMAIL_SIGNATURE_KEY", None)
if not EMAIL_SIGNATURE_KEY:
    raise ValueError("EMAIL_SIGNATURE_KEY is not set in environment or .env file")
EMAIL_SIGNATURE_KEY = bytes.fromhex(EMAIL_SIGNATURE_KEY)

# If modifying these scopes, delete the file token.json.
SCOPES = ["https://www.googleapis.com/auth/spreadsheets"]

# The ID and range of the spreadsheet.
SHEET_ID = "1uXXu3phsi64CtKd52d5NKW5PTS9aBJQbzlp3qsUnGTc"
SHEET_RANGE = "Form Responses 1!A:H"


def get_google_sheet_service():
    creds = None
    if os.path.exists(token_json_path):
        creds = Credentials.from_authorized_user_file(token_json_path, SCOPES)
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            flow = InstalledAppFlow.from_client_secrets_file(
                os.path.join(script_dir, "credentials.json"), SCOPES
            )
            creds = flow.run_local_server(port=0)
        with open(token_json_path, "w") as token:
            token.write(creds.to_json())

    return build("sheets", "v4", credentials=creds)


def get_sheet_data(service):
    try:
        result = (
            service.spreadsheets()
            .values()
            .get(spreadsheetId=SHEET_ID, range=SHEET_RANGE)
            .execute()
        )
        values = result.get("values", [])
        df = pd.DataFrame(values[1:], columns=values[0])
        df.columns = [
            "timestamp",
            "email",
            "name",
            "company",
            "title",
            "shiny_languages",
            "anthropic_api_key",
            "invite_sent",
        ]
        return df
    except HttpError as error:
        print(f"An error occurred: {error}")
        return None


def read_email_template():
    try:
        with open(template_path, "r") as file:
            markdown_content = file.read()
        html_content = markdown.markdown(markdown_content)
        return html_content
    except FileNotFoundError:
        print(f"Error: template.md not found in {script_dir}")
        return None
    except Exception as e:
        print(f"Error reading template file: {str(e)}")
        return None


def send_bulk_emails(recipients_df):
    successful_emails = []

    html_content = read_email_template()
    if not html_content:
        print("Failed to read email template. Aborting email send.")
        return successful_emails

    recipient_variables = {
        row["email"]: {
            "name": row["name"],
            "url": create_signed_url(row["email"]),
        }
        for _, row in recipients_df.iterrows()
    }

    try:
        response = requests.post(
            f"https://api.mailgun.net/v3/{MAILGUN_DOMAIN}/messages",
            auth=("api", MAILGUN_API_KEY),
            data={
                "from": MAILGUN_FROM_EMAIL,
                "h:Reply-To": "winston+shinyassistant@posit.co",
                "to": recipients_df["email"].tolist(),
                "subject": "Your Shiny Assistant invitation is here",
                "html": html_content,
                "recipient-variables": json.dumps(recipient_variables),
            },
        )

        if response.status_code == 200:
            successful_emails = recipients_df["email"].tolist()
            print(
                f"Bulk email sent successfully to {len(successful_emails)} recipients."
            )
        else:
            print(f"Failed to send bulk email: {response.text}")
    except Exception as e:
        print(f"Error sending bulk email: {str(e)}")

    return successful_emails


def update_sheet(service, sent_emails):
    try:
        df = get_sheet_data(service)
        df.loc[
            df["email"].isin(sent_emails) & (df["invite_sent"] != "Yes"), "invite_sent"
        ] = "Yes"

        updates = []
        for index, row in df.iterrows():
            if row["email"] in sent_emails and row["invite_sent"] == "Yes":
                updates.append(
                    {"range": f"Form Responses 1!H{index + 2}", "values": [["Yes"]]}
                )

        if updates:
            body = {"valueInputOption": "RAW", "data": updates}
            service.spreadsheets().values().batchUpdate(
                spreadsheetId=SHEET_ID, body=body
            ).execute()
            print(f"Sheet updated for {len(updates)} rows.")
        else:
            print("No updates needed.")
    except HttpError as error:
        print(f"An error occurred while updating the sheet: {error}")


def is_valid_email(email):
    email_regex = re.compile(r"[^@]+@[^@]+\.[^@]+")
    return email_regex.match(email) is not None


def process_single_email(service, email):
    df = get_sheet_data(service)
    if df.empty:
        print("No data found in the sheet.")
        return

    row = df[df["email"].str.lower() == email.lower()]
    if not row.empty:
        if row["invite_sent"].values[0] == "Yes":
            print(f"An invite has already been sent to {email}.")
        else:
            recipients = row[["name", "email"]]
            sent_emails = send_bulk_emails(recipients)
            if sent_emails:
                update_sheet(service, sent_emails)
                print(f"Invite sent to {email}.")
            else:
                print(f"Failed to send invite to {email}.")
    else:
        print(f"Email address {email} not found in the sheet.")


def print_pending_invites(df):
    pending_invites = df[df["invite_sent"] != "Yes"].drop(columns=["invite_sent"])
    if not pending_invites.empty:
        print("Pending invites:")
        print(pending_invites)
        print(f"\nTotal pending invites: {len(pending_invites)}")
    else:
        print("No pending invites found.")


def create_signed_url(email):
    sig = hmac.digest(EMAIL_SIGNATURE_KEY, email.encode("utf-8"), "sha256").hex()
    email = requests.utils.quote(email)
    sig = requests.utils.quote(sig)
    return f"https://gallery.shinyapps.io/assistant/?email={email}&sig={sig}"


def main(arg=None):
    service = get_google_sheet_service()
    df = get_sheet_data(service)

    if df is None or df.empty:
        print("No data found.")
        return

    try:
        if arg is None:
            print_pending_invites(df)
        elif isinstance(arg, str) and is_valid_email(arg):
            process_single_email(service, arg)
        else:
            max_recipients = arg
            recipients = df[(df["invite_sent"] != "Yes")].head(max_recipients)
            if not recipients.empty:
                sent_emails = send_bulk_emails(recipients)
                if sent_emails:
                    update_sheet(service, sent_emails)
                else:
                    print("No emails were sent successfully.")
            else:
                print("No recipients found to email.")

    except HttpError as err:
        print(f"An error occurred: {err}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Send bulk emails to recipients, process a single email, or list pending invites."
    )
    parser.add_argument(
        "arg",
        nargs="?",
        help="Either the maximum number of recipients to email or a single email address. If not provided, lists pending invites.",
    )
    args = parser.parse_args()

    if args.arg is None:
        main()
    elif args.arg.isdigit():
        main(int(args.arg))
    elif is_valid_email(args.arg):
        main(args.arg)
    else:
        print(
            "Invalid argument. Please provide either a number, a valid email address, or no argument to list pending invites."
        )
        sys.exit(1)
````

## File: scripts/template.md
````markdown
Hello %recipient.name%,

Welcome to the Shiny Assistant beta program!

Here's your personal link to Shiny Assistant. You will need to use this link every time.

[%recipient.url%](%recipient.url%)

Please drop by our [Discord server](https://discord.gg/yMGCamUMnS) and say hi--your questions and comments are very welcome.

Thanks, and hope you enjoy Shiny Assistant!

--The Shiny Team
````

## File: signature.py
````python
from __future__ import annotations

import hmac
import os
from urllib.parse import parse_qs

from shiny import Inputs, Outputs, Session, module, ui

with open(os.path.join(os.path.dirname(__file__), "denied.md")) as f:
    denied_message = ui.markdown(f.read())


def verify_hmac(key: bytes | str, email: str, sig: str) -> bool:
    if isinstance(key, str):
        key = bytes.fromhex(key)
    correct_sig = hmac.digest(key, email.encode("utf-8"), "sha256").hex()
    return hmac.compare_digest(sig, correct_sig)


@module.ui
def validate_email_ui() -> ui.Tag | None:
    return ui.div()


@module.server
def validate_email_server(
    input: Inputs,
    output: Outputs,
    session: Session,
    *,
    hostname: str,
    querystring: str,
    key: bytes | str | None,
) -> bool:
    if key is None:
        # No signature; anyone is allowed
        return True
    if not os.getenv("ENFORCE_SIG_ON_LOCALHOST") and hostname == "localhost":
        # Bypass signature check for localhost. Note that this is the hostname
        # as seen by the client, not the server.
        return True

    if querystring.startswith("?"):
        querystring = querystring[1:]
    qs = parse_qs(querystring)
    email = qs.get("email", [""])[0]
    digest = qs.get("sig", [""])[0]

    if verify_hmac(key, email, digest):
        return True
    else:
        ui.modal_show(
            ui.modal(
                denied_message,
                title="Invitation required",
                footer=[],
            )
        )
        return False
````

## File: style.css
````css
.bslib-sidebar-layout > .main {
  padding: 0;
}

.hidden {
  visibility: hidden;
}

.sidebar-content {
  position: relative;
}

.run-code-button {
  display: block;
  top: 50px;
  left: 60px;
  border: 1px solid black;
  border-radius: 20px;
  padding: 3px 10px;
}

.run-code-button-container {
  display: flex;
  justify-content: flex-end;
  margin-bottom: 1em;
}

/* Make it so the switch doesn't change color when toggled. Note that the circle SVG is
just borrowed from the `:checked` state for switches.*/
#language_switch {
  --bs-form-switch-bg: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='-4 -4 8 8'%3e%3ccircle r='3' fill='%23fff'/%3e%3c/svg%3e");
  background-color: var(--bs-blue);
}

.bslib-sidebar-layout.chat-full-width {
  --_sidebar-width: 100% !important;
}

.bslib-sidebar-layout.chat-full-width > .sidebar {
  grid-column: 1 / 3;
}

.bslib-sidebar-layout.chat-full-width > .collapse-toggle {
  display: none;
}

.bslib-sidebar-layout.chat-full-width > .sidebar shiny-chat-container {
  padding: 16px;
  height: auto !important;
  max-height: 100%;

  /* .card */
  --bs-card-spacer-y: 1rem;
  --bs-card-spacer-x: 1rem;
  --bs-card-title-spacer-y: 0.5rem;
  --bs-card-title-color: ;
  --bs-card-subtitle-color: ;
  --bs-card-border-width: var(--bs-border-width);
  --bs-card-border-color: var(--bs-border-color-translucent);
  --bs-card-border-radius: 8px;
  --bs-card-box-shadow: ;
  --bs-card-inner-border-radius: calc(8px - (var(--bs-border-width)));
  --bs-card-cap-padding-y: 0.5rem;
  --bs-card-cap-padding-x: 1rem;
  --bs-card-cap-bg: rgba(var(--bs-body-color-rgb), 0.03);
  --bs-card-cap-color: ;
  --bs-card-height: ;
  --bs-card-color: ;
  --bs-card-bg: var(--bs-body-bg);
  --bs-card-img-overlay-padding: 1rem;
  --bs-card-group-margin: 0.75rem;
  position: relative;
  display: flex;
  display: -webkit-flex;
  flex-direction: column;
  -webkit-flex-direction: column;
  min-width: 0;
  height: var(--bs-card-height);
  color: var(--bs-body-color);
  word-wrap: break-word;
  background-color: var(--bs-card-bg);
  background-clip: border-box;
  border: var(--bs-card-border-width) solid var(--bs-card-border-color);
  border-radius: var(--bs-card-border-radius);

  /* .bslib-card */
  box-shadow: var(
    --bslib-card-box-shadow,
    0px 0px 2px 0px RGBA(var(--bslib-box-shadow-color-rgb), 0.14),
    0px 2px 4px 0px RGBA(var(--bslib-box-shadow-color-rgb), 0.16)
  );
  border-color: var(--bslib-card-border-color, transparent);
}

.bslib-sidebar-layout.chat-full-width > .sidebar shiny-chat-input {
  margin-top: 1em;
}

.bslib-sidebar-layout.chat-full-width .main {
  visibility: hidden;
}

.sidebar-resizer {
  /* The resizer is a vertical bar on the right side of the sidebar. It's
    hard-coded to set the appropriate CSS variable on the sidebar layout. */
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  width: 3px;
  cursor: ew-resize;
  background-color: #e6e6e6;
}

/* This is needed for smooth transitions with complex values. */
@property --_sidebar-width {
  syntax: "<length-percentage>";
  inherits: false;
  initial-value: 100%;
}

.sidebar-smooth-transition {
  transition: --_sidebar-width 0.4s ease;
}

.sidebar-collapsed .sidebar-resizer {
  /* No resizer when the sidebar is collapsed */
  display: none;
}

.sidebar-collapsed iframe {
  /* When the resizer isn't visible, the iframe is missing a left border; add it
     back like this */
  border-left: 3px solid #e6e6e6;
}

.assistant-shinyapp-file .filename {
  font-weight: bold;
  font-family: monospace;
  margin-bottom: 0.2em;
}

#ss-overlay,
#shiny-disconnected-overlay {
  display: none !important;
}
````
