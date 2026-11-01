-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 4:
-- Create a table audit_logs storing log_id (Primary Key), action (TEXT), and created_at
-- using TIMESTAMP.

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE audit_logs (
    log_id     INT PRIMARY KEY,
    action     TEXT,
    created_at TIMESTAMP
);

-- ---------- Verify ----------
DESCRIBE audit_logs;
