-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 20:
-- Re-add a primary key to column client_id in clients after table creation using an ALTER
-- command.
-- Requires: Q19

USE dbtech_lab1;

-- ---------- Solution ----------
-- clients already has a primary key from Q19, so drop it first and add it again
-- (both actions in ONE ALTER statement):
ALTER TABLE clients
    DROP PRIMARY KEY,
    ADD PRIMARY KEY (client_id);

-- If the table had NO primary key, only this is needed:
-- ALTER TABLE clients ADD PRIMARY KEY (client_id);

-- ---------- Verify ----------
DESCRIBE clients;
