-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 3:
-- Create a table projects with project_id (Primary Key), project_name (VARCHAR 100), and
-- start_date using the standard DATE data type.

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE projects (
    project_id   INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date   DATE
);

-- ---------- Verify ----------
DESCRIBE projects;
