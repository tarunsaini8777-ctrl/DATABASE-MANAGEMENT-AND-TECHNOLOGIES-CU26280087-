-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 35:
-- Write a DDL command to create an empty table structure employees_archive identical in
-- layout and constraints to the employees table.
-- Requires: Q2

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE employees_archive LIKE employees;
-- LIKE copies the columns, data types, primary key and indexes (but no rows).

-- ---------- Verify ----------
DESCRIBE employees_archive;
SHOW CREATE TABLE employees_archive;
