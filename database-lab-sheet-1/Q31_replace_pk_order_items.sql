-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 31:
-- Drop the existing primary key of order_items, add a new column order_item_id (INT) at the
-- first position, and set it as the new primary key in a single ALTER command chain.
-- Requires: Q21

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE order_items
    DROP PRIMARY KEY,
    ADD COLUMN order_item_id INT NOT NULL AUTO_INCREMENT FIRST,
    ADD PRIMARY KEY (order_item_id);
-- AUTO_INCREMENT fills unique values for rows that already exist
-- (a plain INT NOT NULL would give every old row the value 0 and the primary key would fail).

-- ---------- Verify ----------
DESCRIBE order_items;
SHOW INDEX FROM order_items;
