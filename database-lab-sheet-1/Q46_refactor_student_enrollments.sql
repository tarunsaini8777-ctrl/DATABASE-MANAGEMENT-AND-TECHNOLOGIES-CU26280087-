-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 46:
-- Refactor student_enrollments by dropping the composite key (student_id, course_id,
-- semester), adding enrollment_id (BIGINT) as the first column, and establishing it as the
-- new primary key in a single statement.
-- Requires: Q45

USE dbtech_lab1;

-- ---------- Solution ----------
ALTER TABLE student_enrollments
    DROP PRIMARY KEY,
    ADD COLUMN enrollment_id BIGINT NOT NULL AUTO_INCREMENT FIRST,
    ADD PRIMARY KEY (enrollment_id);

-- ---------- Verify ----------
DESCRIBE student_enrollments;
SHOW INDEX FROM student_enrollments;
