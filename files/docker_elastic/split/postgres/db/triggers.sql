CREATE TABLE IF NOT EXISTS es_sync_queue (
    id SERIAL PRIMARY KEY,
    table_name TEXT NOT NULL,
    record_id INTEGER NOT NULL,
    operation TEXT CHECK (operation IN ('insert','update','delete')),
    processed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT now()
);

-- Trigger functions and triggers for all 7 tables...
