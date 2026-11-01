-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 48:
-- Modify file_metadata schema in one ALTER statement: Change file_id from INT to BIGINT,
-- alter file_path to TEXT, and drop column checksum.
-- Requires: Q47

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE file_metadata
    MODIFY COLUMN file_id BIGINT NOT NULL,     -- stays the primary key
    MODIFY COLUMN file_path TEXT,
    DROP COLUMN checksum;

-- ---------- Verify ----------
DESCRIBE file_metadata;
