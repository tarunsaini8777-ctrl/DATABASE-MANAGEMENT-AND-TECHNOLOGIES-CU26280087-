-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 36:
-- Write a DDL query to drop table employees_archive safely only if it exists in the schema.
-- Requires: Q35

USE dbtech_lab1;

-- ---------- Solution ----------
DROP TABLE IF EXISTS employees_archive;
-- No error is raised if the table does not exist (only a warning).

-- ---------- Verify ----------
SHOW TABLES;
SHOW WARNINGS;
