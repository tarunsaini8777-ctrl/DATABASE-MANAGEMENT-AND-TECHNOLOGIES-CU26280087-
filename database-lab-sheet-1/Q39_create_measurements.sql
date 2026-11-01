-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 39:
-- Create a table measurements with sample_id (INT Primary Key) and value (DOUBLE).

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE measurements (
    sample_id INT PRIMARY KEY,
    `value`   DOUBLE          -- backticks are optional; they protect the keyword-like name
);

-- ---------- Verify ----------
DESCRIBE measurements;
