-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 14:
-- Write a command to change the data type of email in employees from VARCHAR(100) to
-- VARCHAR(150).
-- Requires: Q2, Q7

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE employees
    MODIFY COLUMN email VARCHAR(150);

-- ---------- Verify ----------
DESCRIBE employees;
