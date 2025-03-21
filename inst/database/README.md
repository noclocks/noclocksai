## Database Architecture Overview

### Core Entities

1. **Users**
  - Central to authentication and ownership of resources
  - Will relate to almost every other entity in the system
2. **Documents**
  - Storage for text, code, and other content
  - Need vector embeddings for semantic search
3. **Repositories**
  - Collections of related documents/code
  - Metadata about source and purpose
4. **Chat Sessions**
  - Conversation containers
  - Context and metadata
5. **Messages**
  - Individual exchanges within chat sessions
  - Need to track roles, content, and timestamps
6. **Memory/Knowledge**
  - Long-term storage of important information
  - Vector embeddings for retrieval
7. **Vector Stores**
  - Optimized tables for embedding storage and similarity search

### Schema Design

Users:

```sql
-- Users table
CREATE TABLE users (
    user_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email VARCHAR(255) UNIQUE NOT NULL,
    username VARCHAR(100) UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    last_login_at TIMESTAMPTZ,
    is_active BOOLEAN NOT NULL DEFAULT TRUE
);

-- Documents table
CREATE TABLE documents (
    document_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    owner_id UUID NOT NULL REFERENCES users(user_id),
    title VARCHAR(255) NOT NULL,
    content TEXT,
    content_type VARCHAR(50) NOT NULL, -- e.g., 'text', 'code', 'markdown'
    source_url TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    metadata JSONB,
    is_archived BOOLEAN NOT NULL DEFAULT FALSE
);

-- Document embeddings table with pgvector support
CREATE TABLE document_embeddings (
    embedding_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    document_id UUID NOT NULL REFERENCES documents(document_id) ON DELETE CASCADE,
    embedding VECTOR(1536), -- Adjust dimension based on your embedding model
    chunk_index INTEGER NOT NULL DEFAULT 0,
    chunk_text TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Repositories table
CREATE TABLE repositories (
    repo_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    owner_id UUID NOT NULL REFERENCES users(user_id),
    name VARCHAR(255) NOT NULL,
    description TEXT,
    repo_url TEXT,
    source_type VARCHAR(50), -- e.g., 'github', 'local', 'repomix'
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    metadata JSONB,
    is_archived BOOLEAN NOT NULL DEFAULT FALSE,
    UNIQUE(owner_id, name)
);

-- Repository documents junction table
CREATE TABLE repo_documents (
    repo_id UUID NOT NULL REFERENCES repositories(repo_id) ON DELETE CASCADE,
    document_id UUID NOT NULL REFERENCES documents(document_id) ON DELETE CASCADE,
    file_path VARCHAR(1024), -- Path within repository
    added_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (repo_id, document_id)
);

-- Chat sessions table
CREATE TABLE chat_sessions (
    session_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    owner_id UUID NOT NULL REFERENCES users(user_id),
    title VARCHAR(255),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    is_archived BOOLEAN NOT NULL DEFAULT FALSE,
    metadata JSONB -- For session-specific settings, model parameters, etc.
);

-- Messages table
CREATE TABLE messages (
    message_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    session_id UUID NOT NULL REFERENCES chat_sessions(session_id) ON DELETE CASCADE,
    role VARCHAR(50) NOT NULL, -- 'user', 'assistant', 'system', etc.
    content TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    parent_message_id UUID REFERENCES messages(message_id), -- For threaded conversations
    metadata JSONB -- For tokens, model info, etc.
);

-- Message embeddings table
CREATE TABLE message_embeddings (
    embedding_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    message_id UUID NOT NULL REFERENCES messages(message_id) ON DELETE CASCADE,
    embedding VECTOR(1536), -- Adjust dimension based on your embedding model
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Memory/Knowledge Base items
CREATE TABLE memory_items (
    memory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    owner_id UUID NOT NULL REFERENCES users(user_id),
    content TEXT NOT NULL,
    source_type VARCHAR(50) NOT NULL, -- e.g., 'chat', 'document', 'manual'
    source_id UUID, -- Could be message_id, document_id, etc.
    importance FLOAT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    last_accessed_at TIMESTAMPTZ,
    access_count INTEGER NOT NULL DEFAULT 0,
    metadata JSONB
);

-- Memory embeddings table
CREATE TABLE memory_embeddings (
    embedding_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    memory_id UUID NOT NULL REFERENCES memory_items(memory_id) ON DELETE CASCADE,
    embedding VECTOR(1536), -- Adjust dimension based on your embedding model
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Tags table for tagging various entities
CREATE TABLE tags (
    tag_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) NOT NULL,
    owner_id UUID REFERENCES users(user_id),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE(owner_id, name)
);

-- Entity tags junction table
CREATE TABLE entity_tags (
    tag_id UUID NOT NULL REFERENCES tags(tag_id) ON DELETE CASCADE,
    entity_type VARCHAR(50) NOT NULL, -- 'document', 'repository', 'chat_session', 'memory'
    entity_id UUID NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (tag_id, entity_type, entity_id)
);

-- API keys for integrations and programmatic access
CREATE TABLE api_keys (
    key_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    key_hash VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    expires_at TIMESTAMPTZ,
    last_used_at TIMESTAMPTZ,
    is_active BOOLEAN NOT NULL DEFAULT TRUE
);

-- Audit log for tracking important system events
CREATE TABLE audit_logs (
    log_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(user_id),
    action VARCHAR(255) NOT NULL,
    entity_type VARCHAR(50),
    entity_id UUID,
    timestamp TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    ip_address VARCHAR(45),
    details JSONB
);
```

