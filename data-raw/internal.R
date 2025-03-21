
#  ------------------------------------------------------------------------
#
# Title : Internal Data Preparation
#    By : Jimmy Briggs
#  Date : 2025-03-03
#
#  ------------------------------------------------------------------------

source("data-raw/scripts/providers.R")
source("data-raw/scripts/base_urls.R")

usethis::use_data(
  providers,
  provider_base_urls,
  internal = TRUE,
  overwrite = TRUE,
  version = 3
)
