
/* SCHEMAS */
CREATE SCHEAMA IF NOT EXISTS public;
CREATE SCHEMA IF NOT EXISTS noclocks;
CREATE SCHEMA IF NOT EXISTS ai;


/* EXTENSIONS */

SET neon.allow_unstable_extensions='true';

CREATE EXTENSION IF NOT EXISTS pg_stat_statements CASCADE;
CREATE EXTENSION IF NOT EXISTS pgcrypto CASCADE;
CREATE EXTENSION IF NOT EXISTS ltree CASCADE;
CREATE EXTENSION IF NOT EXISTS hstore CASCADE;
CREATE EXTENSION IF NOT EXISTS pg_trgm CASCADE;

CREATE EXTENSION IF NOT EXISTS vector CASCADE;
CREATE EXTENSION IF NOT EXISTS pg_tiktoken CASCADE;
CREATE EXTENSION IF NOT EXISTS rag CASCADE;
CREATE EXTENSION IF NOT EXISTS rag_bge_small_en_v15 CASCADE;
CREATE EXTENSION IF NOT EXISTS rag_jina_reranker_v1_tiny_en CASCADE;

/* TABLES */

-- documents
DROP TABLE IF EXISTS noclocks.documents CASCADE;

CREATE TABLE documents (
  id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title TEXT NOT NULL,
  content TEXT NOT NULL,
  metadata JSONB DEFAULT '{}'::JSONB,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- embeddings
DROP TABLE IF EXISTS embeddings CASCADE;

CREATE TABLE embeddings (
  id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  document_id INTEGER NOT NULL REFERENCES documents(id),
  content_type TEXT,
  source TEXT,
  content TEXT,
  metadata JSONB DEFAULT '{}'::JSONB,
  chunk TEXT,
  tokens INTEGER,
  embedding VECTOR(1536) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX ON embeddings USING hnsw (embedding vector_cosine_ops) WITH (dim = 1536);
CREATE INDEX ON embeddings USING ivfflat (embedding vector_l2_ops) WITH (lists = 100);

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
