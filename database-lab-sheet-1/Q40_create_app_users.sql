-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 40:
-- Create a table app_users with user_id (INT Primary Key) and status_code (TINYINT).

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE app_users (
    user_id     INT PRIMARY KEY,
    status_code TINYINT
);

-- ---------- Verify ----------
DESCRIBE app_users;
