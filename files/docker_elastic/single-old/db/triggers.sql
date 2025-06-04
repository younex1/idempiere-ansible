-- Create sync queue table
CREATE TABLE IF NOT EXISTS es_sync_queue (
                                             id SERIAL PRIMARY KEY,
                                             table_name TEXT NOT NULL,
                                             record_id INTEGER NOT NULL,
                                             operation TEXT CHECK (operation IN ('insert','update','delete')),
    processed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT now()
    );

-- Trigger for m_product
CREATE OR REPLACE FUNCTION log_product_changes() RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'DELETE' THEN
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('m_product', OLD.m_product_id, 'delete');
ELSE
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('m_product', NEW.m_product_id, lower(TG_OP));
END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;
DROP TRIGGER IF EXISTS trg_product_changes ON m_product;
CREATE TRIGGER trg_product_changes
    AFTER INSERT OR UPDATE OR DELETE ON m_product
    FOR EACH ROW EXECUTE FUNCTION log_product_changes();

-- Trigger for c_bpartner
CREATE OR REPLACE FUNCTION log_bpartner_changes() RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'DELETE' THEN
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('c_bpartner', OLD.c_bpartner_id, 'delete');
ELSE
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('c_bpartner', NEW.c_bpartner_id, lower(TG_OP));
END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;
DROP TRIGGER IF EXISTS trg_bpartner_changes ON c_bpartner;
CREATE TRIGGER trg_bpartner_changes
    AFTER INSERT OR UPDATE OR DELETE ON c_bpartner
    FOR EACH ROW EXECUTE FUNCTION log_bpartner_changes();

-- Trigger for m_inout
CREATE OR REPLACE FUNCTION log_inout_changes() RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'DELETE' THEN
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('m_inout', OLD.m_inout_id, 'delete');
ELSE
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('m_inout', NEW.m_inout_id, lower(TG_OP));
END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;
DROP TRIGGER IF EXISTS trg_inout_changes ON m_inout;
CREATE TRIGGER trg_inout_changes
    AFTER INSERT OR UPDATE OR DELETE ON m_inout
    FOR EACH ROW EXECUTE FUNCTION log_inout_changes();

-- Trigger for c_order
CREATE OR REPLACE FUNCTION log_order_changes() RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'DELETE' THEN
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('c_order', OLD.c_order_id, 'delete');
ELSE
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('c_order', NEW.c_order_id, lower(TG_OP));
END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;
DROP TRIGGER IF EXISTS trg_order_changes ON c_order;
CREATE TRIGGER trg_order_changes
    AFTER INSERT OR UPDATE OR DELETE ON c_order
    FOR EACH ROW EXECUTE FUNCTION log_order_changes();

-- Trigger for r_request
CREATE OR REPLACE FUNCTION log_request_changes() RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'DELETE' THEN
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('r_request', OLD.r_request_id, 'delete');
ELSE
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('r_request', NEW.r_request_id, lower(TG_OP));
END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;
DROP TRIGGER IF EXISTS trg_request_changes ON r_request;
CREATE TRIGGER trg_request_changes
    AFTER INSERT OR UPDATE OR DELETE ON r_request
    FOR EACH ROW EXECUTE FUNCTION log_request_changes();

-- Trigger for c_invoice
CREATE OR REPLACE FUNCTION log_invoice_changes() RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'DELETE' THEN
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('c_invoice', OLD.c_invoice_id, 'delete');
ELSE
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('c_invoice', NEW.c_invoice_id, lower(TG_OP));
END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;
DROP TRIGGER IF EXISTS trg_invoice_changes ON c_invoice;
CREATE TRIGGER trg_invoice_changes
    AFTER INSERT OR UPDATE OR DELETE ON c_invoice
    FOR EACH ROW EXECUTE FUNCTION log_invoice_changes();

-- Trigger for ad_user
CREATE OR REPLACE FUNCTION log_user_changes() RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'DELETE' THEN
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('ad_user', OLD.ad_user_id, 'delete');
ELSE
        INSERT INTO es_sync_queue(table_name, record_id, operation)
        VALUES ('ad_user', NEW.ad_user_id, lower(TG_OP));
END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;
DROP TRIGGER IF EXISTS trg_user_changes ON ad_user;
CREATE TRIGGER trg_user_changes
    AFTER INSERT OR UPDATE OR DELETE ON ad_user
    FOR EACH ROW EXECUTE FUNCTION log_user_changes();
