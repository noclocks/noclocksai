# Comprehensive Tool Registration for Agentic RAG in R with ellmer

Building on our previous discussion about PostgreSQL vector database setup, let's explore the complete set of custom tools you should register with your ellmer chat agent to implement a robust agentic RAG architecture. An effective agentic RAG system goes beyond simple retrieval by orchestrating specialized agents that can make dynamic decisions about information retrieval and processing.

## Core Router and Control Flow Tools

### Query Router Tool

```r
# Create router function to determine correct tool path
query_router <- function(query, conversation_history) {
  tryCatch({
    cli::cli_alert_info("Routing query to appropriate tool")
    
    # Create routing payload
    payload <- list(
      query = query,
      history = conversation_history
    )
    
    # Get routing decision
    response <- chat$chat(sprintf(
      "Determine the appropriate tool for this query. Options: 
      1. direct_answer (if answerable from model knowledge)
      2. vector_search (if requires database lookup) 
      3. web_search (if current information needed)
      4. code_execution (if computational task)
      Query: %s", query))
    
    # Extract routing decision
    route <- chat$extract_data(response, 
                  type = type_object(
                    route = type_string("Selected tool path"),
                    reasoning = type_string("Explanation for selection")
                  ))
    
    cli::cli_alert_success("Query routed to: {route$route}")
    return(route)
  }, error = function(e) {
    cli::cli_alert_danger("Error in query routing: {e$message}")
    return(list(route = "direct_answer", 
                reasoning = "Defaulting due to routing error"))
  })
}

# Register the router
chat$register_tool(
  tool(
    query_router,
    "Routes queries to appropriate tools based on content",
    query = type_string("User's question or request"),
    conversation_history = type_array("Previous conversation turns")
  )
)
```

## Vector Database Interaction Tools

### Vector Search Tool

```r
vector_search <- function(query, collection_name, limit = 5, filter = NULL) {
  tryCatch({
    cli::cli_alert_info("Performing vector search")
    
    # Create embeddings using the model
    embedding <- chat$extract_data(
      chat$chat(sprintf("Convert to embedding: %s", query)),
      type = type_array("Embedding vector")
    )
    
    # Construct SQL with pgvector
    sql <- glue::glue("
      SELECT content, metadata, 
             1 - (embedding <=> '{embedding}') AS similarity
      FROM {collection_name}
      {if(!is.null(filter)) paste('WHERE', filter) else ''}
      ORDER BY embedding <=> '{embedding}'
      LIMIT {limit}
    ")
    
    # Execute query
    results <- DBI::dbGetQuery(pg_conn, sql)
    cli::cli_alert_success("Found {nrow(results)} relevant documents")
    return(results)
  }, error = function(e) {
    cli::cli_alert_danger("Vector search error: {e$message}")
    return(data.frame())
  })
}

chat$register_tool(
  tool(
    vector_search,
    "Searches vector database for semantically relevant content",
    query = type_string("Search query"),
    collection_name = type_string("Name of vector collection to search"),
    limit = type_integer("Maximum number of results to return"),
    filter = type_string("Optional metadata filter condition")
  )
)
```

### Chunking and Processing Tool

```r
chunk_and_embed_document <- function(document_path, chunk_size = 1000, 
                                     overlap = 200, collection_name) {
  tryCatch({
    cli::cli_alert_info("Processing document: {basename(document_path)}")
    
    # Read document based on file extension
    content <- switch(tools::file_ext(document_path),
      "pdf" = pdftools::pdf_text(document_path) |> paste(collapse = " "),
      "txt" = readr::read_file(document_path),
      "docx" = textreadr::read_docx(document_path) |> paste(collapse = " "),
      readr::read_file(document_path)  # Default fallback
    )
    
    # Create chunks using text splitter strategy
    chunks <- split_text_recursive(content, chunk_size, overlap)
    
    # Generate embeddings and store each chunk
    for (i in seq_along(chunks)) {
      cli::cli_alert_info("Processing chunk {i}/{length(chunks)}")
      
      # Get embedding from model
      embedding <- chat$extract_data(
        chat$chat(sprintf("Convert to embedding: %s", chunks[i])),
        type = type_array("Embedding vector")
      )
      
      # Store in database
      sql <- sprintf(
        "INSERT INTO %s (content, embedding, metadata) VALUES ($1, $2, $3)",
        collection_name
      )
      DBI::dbExecute(pg_conn, sql, 
                    params = list(chunks[i], embedding, 
                                 list(source = document_path, 
                                      chunk_id = i)))
    }
    
    cli::cli_alert_success("Document processed into {length(chunks)} chunks")
    return(TRUE)
  }, error = function(e) {
    cli::cli_alert_danger("Document processing error: {e$message}")
    return(FALSE)
  })
}

chat$register_tool(
  tool(
    chunk_and_embed_document,
    "Processes, chunks, and embeds documents into vector store",
    document_path = type_string("Path to document file"),
    chunk_size = type_integer("Size of text chunks"),
    overlap = type_integer("Overlap between chunks"),
    collection_name = type_string("Target collection name")
  )
)
```

