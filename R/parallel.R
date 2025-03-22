
#  ------------------------------------------------------------------------
#
# Title : Parallel Processing
#    By : Jimmy Briggs
#  Date : 2025-03-12
#
#  ------------------------------------------------------------------------

setup_parallel_processing <- function(workers = NULL, strategy = future::multisession) {

  if (is.null(workers)) workers <- max(1, parallel::detectCores() - 1)

  plan <- future::plan(strategy, workers = workers)

  cli::cli_alert_success(
    "Parallel processing initialized with {.field {workers}} workers."
  )

  invisible(plan)

}


