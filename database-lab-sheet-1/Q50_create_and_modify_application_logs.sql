-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 50:
-- Write the SQL DDL statements to: (1) Create table application_logs with log_id (BIGINT
-- Primary Key), level (ENUM('DEBUG', 'INFO', 'WARN', 'ERROR')), message (TEXT),
-- execution_time (DOUBLE), and created_at (DATETIME), and (2) Modify the level column to
-- VARCHAR(10).

USE dbtech_lab1;

-- ---------- Solution ----------
-- (1) Create the table
CREATE TABLE application_logs (
    log_id         BIGINT PRIMARY KEY,
    level          ENUM('DEBUG', 'INFO', 'WARN', 'ERROR'),
    message        TEXT,
    execution_time DOUBLE,
    created_at     DATETIME
);

-- (2) Change the level column from ENUM to VARCHAR(10)
ALTER TABLE application_logs
    MODIFY COLUMN level VARCHAR(10);

-- ---------- Verify ----------
DESCRIBE application_logs;
