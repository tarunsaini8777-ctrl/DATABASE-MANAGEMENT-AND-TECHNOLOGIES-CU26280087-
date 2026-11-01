-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 34:
-- Change column content in document_store to doc_body while maintaining its LONGTEXT type.
-- Requires: Q33

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE document_store
    CHANGE COLUMN content doc_body LONGTEXT;
-- MySQL 8.0+ alternative (type unchanged automatically):
-- ALTER TABLE document_store RENAME COLUMN content TO doc_body;

-- ---------- Verify ----------
DESCRIBE document_store;
