-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 23:
-- Modify the employees table to add two new columns in a single DDL statement: hire_date
-- (DATE) and is_active (BOOLEAN).
-- Requires: Q2

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE employees
    ADD COLUMN hire_date DATE,
    ADD COLUMN is_active BOOLEAN;

-- ---------- Verify ----------
DESCRIBE employees;
