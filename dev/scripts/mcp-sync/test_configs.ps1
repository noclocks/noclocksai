# Test that the configuration files are valid and can be loaded
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$updatedClinePath = "$scriptDir\updated_cline_config.json"
$updatedClaudePath = "$scriptDir\updated_claude_config.json"

# Check if the files exist
if (-not (Test-Path $updatedClinePath) -or -not (Test-Path $updatedClaudePath)) {
    Write-Host "Error: Configuration files not found. Run merge_mcp_configs.ps1 first." -ForegroundColor Red
    exit 1
}

# Try to load the configurations
try {
    $clineConfig = Get-Content $updatedClinePath | ConvertFrom-Json
    $claudeConfig = Get-Content $updatedClaudePath | ConvertFrom-Json

    Write-Host "Cline configuration is valid." -ForegroundColor Green
    Write-Host "Claude Desktop configuration is valid." -ForegroundColor Green

    # Count the number of servers in each configuration
    $clineServers = $clineConfig.mcpServers.PSObject.Properties.Name
    $claudeServers = $claudeConfig.mcpServers.PSObject.Properties.Name

    Write-Host "`nCline MCP Servers ($($clineServers.Count)):" -ForegroundColor Cyan
    $clineServers | ForEach-Object {
        Write-Host "- $_"
    }

    Write-Host "`nClaude Desktop MCP Servers ($($claudeServers.Count)):" -ForegroundColor Cyan
    $claudeServers | ForEach-Object {
        Write-Host "- $_"
    }

    # Display common and unique servers
    $commonServers = $clineServers | Where-Object { $claudeServers -contains $_ }
    $clineOnlyServers = $clineServers | Where-Object { $claudeServers -notcontains $_ }
    $claudeOnlyServers = $claudeServers | Where-Object { $clineServers -notcontains $_ }

    Write-Host "`nCommon Servers ($($commonServers.Count)):" -ForegroundColor Green
    $commonServers | ForEach-Object {
        Write-Host "- $_"
    }

    if ($clineOnlyServers.Count -gt 0) {
        Write-Host "`nServers only in Cline ($($clineOnlyServers.Count)):" -ForegroundColor Yellow
        $clineOnlyServers | ForEach-Object {
            Write-Host "- $_"
        }
    }

    if ($claudeOnlyServers.Count -gt 0) {
        Write-Host "`nServers only in Claude Desktop ($($claudeOnlyServers.Count)):" -ForegroundColor Yellow
        $claudeOnlyServers | ForEach-Object {
            Write-Host "- $_"
        }
    }
} catch {
    Write-Host "Error validating configurations: $_" -ForegroundColor Red
}
