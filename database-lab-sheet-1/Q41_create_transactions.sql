-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 41:
-- Design a transactions table with an xact_id (BIGINT Primary Key), user_id (INT), amount
-- (DECIMAL 10,2), channel (ENUM('Web', 'Mobile', 'ATM')), status (VARCHAR 20), and xact_time
-- (TIMESTAMP).

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE transactions (
    xact_id   BIGINT PRIMARY KEY,
    user_id   INT,
    amount    DECIMAL(10,2),
    channel   ENUM('Web', 'Mobile', 'ATM'),
    status    VARCHAR(20),
    xact_time TIMESTAMP
);

-- ---------- Verify ----------
DESCRIBE transactions;
