-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 5:
-- Write a DDL query to create a table products with product_id (Primary Key), product_name
-- (VARCHAR 50), and is_available using BOOLEAN.

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE products (
    product_id   INT PRIMARY KEY,
    product_name VARCHAR(50),
    is_available BOOLEAN          -- BOOLEAN is stored as TINYINT(1) in MySQL
);

-- ---------- Verify ----------
DESCRIBE products;