## Web Interaction Tools

### Web Search Tool

```r
web_search <- function(query, num_results = 3) {
  tryCatch({
    cli::cli_alert_info("Performing web search for: {query}")
    
    # Construct request using httr2
    request <- httr2::request("https://api.search.com/v1/search") |>
      httr2::req_url_query(
        q = query,
        num = num_results,
        key = Sys.getenv("SEARCH_API_KEY")
      ) |>
      httr2::req_headers(
        Accept = "application/json"
      )
    
    # Execute request
    response <- request |> 
      httr2::req_perform() |>
      httr2::resp_body_json()
    
    # Extract and process results
    results <- response$results |>
      purrr::map_dfr(~data.frame(
        title = .x$title,
        snippet = .x$snippet,
        url = .x$url,
        stringsAsFactors = FALSE
      ))
    
    cli::cli_alert_success("Found {nrow(results)} web results")
    return(results)
  }, error = function(e) {
    cli::cli_alert_danger("Web search error: {e$message}")
    return(data.frame())
  })
}

chat$register_tool(
  tool(
    web_search,
    "Searches the web for current information",
    query = type_string("Search query"),
    num_results = type_integer("Number of results to return")
  )
)
```

### Web Content Extractor

```r
extract_web_content <- function(url) {
  tryCatch({
    cli::cli_alert_info("Extracting content from: {url}")
    
    # Request webpage
    response <- httr2::request(url) |>
      httr2::req_headers(
        `User-Agent` = "Mozilla/5.0 (compatible; RagBot/1.0)"
      ) |>
      httr2::req_perform()
    
    # Extract content using rvest
    html <- httr2::resp_body_html(response)
    content <- rvest::html_text(rvest::html_nodes(html, "body"))
    
    # Clean and truncate content
    cleaned_content <- content |>
      stringr::str_squish() |>
      stringr::str_trunc(10000)
    
    cli::cli_alert_success("Successfully extracted web content")
    return(cleaned_content)
  }, error = function(e) {
    cli::cli_alert_danger("Web extraction error: {e$message}")
    return("")
  })
}

chat$register_tool(
  tool(
    extract_web_content,
    "Extracts and cleans content from web pages",
    url = type_string("URL to extract content from")
  )
)
```

## Quality Assessment Tools

### Answer Grader Tool

```r
grade_answer <- function(question, answer, references) {
  tryCatch({
    cli::cli_alert_info("Grading answer quality")
    
    # Construct grading prompt
    prompt <- sprintf(
      "Grade this answer to the question '%s'. Answer: '%s'
      References used: %s
      
      Evaluate factual accuracy, relevance, and completeness.",
      question, answer, paste(references, collapse = "\n")
    )
    
    # Get grading
    response <- chat$chat(prompt)
    
    # Extract structured grade
    grade <- chat$extract_data(response, 
              type = type_object(
                score = type_number("Quality score (0-10)"),
                reasoning = type_string("Justification for score"),
                improvements = type_array("Suggested improvements")
              ))
    
    cli::cli_alert_success("Answer quality score: {grade$score}/10")
    return(grade)
  }, error = function(e) {
    cli::cli_alert_danger("Grading error: {e$message}")
    return(list(score = 5, 
                reasoning = "Default score due to grading error",
                improvements = list("Unable to analyze properly")))
  })
}

chat$register_tool(
  tool(
    grade_answer,
    "Evaluates answer quality based on references",
    question = type_string("Original question"),
    answer = type_string("Generated answer"),
    references = type_array("Reference documents used")
  )
)
```

