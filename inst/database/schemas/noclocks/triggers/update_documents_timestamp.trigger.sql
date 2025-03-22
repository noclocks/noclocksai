CREATE TRIGGER noclocks.update_documents_timestamp
BEFORE UPDATE ON noclocks.documents
FOR EACH ROW EXECUTE FUNCTION noclocks.update_timestamp();
