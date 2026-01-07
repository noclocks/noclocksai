# R Shiny AI Assistant

> This example shiny app is based off the original Python for Shiny [posit-dev/shiny-assistant](https://github.com/posit-dev/shiny-assistant)
> application and is used to leverage LLMs to generate shiny app code using natural language and a chatbot interface
> to build a shiny app interactively.

![image](https://github.com/user-attachments/assets/0a304723-fab8-45fc-87d1-a3c429e64492)

## Overview

The shiny assistant app is an R-based AI-powered tool for generating Shiny applications, built using:

- shinychat for the conversational interface
- ellmer for LLM interactions (currently OpenAI GPT-4o-mini)
- Shinylive embedded iframe for live code preview
- bslib for modern UI styling

## Features

- **Conversational Interface**: Interact with the assistant using natural language to generate Shiny app code.
- **Live Code Preview**: View and interact with the generated Shiny app in real-time using the embedded Shinylive editor.
- **LLM Integration**: Leverage powerful language models to generate code snippets and entire Shiny apps based on user prompts.
- **Multi-file Management**: Supports modular Shiny apps with multiple R script files.

## Components

### Main App

- Single-page sidebar layout with chat interface and live preview
- Uses ellmer chat_openai with system prompt for Shiny code generation
- Observes chat turns and extracts/injects code into Shinylive iframe
- Handles share URL generation for Shinylive
