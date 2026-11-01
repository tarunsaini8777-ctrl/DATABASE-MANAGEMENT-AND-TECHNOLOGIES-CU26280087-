-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 32:
-- Convert start_date column in table projects to project_year with data type YEAR using a
-- single DDL statement.
-- Requires: Q3

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE projects
    CHANGE COLUMN start_date project_year YEAR;

-- ---------- Verify ----------
DESCRIBE projects;
