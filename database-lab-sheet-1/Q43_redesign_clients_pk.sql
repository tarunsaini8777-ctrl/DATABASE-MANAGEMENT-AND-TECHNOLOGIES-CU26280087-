-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 43:
-- Redesign existing table clients in a single ALTER statement: drop its current primary key,
-- add region_code (CHAR 3), and set (client_id, region_code) as the new composite primary
-- key.
-- Requires: Q19, Q20

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE clients
    DROP PRIMARY KEY,
    ADD COLUMN region_code CHAR(3) NOT NULL,
    ADD PRIMARY KEY (client_id, region_code);

-- ---------- Verify ----------
DESCRIBE clients;
SHOW INDEX FROM clients;
