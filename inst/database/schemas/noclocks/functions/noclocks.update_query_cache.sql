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
