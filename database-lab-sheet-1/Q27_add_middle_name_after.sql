-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 27:
-- Add a column middle_name (VARCHAR 30) to employees specifically positioned right after
-- given_name.
-- Requires: Q2, Q17

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE employees
    ADD COLUMN middle_name VARCHAR(30) AFTER given_name;

-- ---------- Verify ----------
DESCRIBE employees;
