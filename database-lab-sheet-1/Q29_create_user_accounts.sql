-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 29:
-- Create a table user_accounts with user_id (BIGINT Primary Key), account_type
-- (ENUM('Standard', 'Premium', 'Admin')), and created_timestamp (TIMESTAMP).

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE user_accounts (
    user_id           BIGINT PRIMARY KEY,
    account_type      ENUM('Standard', 'Premium', 'Admin'),
    created_timestamp TIMESTAMP
);

-- ---------- Verify ----------
DESCRIBE user_accounts;
