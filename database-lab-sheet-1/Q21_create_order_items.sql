-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 21:
-- Create a table order_items representing a line-item in an order. Use a composite primary
-- key consisting of order_id (INT) and item_id (INT), along with quantity (INT) and
-- unit_price (DECIMAL 8,2).

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE order_items (
    order_id   INT,
    item_id    INT,
    quantity   INT,
    unit_price DECIMAL(8,2),
    PRIMARY KEY (order_id, item_id)
);

-- ---------- Verify ----------
DESCRIBE order_items;
