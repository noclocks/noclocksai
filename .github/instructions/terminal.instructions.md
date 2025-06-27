---
applyTo: "**"
description: "Terminal Instructions"
---

# Terminal Instructions

*Instructions for using the terminal effectively and avoiding common pitfalls.*

Follow these guidelines to ensure reliable and efficient terminal operations.

## Command Execution (Critical)

- **ALWAYS** be extremely patient when waiting for command output, especially when a new terminal/shell is spawned.
- **ALWAYS** set `isBackground: false` when running terminal commands.
  - *This ensures commands run in the foreground and output is visible to both you and the user.*
- **NEVER** set `isBackground: true` when running terminal commands, unless you need to run a long-running process.

## Terminal Session Management

- **REUSE** the same terminal session for all commands unless parallel execution is required.
- **NEVER** spawn or launch new terminals when one is already available to you; this causes confusion and context loss.
- **ALWAYS** use a single, dedicated "Copilot" terminal for all interactions.

## Working Directory & Shell

- The default shell is `pwsh` (PowerShell Core)
- Use appropriate syntax and commands for PowerShell Core. Do not use bash or other shell syntax.
- **ALWAYS** ensure you are in the correct working directory before running commands (`$PWD`, `Get-Location`, `Set-Location`, etc.)

## Command Output

- **ALWAYS** wait for command output before proceeding to the next step.
- **NEVER** check for console output in your background terminal after running commands in the main terminal.
- **ALWAYS** ask the user to provide the resulting console output if you are unable to see it.
- **ALWAYS** be extremely patient when waiting for command output, especially when a new terminal/shell is spawned.
- For sequential commands, **ALWAYS** use the same terminal and ensure each command completes, and you see the output before starting the next.

## File & Context Awareness

- Ensure all files needed by commands are saved and present in the workspace.
- If working in a monorepo or ambiguous directory, clarify or confirm the intended subdirectory before running commands.

## Error Handling

- If a command fails, **review the output** and address the error before retrying.
- **NEVER** automatically retry in a new terminal or directory.

## Troubleshooting

- If a command does not run, check if a new terminal was spawned—rerun the command in the existing terminal.
- If output does not appear, press Enter in the terminal to prompt completion.
- Restart the terminal or VS Code if persistent issues occur.