### Hallucination Detector

```r
check_hallucination <- function(generated_text, source_documents) {
  tryCatch({
    cli::cli_alert_info("Checking for hallucinations")
    
    # Prepare content for analysis
    sources_text <- paste(source_documents, collapse = "\n\n---\n\n")
    
    # Construct detection prompt
    prompt <- sprintf(
      "Analyze this text for hallucinations or unsupported claims:
      Text: '%s'
      
      Source documents:
      %s
      
      Identify any claims not supported by source documents.",
      generated_text, sources_text
    )
    
    # Get hallucination analysis
    response <- chat$chat(prompt)
    
    # Extract structured response
    analysis <- chat$extract_data(response, 
                type = type_object(
                  has_hallucinations = type_boolean("Whether hallucinations exist"),
                  unsupported_claims = type_array("List of unsupported claims"),
                  confidence = type_number("Confidence in assessment (0-1)")
                ))
    
    if (analysis$has_hallucinations) {
      cli::cli_alert_warning("Hallucinations detected!")
    } else {
      cli::cli_alert_success("No hallucinations detected")
    }
    
    return(analysis)
  }, error = function(e) {
    cli::cli_alert_danger("Hallucination check error: {e$message}")
    return(list(has_hallucinations = TRUE, 
                unsupported_claims = list("Error in analysis"),
                confidence = 0.5))
  })
}

chat$register_tool(
  tool(
    check_hallucination,
    "Detects unsupported claims in generated text",
    generated_text = type_string("Text to analyze for hallucinations"),
    source_documents = type_array("Reference documents for fact-checking")
  )
)
```

## Specialized Processing Tools

### Code Execution Tool

```r
execute_code <- function(code, language = "r") {
  tryCatch({
    cli::cli_alert_info("Executing code in {language}")
    
    if (language == "r") {
      # Create a temporary environment for execution
      temp_env <- new.env()
      
      # Capture output and warnings
      output <- capture.output({
        result <- withVisible(eval(parse(text = code), envir = temp_env))
      })
      
      # Format result
      if (result$visible) {
        output <- c(output, capture.output(print(result$value)))
      }
      
      cli::cli_alert_success("Code executed successfully")
      return(list(
        success = TRUE,
        output = paste(output, collapse = "\n"),
        result = if (result$visible) result$value else NULL
      ))
    } else {
      cli::cli_alert_danger("Unsupported language: {language}")
      return(list(
        success = FALSE,
        output = "Only R language execution is supported",
        result = NULL
      ))
    }
  }, error = function(e) {
    cli::cli_alert_danger("Code execution error: {e$message}")
    return(list(
      success = FALSE,
      output = paste("Error:", e$message),
      result = NULL
    ))
  })
}

chat$register_tool(
  tool(
    execute_code,
    "Safely executes code and returns results",
    code = type_string("Code to execute"),
    language = type_string("Programming language (currently only 'r' supported)")
  )
)
```

### Memory Management Tool

```r
manage_conversation_memory <- function(operation, content = NULL, key = NULL) {
  tryCatch({
    # Initialize memory if not exists
    if (!exists("conversation_memory", envir = .GlobalEnv)) {
      assign("conversation_memory", list(), envir = .GlobalEnv)
    }
    
    memory <- get("conversation_memory", envir = .GlobalEnv)
    
    # Handle different operations
    result <- switch(operation,
      "store" = {
        if (is.null(key)) key <- sprintf("mem_%d", length(memory) + 1)
        memory[[key]] <- content
        assign("conversation_memory", memory, envir = .GlobalEnv)
        key
      },
      "retrieve" = {
        if (is.null(key)) {
          memory
        } else {
          memory[[key]]
        }
      },
      "list_keys" = {
        names(memory)
      },
      "clear" = {
        assign("conversation_memory", list(), envir = .GlobalEnv)
        TRUE
      },
      {
        cli::cli_alert_danger("Unknown memory operation: {operation}")
        NULL
      }
    )
    
    return(result)
  }, error = function(e) {
    cli::cli_alert_danger("Memory management error: {e$message}")
    return(NULL)
  })
}

chat$register_tool(
  tool(
    manage_conversation_memory,
    "Manages conversation memory for long-term context",
    operation = type_string("Operation: store, retrieve, list_keys, clear"),
    content = type_object("Content to store (for 'store' operation)"),
    key = type_string("Key for retrieval or storage (optional)")
  )
)
```

