-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 22:
-- Create a table event_schedules with event_id (INT), venue_id (INT), event_date (DATE), and
-- duration_hours (TINYINT). Make event_id and venue_id the composite primary key.

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE event_schedules (
    event_id       INT,
    venue_id       INT,
    event_date     DATE,
    duration_hours TINYINT,
    PRIMARY KEY (event_id, venue_id)
);

-- ---------- Verify ----------
DESCRIBE event_schedules;
