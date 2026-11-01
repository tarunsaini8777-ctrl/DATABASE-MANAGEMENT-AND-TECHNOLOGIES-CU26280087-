-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 24:
-- In the table employees, drop column email and change salary data type to DECIMAL(12,2) in
-- a single ALTER statement.
-- Requires: Q2, Q7

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE employees
    DROP COLUMN email,
    MODIFY COLUMN salary DECIMAL(12,2);

-- ---------- Verify ----------
DESCRIBE employees;
