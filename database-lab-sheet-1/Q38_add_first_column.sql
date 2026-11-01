-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 38:
-- Add transaction_date (DATETIME) as the absolute first column in the financial_ledger table
-- using ALTER.
-- Requires: Q37

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE financial_ledger
    ADD COLUMN transaction_date DATETIME FIRST;

-- ---------- Verify ----------
DESCRIBE financial_ledger;
