# Synchronizing MCP Servers Between Cline and Claude Desktop

This documentation describes how to use the scripts in the `dev/scripts/mcp-sync` directory to synchronize Model Context Protocol (MCP) server configurations between the Cline extension in VSCode and the Claude Desktop application.

## What are MCP Servers?

MCP (Model Context Protocol) servers provide additional tools and resources that extend Claude's capabilities, such as:
- Access to external APIs (Slack, weather services, etc.)
- File system operations
- Database connections
- Browser interactions
- And more

## Scripts Location

The synchronization scripts are located in:
```
dev/scripts/mcp-sync/
```

This directory contains:
1. `merge_mcp_configs.ps1` - Creates a merged configuration of MCP servers from both applications
2. `apply_mcp_configs.ps1` - Applies the merged configuration to both applications
3. `test_configs.ps1` - Tests the merged configurations without applying them

## How to Use

### Step 1: Generate the Merged Configuration

Run the merge script to create merged configurations for both applications:

```powershell
cd dev/scripts/mcp-sync
powershell -ExecutionPolicy Bypass -File merge_mcp_configs.ps1
```

This script:
- Reads both configurations
- Creates backup files
- Merges the MCP server configurations
- Generates preview files (`updated_cline_config.json` and `updated_claude_config.json`) in the same directory

### Step 2: Test the Generated Configurations (Optional)

You can verify the configurations with the test script:

```powershell
cd dev/scripts/mcp-sync
powershell -ExecutionPolicy Bypass -File test_configs.ps1
```

The test script will:
- Validate that the configuration files are properly formatted
- Show the servers that would be synchronized
- Highlight any differences between the two applications

### Step 3: Apply the Configurations

Run the apply script to update both applications with the merged configurations:

```powershell
cd dev/scripts/mcp-sync
powershell -ExecutionPolicy Bypass -File apply_mcp_configs.ps1
```

The script will:
- Ask for confirmation before making changes
- Copy the updated configurations to the appropriate locations
- Provide instructions for applying the changes

### Step 4: Restart Applications

Restart both Cline (VSCode) and Claude Desktop for the changes to take effect.

## Configuration File Locations

- Cline: `C:\Users\jimmy\AppData\Roaming\Code\User\globalStorage\saoudrizwan.claude-dev\settings\cline_mcp_settings.json`
- Claude Desktop: `C:\Users\jimmy\AppData\Roaming\Claude\claude_desktop_config.json`

## Backup Files

Backup files are created before any changes are made:
- `C:\Users\jimmy\AppData\Roaming\Code\User\globalStorage\saoudrizwan.claude-dev\settings\cline_mcp_settings.json.backup`
- `C:\Users\jimmy\AppData\Roaming\Claude\claude_desktop_config.json.backup`

If anything goes wrong, you can restore these backup files.

## Notes

- The property formats between Cline and Claude Desktop may differ slightly:
  - Cline MCP servers include `disabled` and `autoApprove` properties
  - Claude Desktop MCP servers may not have these properties
- The scripts handle these differences automatically
