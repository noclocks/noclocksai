
DROP TABLE IF EXISTS noclocks.documents CASCADE;

CREATE TABLE IF NOT EXISTS noclocks.documents (
  document_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  document_name TEXT NOT NULL,
  document_title TEXT,
  document_content TEXT,
  document_metadata JSONB,
  document_embedding VECTOR(1536), -- OpenAI CLIP embedding
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS noclocks.documents_embedding_idx
ON noclocks.documents USING IVFFLAT (document_embedding vector_cosine_ops) WITH (dim = 1536);

COMMENT ON TABLE noclocks.documents IS 'Documents table for storing documents';
COMMENT ON COLUMN noclocks.documents.document_id IS 'Unique identifier for the document';
COMMENT ON COLUMN noclocks.documents.document_name IS 'Name of the document';
COMMENT ON COLUMN noclocks.documents.document_title IS 'Title of the document';
COMMENT ON COLUMN noclocks.documents.document_content IS 'Content of the document';
COMMENT ON COLUMN noclocks.documents.document_metadata IS 'Metadata of the document';
COMMENT ON COLUMN noclocks.documents.document_embedding IS 'OpenAI CLIP embedding of the document';
COMMENT ON COLUMN noclocks.documents.created_at IS 'Timestamp when the document was created';
COMMENT ON COLUMN noclocks.documents.updated_at IS 'Timestamp when the document was last updated';
