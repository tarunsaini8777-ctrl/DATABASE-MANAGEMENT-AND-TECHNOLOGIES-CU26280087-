-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 6:
-- Create a table system_settings with setting_id (SMALLINT Primary Key), setting_key
-- (VARCHAR 50), and setting_value (VARCHAR 100).

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE system_settings (
    setting_id    SMALLINT PRIMARY KEY,
    setting_key   VARCHAR(50),
    setting_value VARCHAR(100)
);

-- ---------- Verify ----------
DESCRIBE system_settings;
