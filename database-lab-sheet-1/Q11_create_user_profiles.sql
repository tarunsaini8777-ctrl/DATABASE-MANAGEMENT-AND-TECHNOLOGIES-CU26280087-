-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 11:
-- Create a table user_profiles with user_id (Primary Key), bio (TEXT), and profile_pic
-- (BLOB).

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE user_profiles (
    user_id     INT PRIMARY KEY,
    bio         TEXT,
    profile_pic BLOB
);

-- ---------- Verify ----------
DESCRIBE user_profiles;
