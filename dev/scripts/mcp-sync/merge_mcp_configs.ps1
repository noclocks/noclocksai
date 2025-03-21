# Read the configuration files
$clinePath = 'C:\Users\jimmy\AppData\Roaming\Code\User\globalStorage\saoudrizwan.claude-dev\settings\cline_mcp_settings.json'
$claudePath = 'C:\Users\jimmy\AppData\Roaming\Claude\claude_desktop_config.json'

$cline = Get-Content $clinePath | ConvertFrom-Json
$claude = Get-Content $claudePath | ConvertFrom-Json

# Create backup files
Copy-Item -Path $clinePath -Destination "$($clinePath).backup"
Copy-Item -Path $claudePath -Destination "$($claudePath).backup"

Write-Host "Created backups of both configuration files"

# Path for output files
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$outputDir = $scriptDir

# Display current configurations
Write-Host "`nCline MCP Servers:" -ForegroundColor Cyan
$cline.mcpServers.PSObject.Properties.Name | ForEach-Object {
    Write-Host "- $_"
}

Write-Host "`nClaude Desktop MCP Servers:" -ForegroundColor Cyan
$claude.mcpServers.PSObject.Properties.Name | ForEach-Object {
    Write-Host "- $_"
}

# Prepare updated configurations
$updatedCline = $cline.PSObject.Copy()
$updatedClaude = $claude.PSObject.Copy()

# Add Claude servers to Cline
foreach ($server in $claude.mcpServers.PSObject.Properties) {
    if (-not $cline.mcpServers.PSObject.Properties[$server.Name]) {
        $serverConfig = $server.Value.PSObject.Copy()
        # Add default properties for Cline if missing
        if (-not $serverConfig.PSObject.Properties["disabled"]) {
            $serverConfig | Add-Member -NotePropertyName "disabled" -NotePropertyValue $false
        }
        if (-not $serverConfig.PSObject.Properties["autoApprove"]) {
            $serverConfig | Add-Member -NotePropertyName "autoApprove" -NotePropertyValue @()
        }
        $updatedCline.mcpServers | Add-Member -NotePropertyName $server.Name -NotePropertyValue $serverConfig
    }
}

# Add Cline servers to Claude
foreach ($server in $cline.mcpServers.PSObject.Properties) {
    if (-not $claude.mcpServers.PSObject.Properties[$server.Name]) {
        $serverConfig = $server.Value.PSObject.Copy()
        # Remove Cline-specific properties if not needed in Claude
        if ($serverConfig.PSObject.Properties["disabled"]) {
            $serverConfig.PSObject.Properties.Remove("disabled")
        }
        if ($serverConfig.PSObject.Properties["autoApprove"]) {
            $serverConfig.PSObject.Properties.Remove("autoApprove")
        }
        $updatedClaude.mcpServers | Add-Member -NotePropertyName $server.Name -NotePropertyValue $serverConfig
    }
}

# Display updated configurations
Write-Host "`nUpdated Cline MCP Servers:" -ForegroundColor Green
$updatedCline.mcpServers.PSObject.Properties.Name | ForEach-Object {
    Write-Host "- $_"
}

Write-Host "`nUpdated Claude Desktop MCP Servers:" -ForegroundColor Green
$updatedClaude.mcpServers.PSObject.Properties.Name | ForEach-Object {
    Write-Host "- $_"
}

# Save to temp files for review
$updatedClinePath = "$outputDir\updated_cline_config.json"
$updatedClaudePath = "$outputDir\updated_claude_config.json"
$updatedCline | ConvertTo-Json -Depth 10 | Out-File $updatedClinePath
$updatedClaude | ConvertTo-Json -Depth 10 | Out-File $updatedClaudePath

Write-Host "`nGenerated preview files:" -ForegroundColor Yellow
Write-Host "- $updatedClinePath"
Write-Host "- $updatedClaudePath"
Write-Host "`nReview these files before applying changes."
