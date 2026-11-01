-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 30:
-- Create a table device_logs with log_id (BIGINT Primary Key), ip_address (VARCHAR 45), and
-- payload (LONGBLOB).

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE device_logs (
    log_id     BIGINT PRIMARY KEY,
    ip_address VARCHAR(45),
    payload    LONGBLOB
);

-- ---------- Verify ----------
DESCRIBE device_logs;
