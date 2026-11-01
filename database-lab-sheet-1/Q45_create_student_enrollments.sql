-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 45:
-- Create a student_enrollments junction table with student_id (INT), course_id (INT),
-- semester (VARCHAR 10), and enrollment_date (DATE). Set a 3-column composite primary key
-- across (student_id, course_id, semester).

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE student_enrollments (
    student_id      INT,
    course_id       INT,
    semester        VARCHAR(10),
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id, semester)
);

-- ---------- Verify ----------
DESCRIBE student_enrollments;
