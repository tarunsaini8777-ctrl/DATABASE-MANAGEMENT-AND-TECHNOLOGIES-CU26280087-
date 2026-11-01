-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 26:
-- Write a DDL command to change the bio column in user_profiles from TEXT to MEDIUMTEXT.
-- Requires: Q11

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE user_profiles
    MODIFY COLUMN bio MEDIUMTEXT;

-- ---------- Verify ----------
DESCRIBE user_profiles;
