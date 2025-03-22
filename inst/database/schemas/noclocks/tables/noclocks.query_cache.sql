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
