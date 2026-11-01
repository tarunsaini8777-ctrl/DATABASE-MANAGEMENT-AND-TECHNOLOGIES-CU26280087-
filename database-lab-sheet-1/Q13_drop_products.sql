-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 13:
-- Write the DDL statement to drop the entire products table permanently from the database.
-- Requires: Q5

USE dbtech_lab1;

-- ---------- Solution ----------
DROP TABLE products;

-- ---------- Verify ----------
SHOW TABLES;   -- products is no longer listed
