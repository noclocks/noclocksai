# Path to configuration files
$clinePath = 'C:\Users\jimmy\AppData\Roaming\Code\User\globalStorage\saoudrizwan.claude-dev\settings\cline_mcp_settings.json'
$claudePath = 'C:\Users\jimmy\AppData\Roaming\Claude\claude_desktop_config.json'

# Path for output files
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$outputDir = $scriptDir

# Path to updated configuration files
$updatedClinePath = "$outputDir\updated_cline_config.json"
$updatedClaudePath = "$outputDir\updated_claude_config.json"

# Check if the updated files exist
if (-not (Test-Path $updatedClinePath) -or -not (Test-Path $updatedClaudePath)) {
    Write-Host "Error: Updated configuration files not found. Run merge_mcp_configs.ps1 first." -ForegroundColor Red
    exit 1
}

# Confirm before applying changes
$confirmation = Read-Host "Are you sure you want to apply these changes to both Claude and Cline? (y/n)"
if ($confirmation -ne 'y') {
    Write-Host "Operation cancelled." -ForegroundColor Yellow
    exit 0
}

try {
    # Apply the changes
    Copy-Item -Path $updatedClinePath -Destination $clinePath -Force
    Copy-Item -Path $updatedClaudePath -Destination $claudePath -Force

    Write-Host "`nConfiguration files updated successfully!" -ForegroundColor Green
    Write-Host "`nCline: $clinePath"
    Write-Host "Claude Desktop: $claudePath"

    Write-Host "`nImportant: Restart Cline and Claude Desktop to apply the changes." -ForegroundColor Yellow
    Write-Host "Note: You may need to close VSCode completely for Cline MCP server changes to take effect."
} catch {
    Write-Host "Error applying changes: $_" -ForegroundColor Red
    Write-Host "The backup files were created at:"
    Write-Host "$($clinePath).backup"
    Write-Host "$($claudePath).backup"
}
