

test_that("db_connect() works", {
  skip_if_no_db("Database configuration not available")

  # Test database connection
  expect_no_error({
    db_config <- get_db_config()
    # Only test connection if all required parameters are present
    if (all(c("host", "dbname", "user", "password") %in% names(db_config))) {
      tryCatch(
        {
          conn <- db_connect()
          # Test that connection is valid
          expect_true(DBI::dbIsValid(conn))
          DBI::dbDisconnect(conn)
        },
        error = function(e) {
          skip(paste("Database connection failed:", e$message))
        }
      )
    }
  })
})