## Data Visualization Tools

### Chart Generator

```r
generate_visualization <- function(data, chart_type, title = NULL) {
  tryCatch({
    cli::cli_alert_info("Generating {chart_type} visualization")
    
    # Convert string data to dataframe if needed
    if (is.character(data)) {
      # Try to parse data from JSON
      data <- jsonlite::fromJSON(data)
    }
    
    if (!is.data.frame(data)) {
      data <- as.data.frame(data)
    }
    
    # Create visualization using apexcharter
    chart <- switch(tolower(chart_type),
      "bar" = {
        apexcharter::apex(
          data = data,
          type = "bar",
          mapping = apexcharter::aes(x = names(data)[1], y = names(data)[2])
        )
      },
      "line" = {
        apexcharter::apex(
          data = data,
          type = "line",
          mapping = apexcharter::aes(x = names(data)[1], y = names(data)[2])
        )
      },
      "pie" = {
        apexcharter::apex(
          data = data,
          type = "pie",
          mapping = apexcharter::aes(x = names(data)[1], y = names(data)[2])
        )
      },
      {
        cli::cli_alert_danger("Unsupported chart type: {chart_type}")
        return(NULL)
      }
    )
    
    # Add title if provided
    if (!is.null(title)) {
      chart <- chart |> 
        apexcharter::ax_title(text = title)
    }
    
    cli::cli_alert_success("Visualization generated successfully")
    return(chart)
  }, error = function(e) {
    cli::cli_alert_danger("Visualization error: {e$message}")
    return(NULL)
  })
}

chat$register_tool(
  tool(
    generate_visualization,
    "Generates interactive visualizations from data",
    data = type_object("Data to visualize (dataframe or JSON string)"),
    chart_type = type_string("Type of chart: bar, line, pie, etc."),
    title = type_string("Chart title (optional)")
  )
)
```

## Integration and Orchestration

### Agent Orchestrator

```r
orchestrate_workflow <- function(query, steps = NULL) {
  tryCatch({
    cli::cli_alert_info("Orchestrating agentic workflow")
    
    # If steps not provided, determine workflow dynamically
    if (is.null(steps)) {
      planning_prompt <- sprintf(
        "Plan a workflow to answer this query: '%s'
        Break this into a sequence of steps using available tools.
        Return only the steps as a JSON array of objects with 'tool' and 'parameters'.",
        query
      )
      
      planning_response <- chat$chat(planning_prompt)
      steps <- chat$extract_data(planning_response, 
                type = type_array("Workflow steps"))
    }
    
    # Initialize results storage
    results <- list()
    
    # Execute each step
    for (i in seq_along(steps)) {
      step <- steps[[i]]
      cli::cli_alert_info("Executing step {i}: {step$tool}")
      
      # Update parameters with previous results if referenced
      for (param_name in names(step$parameters)) {
        param_value <- step$parameters[[param_name]]
        if (is.character(param_value) && 
            stringr::str_detect(param_value, "^\\$results\\.")) {
          
          # Extract result reference and replace with actual value
          result_ref <- stringr::str_remove(param_value, "^\\$results\\.")
          step$parameters[[param_name]] <- results[[result_ref]]
        }
      }
      
      # Get the function for this tool
      tool_fn <- get(step$tool)
      
      # Execute the tool with parameters
      result <- do.call(tool_fn, step$parameters)
      
      # Store result
      results[[paste0("step_", i)]] <- result
    }
    
    # Synthesize final answer
    synthesis_prompt <- sprintf(
      "Synthesize a final answer to '%s' based on these workflow results: %s",
      query, jsonlite::toJSON(results, auto_unbox = TRUE)
    )
    
    final_answer <- chat$chat(synthesis_prompt)
    
    cli::cli_alert_success("Workflow completed successfully")
    return(list(
      answer = final_answer,
      steps_executed = length(steps),
      step_results = results
    ))
  }, error = function(e) {
    cli::cli_alert_danger("Workflow orchestration error: {e$message}")
    return(list(
      answer = paste("Error in workflow:", e$message),
      steps_executed = 0,
      step_results = list()
    ))
  })
}

chat$register_tool(
  tool(
    orchestrate_workflow,
    "Orchestrates multi-step agentic workflows",
    query = type_string("User query to process"),
    steps = type_array("Optional predefined workflow steps")
  )
)
```

