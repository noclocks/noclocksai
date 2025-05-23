-- function for updating 'updated_at' timestamps

CREATE OR REPLACE FUNCTION noclocks.update_timestamp()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = CURRENT_TIMESTAMP;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;
