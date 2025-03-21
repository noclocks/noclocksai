---
date: 2025-03-06
source: 
author: OpenAI
title: OpenAI Function Calling
---

# OpenAI Function Calling

Enable models to fetch data and take actions.

**Function calling** provides a powerful and flexible way for OpenAI models to interface with your code or external services, and has two primary use cases:

|  Use Case | Details |
| ---------- | -------- |
| **Fetching Data** | Retrieve up-to-date information to incorporate into the model's response (RAG). Useful for searching knowledge bases and retrieving specific data from APIs (e.g. current weather data). |
| **Taking Action** | Perform actions like submitting a form, calling APIs, modifying application state (UI/frontend or backend), or taking agentic workflow actions (like [handing off](https://cookbook.openai.com/examples/orchestrating_agents) the conversation). |