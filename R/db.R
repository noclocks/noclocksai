
#  ------------------------------------------------------------------------
#
# Title : Database Functions
#    By : Jimmy Briggs
#  Date : 2025-03-03
#
#  ------------------------------------------------------------------------


# connect ---------------------------------------------------------------------------------------------------------

#' Connect to the Database
#'
#' @description
#' Connect to the database using the provided configuration.
#'
#' @param db_config A list containing the database configuration. Must include the following fields:
#'   `dbname`, `host`, `user`, `password`, `port`.
#'
#' @param pool Logical. If `TRUE`, the connection will be pooled using [pool::dbPool()], otherwise will
#'   create a single connection via [DBI::dbConnect()]. Default is `TRUE`.
#'
#' @param ... Additional arguments passed to the connection function, i.e. either [pool::dbPool()] or [DBI::dbConnect()].
#'
#' @returns
#' Database connection object.
#' If `pool = TRUE`, returns a [pool::Pool-class] (R6) object.
#' If `pool = FALSE`, returns a [DBI::DBIConnection-class] (S4) object.
#'
#' @export
#'
#' @importFrom pool dbPool
#' @importFrom DBI dbConnect
db_connect <- function(db_config = get_db_config(), pool = TRUE, ...) {

  check_db_config(db_config)

  if (pool) {
    tryCatch({
      pool <- pool::dbPool(
        drv = RPostgres::Postgres(),
        dbname = db_config$dbname,
        host = db_config$host,
        port = db_config$port,
        user = db_config$user,
        password = db_config$password,
        ...
      )
      cli::cli_alert_success("Database pooled connection successfully established.")
      return(pool)
    }, error = function(e) {
      cli::cli_alert_danger("Failed to establish database pooled connection: {e$message}.")
      cli::cli_abort(e)
    })
  } else {
    tryCatch({
      conn <- DBI::dbConnect(
        drv = RPostgres::Postgres(),
        dbname = db_config$dbname,
        host = db_config$host,
        port = db_config$port,
        user = db_config$user,
        password = db_config$password,
        ...
      )
      cli::cli_alert_success("Database connection successfully established.")
      return(conn)
    }, error = function(e) {
      cli::cli_alert_danger("Failed to establish database connection: {e$message}.")
      cli::cli_abort(e)
    })
  }

}

db_schema_info <- function(pool, schema = NULL) {

  check_db_conn(pool)

  conn <- pool::poolCheckout(pool)
  withr::defer(pool::poolReturn(conn))

  schema_dm <- dm::dm_from_con(conn, schema = schema, learn_keys = TRUE)
  schema_info <- capture.output(print(dm::dm_get_tables(schema_dm)))

  head <- paste0(
    "Database Schema Information\n",
    "---------------------------\n",
    "Schema: ", schema, "\n\n",
    "Tables:\n",
    "-------\n"
  )

  paste0(
    head,
    paste(schema_info, collapse = "\n")
  )

}

# embeddings ------------------------------------------------------------------------------------------------------

#' Store Embedded Document
#'
#' @description
#' This function will insert a new document into the database along with its metadata and embedding.
#'
#' @param pool Database connection object.
#' @param title Title of the document.
#' @param content Content of the document.
#' @param metadata List of metadata to store with the document.
#'
#' @returns
#' The ID of the document stored.
#'
#' @export
#'
#' @importFrom jsonlite toJSON
#' @importFrom pool dbGetQuery
#' @importFrom cli cli_alert_success cli_alert_danger
#'
#' @examples
#' \dontrun{
#' doc_text <- readLines("inst/extdata/documents/Anthropic-Building-Effective-AI-Agents-Comprehensive-Analysis.md") |>
#'   paste(collapse = "\n")
#' pool <- db_connect()
#' db_store_document(
#'   pool,
#'   title = "Anthropic Research: Building Effective Agents",
#'   content = doc_text,
#'   metadata = list(source = "Anthropic")
#' )
#' }
db_store_document <- function(pool, title, content, metadata = list()) {

  check_db_conn(pool)

  tryCatch({
    content <- as.character(paste(content, collapse = "\n"))
    embedding <- embed_openai(text = content)
    embedding_str <- paste0("[", paste(embedding, collapse = ","), "]")
    metadata_json <- jsonlite::toJSON(metadata, auto_unbox = TRUE)
    qry <- paste0(
      "INSERT INTO \"noclocks\".\"documents\" (\"title\", \"content\", \"metadata\", \"embedding\") ",
      "VALUES ($1, $2, $3, $4) ",
      "RETURNING \"id\";"
    )
    result <- pool::dbGetQuery(pool, qry, list(title, content, metadata_json, embedding_str))
    cli::cli_alert_success("Document stored successfully with ID: {.field {result$id}}.")
    return(result$id)
  }, error = function(e) {
    cli::cli_alert_danger("Failed to store document: {e$message}.")
    cli::cli_abort(e)
  })

}

