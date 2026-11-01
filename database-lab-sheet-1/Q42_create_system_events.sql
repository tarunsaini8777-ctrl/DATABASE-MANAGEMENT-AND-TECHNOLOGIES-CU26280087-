-- Database Technologies Lab Sheet 1: DDL Commands
-- Question 42:
-- Create a high-throughput logging table system_events using event_id (BIGINT), node_id
-- (SMALLINT), event_payload (TEXT), and logged_time (TIMESTAMP). Define a composite primary
-- key on (event_id, node_id).

USE dbtech_lab1;

-- ---------- Solution ----------
CREATE TABLE system_events (
    event_id      BIGINT,
    node_id       SMALLINT,
    event_payload TEXT,
    logged_time   TIMESTAMP,
    PRIMARY KEY (event_id, node_id)
);

-- ---------- Verify ----------
DESCRIBE system_events;
