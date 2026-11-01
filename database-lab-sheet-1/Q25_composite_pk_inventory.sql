-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 25:
-- Given table inventory with columns warehouse_id (INT) and sku (VARCHAR 20), write an ALTER
-- statement to add a composite primary key to both columns.
-- Requires: 00_setup.sql (inventory)

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE inventory
    ADD PRIMARY KEY (warehouse_id, sku);

-- ---------- Verify ----------
DESCRIBE inventory;
SHOW INDEX FROM inventory;
