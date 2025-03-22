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
        1 - (d.embedding <=> query_embedding) AS similarity
    FROM
        noclocks.documents d
    WHERE
        1 - (d.embedding <=> query_embedding) > similarity_threshold
    ORDER BY
        d.embedding <=> query_embedding
    LIMIT max_results;
END;
$$ LANGUAGE plpgsql;
