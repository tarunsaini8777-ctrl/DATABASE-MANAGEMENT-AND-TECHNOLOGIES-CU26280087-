-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 15:
-- Create a table sensor_data with read_id (BIGINT Primary Key) and temperature (FLOAT).

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE sensor_data (
    read_id     BIGINT PRIMARY KEY,
    temperature FLOAT
);

-- ---------- Verify ----------
DESCRIBE sensor_data;
