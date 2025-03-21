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
