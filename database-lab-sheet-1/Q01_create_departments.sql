-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 1:
-- Write a DDL statement to create an empty table named departments with an integer dept_id
-- as the primary key and a dept_name of up to 50 characters.

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE departments (
    dept_id   INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- ---------- Verify ----------
DESCRIBE departments;
