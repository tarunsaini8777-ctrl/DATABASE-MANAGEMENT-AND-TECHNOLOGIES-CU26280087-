-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 49:
-- Write the SQL DDL statements to: (1) Create a table sensor_readings with composite PK
-- (sensor_id INT, recorded_at TIMESTAMP) and column reading (FLOAT), and (2) Rename
-- sensor_readings to historical_sensor_readings.

USE dbtech_lab1;

-- ---------- Solution ----------
-- (1) Create the table
CREATE TABLE sensor_readings (
    sensor_id   INT,
    recorded_at TIMESTAMP NOT NULL,
    reading     FLOAT,
    PRIMARY KEY (sensor_id, recorded_at)
);

-- (2) Rename it
RENAME TABLE sensor_readings TO historical_sensor_readings;
-- Equivalent: ALTER TABLE sensor_readings RENAME TO historical_sensor_readings;

-- ---------- Verify ----------
DESCRIBE historical_sensor_readings;
