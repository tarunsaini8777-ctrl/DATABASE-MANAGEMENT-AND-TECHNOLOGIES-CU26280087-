-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 10:
-- Write a command to empty all records from audit_logs without dropping the table structure.
-- Requires: Q4

USE dbtech_lab1;

-- ---------- Solution ----------
TRUNCATE TABLE audit_logs;

-- ---------- Verify ----------
SELECT COUNT(*) AS rows_left FROM audit_logs;   -- 0
DESCRIBE audit_logs;                            -- structure is still there
