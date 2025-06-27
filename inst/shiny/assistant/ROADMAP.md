# Enhanced Shiny Assistant Roadmap

## Vision
Develop a next-generation, agentic, AI-powered assistant for R Shiny app development, with a modern interface and advanced code generation capabilities, inspired by tools like bolt.new and Copilot for React/TypeScript. The focus is exclusively on R (not Python), with deep integration of the shinylive editor and robust support for modular, multi-file R Shiny app generation.

## Key Features

- Agentic code generation for R Shiny (R only, no Python)
- Tight integration and embedding of the shinylive editor, with robust code passing between the app and the embedded iframe
- Support for major LLM providers (OpenAI, Anthropic, Google, Groq, OpenRouter, etc.) and user API key management
- Dynamic prompt engineering and context management
- UI/UX similar to modern codegen tools (multi-panel, chat, code preview, etc.)
- History and conversational interface for tracking generated apps, switching between them, and reviewing history
- User preferences and custom instructions (e.g., which packages to use/avoid)
- Only support packages available in webR and shinylive
- Multi-file management and modularity (no overwriting all code on each generation)
- Extensible tool/plugin system for custom workflows
- Project scaffolding and refactoring tools
- In-app documentation and learning resources

## Milestones

1. **Codebase Review & Refactor**
2. **Shinylive Editor Integration**
3. **LLM Provider & API Key Management**
4. **Multi-file & Modularity Support**
5. **History & Conversational Tracking**
6. **UI/UX Redesign**
7. **Feature Implementation**
8. **Testing & Documentation**

---

## Next Steps
- [ ] Review and refactor current codebase
- [ ] Set up agent instructions, prompt templates, and tool registry
- [ ] Scaffold shinylive editor integration and code passing
- [ ] Implement LLM provider support and user API key management
- [ ] Add history and conversational tracking for generated apps
- [ ] Implement multi-file and modularity support
- [ ] Design enhanced UI/UX wireframes
- [ ] Plan for extensibility and plugin support
