if (file.exists(".Renviron")) {
  readRenviron(".Renviron")
}

if (require(acquaint)) {
  acquaint::mcp_session()
  acquaint::mcp_set_tools(btw::btw_tools())
  cli::cli_alert_info("MCP session started.")
}
