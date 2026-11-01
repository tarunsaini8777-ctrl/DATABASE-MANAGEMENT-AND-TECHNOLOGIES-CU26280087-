-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 18:
-- Write an ALTER command to drop the primary key constraint from the system_settings table.
-- Requires: Q6

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE system_settings
    DROP PRIMARY KEY;

-- ---------- Verify ----------
DESCRIBE system_settings;     -- Key column is now empty for setting_id
