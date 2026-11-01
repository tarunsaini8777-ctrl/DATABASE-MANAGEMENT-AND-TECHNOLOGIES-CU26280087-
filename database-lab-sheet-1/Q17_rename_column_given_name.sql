-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 17:
-- Rename column first_name to given_name in the employees table using DDL.
-- Requires: Q2

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE employees
    RENAME COLUMN first_name TO given_name;      -- MySQL 8.0+
-- Older MySQL / MariaDB:
-- ALTER TABLE employees CHANGE COLUMN first_name given_name VARCHAR(30);

-- ---------- Verify ----------
DESCRIBE employees;
