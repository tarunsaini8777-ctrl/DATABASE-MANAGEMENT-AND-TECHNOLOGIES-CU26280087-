-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 16:
-- Add a composite primary key to an existing table student_courses using columns student_id
-- (INT) and course_id (INT).
-- Requires: 00_setup.sql (student_courses)

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE student_courses
    ADD PRIMARY KEY (student_id, course_id);

-- ---------- Verify ----------
DESCRIBE student_courses;
SHOW INDEX FROM student_courses;
