-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 7:
-- Write an ALTER command to add a new column email (VARCHAR 100) to the existing employees
-- table.
-- Requires: Q2

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE employees
    ADD COLUMN email VARCHAR(100);

-- ---------- Verify ----------
DESCRIBE employees;
