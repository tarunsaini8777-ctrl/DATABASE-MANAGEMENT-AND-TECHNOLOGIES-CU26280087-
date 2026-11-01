-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 8:
-- Write an ALTER statement to remove the is_available column from the products table.
-- Requires: Q5

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE products
    DROP COLUMN is_available;

-- ---------- Verify ----------
DESCRIBE products;