#' Retrieve Documents
#'
#' @description
#' Retrieve documents from the database based on the provided `query`.
#'
#' @param pool Database connection pool object.
#' @param query The query to search for in the documents.
#' @param max_results Maximum number of documents to retrieve.
#' @param use_cache Logical. If `TRUE`, will attempt to retrieve documents from the cache first.
#'
#' @returns
#' A data frame containing the retrieved documents.
#'
#' @export
#'
#' @importFrom dplyr tbl filter arrange desc collect
#' @importFrom DBI SQL
#' @importFrom pool dbExecute dbGetQuery
#' @importFrom cli cli_alert_success cli_alert_danger cli_abort
#'
#' @examples
#' \dontrun{
#' pool <- db_connect()
#' db_get_documents(pool, "Anthropic Research", 5)
#' }
db_get_documents <- function(pool, query, max_results = 10L, use_cache = TRUE) {

  check_db_conn(pool)

  tryCatch({

    if (use_cache) {

      cached_docs <- dplyr::tbl(pool, I("noclocks.query_cache")) |>
        dplyr::filter(stringr::str_detect(.data$qry_text, query)) |>
        dplyr::arrange(dplyr::desc(.data$frequency)) |>
        dplyr::collect()

      if (nrow(cached_docs) > 0 && length(cached_docs$document_ids) > 0) {
        doc_ids <- paste(cached_docs$document_ids, collapse = ", ")
        docs <- dplyr::tbl(pool, DBI::SQL("noclocks.documents")) |>
          dplyr::filter(.data$id %in% doc_ids) |>
          dplyr::collect()
        qry <- paste0(
          "UPDATE \"noclocks\".\"documents\" ",
          "SET frequency = frequency + 1, last_accessed = CURRENT_TIMESTAMP ",
          "WHERE qry_text = $1"
        )
        pool::dbExecute(pool, qry, list(query))
        cli::cli_alert_success("Retrieved {.field {nrow(docs)}} documents from cache.")
        return(docs)
      }
    }

    query_embedding <- embed_openai(text = query)
    embedding_str <- paste0("[", paste(query_embedding, collapse = ","), "]")
    qry <- paste0(
      "SELECT * FROM \"noclocks\".\"find_similar_documents\"($1, 0.6, $2);"
    )
    docs <- pool::dbGetQuery(pool, qry, list(embedding_str, max_results))
    if (use_cache && nrow(docs) > 0L) {
      doc_ids <- docs$id
      qry <- paste0("SELECT noclocks.update_query_cache($1, $2, $3)")
      pool::dbExecute(pool, qry, list(query, embedding_str, stringr::str_c(doc_ids, collapse = ",")))
    }
    cli::cli_alert_success("Retrieved {.field {nrow(docs)}} documents.")
    return(docs)
  }, error = function(e) {
    cli::cli_alert_danger("Failed to retrieve documents: {e$message}.")
    cli::cli_abort(e)
  })

}

#' Pre-Load Documents
#'
#' @description
#' This function pre-loads documents for a "Cache Augmented Generation" (CAG) system, based on provided `topic`.
#'
#' @param pool Database connection pool object.
#' @param topic The topic to find documents for.
#' @param max_docs Maximum number of documents to load.
#'
#' @returns
#' A formatted string of documents
#'
#' @export
#'
#' @importFrom jsonlite toJSON
db_preload_documents <- function(pool, topic, max_docs = 10) {

  check_db_conn(pool)

  docs <- db_get_documents(pool, topic, max_docs)

  if (nrow(docs) == 0) {
    return("No relevant documents found.")
  }

  # Format documents for context
  formatted_docs <- paste(
    sapply(1:nrow(docs), function(i) {
      metadata_str <- if (!is.null(docs$metadata[[i]])) {
        paste0("\nMetadata: ", jsonlite::toJSON(docs$metadata[[i]], auto_unbox = TRUE))
      } else {
        ""
      }

      paste0("Document ", docs$id[i], " - ", docs$title[i], metadata_str,
             "\nContent: ", docs$content[i], "\n\n")
    }),
    collapse = ""
  )

  return(formatted_docs)
}

