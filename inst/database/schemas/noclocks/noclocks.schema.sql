CREATE EXTENSION IF NOT EXISTS vector;

CREATE SCHEMA IF NOT EXISTS noclocks;

DROP TABLE IF EXISTS noclocks.documents CASCADE;

CREATE TABLE noclocks.documents (
  id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title TEXT NOT NULL,
  content TEXT NOT NULL,
  metadata JSONB DEFAULT '{}'::JSONB,
  embedding VECTOR(1536),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Vector Index for Similarity Search
CREATE INDEX IF NOT EXISTS noclocks.documents_embedding_idx
ON noclocks.documents USING IVFFLAT (embedding vector_cosine_ops) WITH (dim = 1536);

-- GIN Index for JSONB metadata
CREATE INDEX IF NOT EXISTS noclocks.documents_metadata_idx
ON noclocks.documents USING GIN (metadata);

-- Comments
COMMENT ON TABLE noclocks.documents IS 'Documents table for storing documents';
COMMENT ON COLUMN noclocks.documents.id IS 'Unique identifier for the document';
COMMENT ON COLUMN noclocks.documents.title IS 'Title of the document';
COMMENT ON COLUMN noclocks.documents.content IS 'Content of the document';
COMMENT ON COLUMN noclocks.documents.metadata IS 'Metadata of the document';
COMMENT ON COLUMN noclocks.documents.embedding IS 'OpenAI CLIP embedding of the document';
COMMENT ON COLUMN noclocks.documents.created_at IS 'Timestamp when the document was created';
COMMENT ON COLUMN noclocks.documents.updated_at IS 'Timestamp when the document was last updated';

DROP TABLE IF EXISTS noclocks.query_cache CASCADE;

CREATE TABLE noclocks.query_cache (
  id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  qry_text TEXT NOT NULL,
  qry_embedding VECTOR(1536),
  document_ids INTEGER[] NOT NULL,
  frquency INTEGER NOT NULL DEFAULT 1,
  last_accessed TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS noclocks.query_cache_embedding_idx
ON noclocks.query_cache USING IVFFLAT (qry_embedding vector_cosine_ops) WITH (dim = 1536);

CREATE INDEX IF NOT EXISTS noclocks.query_cache_qry_text_idx
ON noclocks.query_cache (qry_text);

COMMENT ON TABLE noclocks.query_cache IS 'Query cache table for caching frequency queries';
COMMENT ON COLUMN noclocks.query_cache.id IS 'Unique identifier for the query cache';
COMMENT ON COLUMN noclocks.query_cache.qry_text IS 'Text of the query';
COMMENT ON COLUMN noclocks.query_cache.qry_embedding IS 'OpenAI CLIP embedding of the query';
COMMENT ON COLUMN noclocks.query_cache.document_ids IS 'Array of document IDs that match the query';
COMMENT ON COLUMN noclocks.query_cache.frquency IS 'Frequency of the query';
COMMENT ON COLUMN noclocks.query_cache.last_accessed IS 'Timestamp when the query was last accessed';

/* FUNCTIONS */

-- function for updating 'updated_at' timestamps
CREATE OR REPLACE FUNCTION noclocks.update_timestamp()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = CURRENT_TIMESTAMP;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- function for finding similar documents
CREATE OR REPLACE FUNCTION noclocks.find_similar_documents(
    qry_embedding VECTOR,
    similarity_threshold FLOAT DEFAULT 0.7,
    max_results INT DEFAULT 10
)
RETURNS TABLE (
    id INTEGER,
    title TEXT,
    content TEXT,
    metadata JSONB,
    similarity FLOAT
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        d.id,
        d.title,
        d.content,
        d.metadata,
        1 - (d.embedding <=> qry_embedding) AS similarity
    FROM
        noclocks.documents d
    WHERE
        1 - (d.embedding <=> qry_embedding) > similarity_threshold
    ORDER BY
        d.embedding <=> qry_embedding
    LIMIT max_results;
END;
$$ LANGUAGE plpgsql;

-- function for updating query cache
CREATE OR REPLACE FUNCTION noclocks.update_query_cache(
    p_query_text TEXT,
    p_query_embedding VECTOR,
    p_document_ids INTEGER[]
)
RETURNS VOID AS $$
BEGIN
    -- Try to update existing cache entry
    UPDATE noclocks.query_cache
    SET
        frequency = frequency + 1,
        last_accessed = CURRENT_TIMESTAMP,
        document_ids = p_document_ids
    WHERE qry_text = p_query_text;

    -- If no rows were updated, insert a new cache entry
    IF NOT FOUND THEN
        INSERT INTO noclocks.query_cache (qry_text, qry_embedding, document_ids)
        VALUES (p_query_text, p_query_embedding, p_document_ids);
    END IF;
END;
$$ LANGUAGE plpgsql;


/* TRIGGERS */

-- trigger for updating 'updated_at' timestamp in documents table
CREATE TRIGGER noclocks.update_documents_timestamp
BEFORE UPDATE ON noclocks.documents
FOR EACH ROW EXECUTE FUNCTION noclocks.update_timestamp();

