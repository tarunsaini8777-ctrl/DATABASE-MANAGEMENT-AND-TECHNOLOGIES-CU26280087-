-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 19:
-- Create a table clients with client_id (INT Primary Key) and registration_time (TIME).

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE clients (
    client_id         INT PRIMARY KEY,
    registration_time TIME
);

-- ---------- Verify ----------
DESCRIBE clients;
