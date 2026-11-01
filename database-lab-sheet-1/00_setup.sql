-- Database Technologies Lab Sheet 1: DDL Commands
-- SETUP: run this ONCE before Q01 (fresh start; it recreates the practice database).
-- Compatible with MySQL 8.0+ (MariaDB 10.5+ also works).

DROP DATABASE IF EXISTS dbtech_lab1;
CREATE DATABASE dbtech_lab1;
USE dbtech_lab1;

-- Tables that the questions describe as 'existing' (not created by any question):
CREATE TABLE student_courses (      -- used in Q16
    student_id INT NOT NULL,
    course_id  INT NOT NULL
);

CREATE TABLE inventory (            -- used in Q25
    warehouse_id INT NOT NULL,
    sku          VARCHAR(20) NOT NULL
);

CREATE TABLE raw_data (             -- used in Q44
    temp_val VARCHAR(50)
);

SHOW TABLES;
