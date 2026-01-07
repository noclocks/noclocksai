
#  ------------------------------------------------------------------------
#
# Title : Setup Testing Configuration
#    By : Jimmy Briggs
#  Date : 2025-03-11
#
#  ------------------------------------------------------------------------

has_encryption_key <- httr2::secret_has_key("NOCLOCKS_ENCRYPTION_KEY")

if (!has_encryption_key) {
  cli::cli_alert_warning("No encryption key found. Will skip any tests required the decrypted configuration file.")
  skip_config_tests <- TRUE
} else {
  cli::cli_alert_info("Encryption key found. Decrypting configuration file.")
  tryCatch({
    decrypt_config()
    skip_config_tests <- FALSE
  })
}