### Extensions & Indexes

```sql
-- Enable pgvector extension for vector similarity search
CREATE EXTENSION IF NOT EXISTS vector;

-- Create indexes for performance
CREATE INDEX idx_documents_owner ON documents(owner_id);
CREATE INDEX idx_repositories_owner ON repositories(owner_id);
CREATE INDEX idx_chat_sessions_owner ON chat_sessions(owner_id);
CREATE INDEX idx_messages_session ON messages(session_id);
CREATE INDEX idx_memory_items_owner ON memory_items(owner_id);

-- Vector similarity search indexes
CREATE INDEX idx_document_embeddings_embedding ON document_embeddings USING ivfflat (embedding vector_cosine_ops) WITH (lists = 100);
CREATE INDEX idx_message_embeddings_embedding ON message_embeddings USING ivfflat (embedding vector_cosine_ops) WITH (lists = 100);
CREATE INDEX idx_memory_embeddings_embedding ON memory_embeddings USING ivfflat (embedding vector_cosine_ops) WITH (lists = 100);

-- GIN indexes for JSONB metadata and full-text search
CREATE INDEX idx_documents_metadata ON documents USING GIN (metadata);
CREATE INDEX idx_chat_sessions_metadata ON chat_sessions USING GIN (metadata);
CREATE INDEX idx_messages_metadata ON messages USING GIN (metadata);
CREATE INDEX idx_memory_items_metadata ON memory_items USING GIN (metadata);
```

### Implementation Notes

**Vector Storage Considerations:**

- Using `pgvector` extension for embedding storage and similarity search
- Consider chunking larger documents for better semantic search
- Vector dimensions should match your embedding model (1536 for OpenAI's text-embedding-ada-002, for example)

**Content Storage Strategy:**

- For documents larger than PostgreSQL's practical limits, consider using blob storage with references
- Implement efficient chunking strategies for large documents

**Performance Optimizations:**

- Implement materialized views for common complex queries
- Consider partitioning large tables (messages, document_embeddings) by date
- Use connection pooling in your app to manage database connections

**Scaling Considerations:**

- The ivfflat vector indexes will need occasional reindexing as data grows
- Monitor query performance and adjust index parameters accordingly
- Consider read replicas for scaling read operations

**Security Considerations:**

- Implement row-level security policies for multi-tenant isolation
- Store sensitive configurations in separate secured tables
- Use connection encryption and least-privilege database roles