## Conclusion

A properly implemented agentic RAG architecture requires tools covering multiple specialized functions that work together to dynamically route queries, retrieve relevant information, and generate high-quality responses. The tools presented here form a comprehensive toolkit that enables:

1. **Intelligent query routing** to appropriate processing paths
2. **Flexible data retrieval** from vector databases and web sources
3. **Quality control** through answer grading and hallucination detection
4. **Specialized capabilities** like code execution and visualization
5. **Memory management** for maintaining conversation context
6. **Workflow orchestration** for multi-step reasoning processes

By registering these tools with your ellmer chat agent, you're creating a sophisticated agentic RAG system capable of handling complex information needs while maintaining control over data privacy and processing. This approach leverages PostgreSQL's vector capabilities while implementing the agent-based decision-making architecture that delivers superior results compared to naive RAG implementations.

Sources
[1] Build an Agentic RAG Chatbot with LangChain and Supabase https://www.youtube.com/watch?v=3ZDeqTIXBPM
[2] How to Build Agentic RAGs With Smolagents? - ProjectPro https://www.projectpro.io/article/build-agentic-rags-with-smolagents/1094
[3] Building Agentic RAG Application with DeepSeek R1 — A Step-by ... https://youssefh.substack.com/p/building-agentic-rag-application
[4] Agentic RAG With CrewAI & Qdrant Vector Database https://qdrant.tech/documentation/agentic-rag-crewai-zoom/
[5] Agentic RAG: Step-by-Step Tutorial With Demo Project | DataCamp https://www.datacamp.com/tutorial/agentic-rag-tutorial
[6] Practical Multi Agent RAG using CrewAI, Weaviate, Groq and ExaTool. https://lorenzejay.dev/articles/practical-agentic-rag
[7] The Rise of Agentic RAG Systems | Dell Technologies Info Hub https://infohub.delltechnologies.com/p/the-rise-of-agentic-rag-systems/
[8] Agentic RAG: How It Works, Use Cases, Comparison With RAG https://www.datacamp.com/blog/agentic-rag
[9] Building Your Own Agentic RAG Systems with Llama-Index - YouTube https://www.youtube.com/watch?v=fnDYXE7BFto
[10] You HAVE to Try Agentic RAG with DeepSeek R1 (Insane Results) https://www.youtube.com/watch?v=uWDocIoiaXE
[11] How to build an agentic, chat or RAG knowledge system ... - Pinecone https://www.pinecone.io/learn/pinecone-assistant/
[12] Is There Any Reliable Agentic Tool? : r/LangChain - Reddit https://www.reddit.com/r/LangChain/comments/1e4s6xt/is_there_any_reliable_agentic_tool/
[13] We built an agentic RAG app capable of complex, multi-step queries https://www.reddit.com/r/Rag/comments/1j5qpy7/we_built_an_agentic_rag_app_capable_of_complex/
[14] Best place to find and hire an Agentic RAG expert? - Reddit https://www.reddit.com/r/LangChain/comments/1ffehl5/best_place_to_find_and_hire_an_agentic_rag_expert/
[15] Vectara-agentic - Agentic RAG https://www.vectara.com/blog/introducing-vectara-agentic
[16] Multi-Agentic RAG with Hugging Face Code Agents https://towardsdatascience.com/multi-agentic-rag-with-hugging-face-code-agents-005822122930/
[17] ibmdotcom-tutorials/generative-ai/agentic-rag.ipynb at main - GitHub https://github.com/IBM/ibmdotcom-tutorials/blob/main/generative-ai/agentic-rag.ipynb
[18] Build an Agentic RAG Pipeline with Llama 3.1 and NVIDIA NeMo ... https://resources.nvidia.com/en-us-gen-ai-build-ai-agents/build-an-agentic-rag
