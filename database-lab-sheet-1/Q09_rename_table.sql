-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 9:
-- Write the SQL DDL command to rename the table departments to dept_units.
-- Requires: Q1

USE dbtech_lab1;

-- ---------- Solution ----------
RENAME TABLE departments TO dept_units;
-- Equivalent: ALTER TABLE departments RENAME TO dept_units;

-- ---------- Verify ----------
SHOW TABLES;
