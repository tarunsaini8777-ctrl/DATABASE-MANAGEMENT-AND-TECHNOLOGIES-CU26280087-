# Database Technologies Lab Sheet 1: DDL Commands

Basic DBMS Commands — 50 Practice Problems (DDL: CREATE, ALTER, RENAME, TRUNCATE, DROP). Written for **MySQL 8.0+** (`ENUM`, `TINYINT`, `YEAR`, `AFTER`/`FIRST` are MySQL features).

## How to run

```bash
mysql -u root -p < 00_setup.sql                 # creates database dbtech_lab1 + 3 'existing' tables
mysql -u root -p dbtech_lab1 < Q01_create_departments.sql   # run each question in order
# or inside the mysql client:  SOURCE run_all.sql;
mysql -u root -p < 99_cleanup.sql                # drops the practice database when finished
```

> Questions build on each other (for example Q7 needs the `employees` table from Q2), so run them **in order**. Each file lists its prerequisites in a `Requires:` comment.

## Questions

- [Q1](Q01_create_departments.sql) — Write a DDL statement to create an empty table named departments with an integer dept_id as the primary key and a dept_name of up to 50 characters.
- [Q2](Q02_create_employees.sql) — Write a DDL query to create a table employees with an emp_id (Primary Key), first_name (VARCHAR 30), and salary (DECIMAL 10,2).
- [Q3](Q03_create_projects.sql) — Create a table projects with project_id (Primary Key), project_name (VARCHAR 100), and start_date using the standard DATE data type.
- [Q4](Q04_create_audit_logs.sql) — Create a table audit_logs storing log_id (Primary Key), action (TEXT), and created_at using TIMESTAMP.
- [Q5](Q05_create_products.sql) — Write a DDL query to create a table products with product_id (Primary Key), product_name (VARCHAR 50), and is_available using BOOLEAN.
- [Q6](Q06_create_system_settings.sql) — Create a table system_settings with setting_id (SMALLINT Primary Key), setting_key (VARCHAR 50), and setting_value (VARCHAR 100).
- [Q7](Q07_alter_add_email.sql) — Write an ALTER command to add a new column email (VARCHAR 100) to the existing employees table.
- [Q8](Q08_alter_drop_is_available.sql) — Write an ALTER statement to remove the is_available column from the products table.
- [Q9](Q09_rename_table.sql) — Write the SQL DDL command to rename the table departments to dept_units.
- [Q10](Q10_truncate_audit_logs.sql) — Write a command to empty all records from audit_logs without dropping the table structure.
- [Q11](Q11_create_user_profiles.sql) — Create a table user_profiles with user_id (Primary Key), bio (TEXT), and profile_pic (BLOB).
- [Q12](Q12_create_ticket_orders.sql) — Create a table ticket_orders with ticket_id (Primary Key) and priority_level restricted to ENUM('Low', 'Medium', 'High').
- [Q13](Q13_drop_products.sql) — Write the DDL statement to drop the entire products table permanently from the database.
- [Q14](Q14_modify_email_150.sql) — Write a command to change the data type of email in employees from VARCHAR(100) to VARCHAR(150).
- [Q15](Q15_create_sensor_data.sql) — Create a table sensor_data with read_id (BIGINT Primary Key) and temperature (FLOAT).
- [Q16](Q16_composite_pk_student_courses.sql) — Add a composite primary key to an existing table student_courses using columns student_id (INT) and course_id (INT).
- [Q17](Q17_rename_column_given_name.sql) — Rename column first_name to given_name in the employees table using DDL.
- [Q18](Q18_drop_pk_system_settings.sql) — Write an ALTER command to drop the primary key constraint from the system_settings table.
- [Q19](Q19_create_clients.sql) — Create a table clients with client_id (INT Primary Key) and registration_time (TIME).
- [Q20](Q20_readd_pk_clients.sql) — Re-add a primary key to column client_id in clients after table creation using an ALTER command.
- [Q21](Q21_create_order_items.sql) — Create a table order_items representing a line-item in an order. Use a composite primary key consisting of order_id (INT) and item_id (INT), along with quantity (INT) and unit_price (DECIMAL 8,2).
- [Q22](Q22_create_event_schedules.sql) — Create a table event_schedules with event_id (INT), venue_id (INT), event_date (DATE), and duration_hours (TINYINT). Make event_id and venue_id the composite primary key.
- [Q23](Q23_alter_add_two_columns.sql) — Modify the employees table to add two new columns in a single DDL statement: hire_date (DATE) and is_active (BOOLEAN).
- [Q24](Q24_alter_drop_and_modify.sql) — In the table employees, drop column email and change salary data type to DECIMAL(12,2) in a single ALTER statement.
- [Q25](Q25_composite_pk_inventory.sql) — Given table inventory with columns warehouse_id (INT) and sku (VARCHAR 20), write an ALTER statement to add a composite primary key to both columns.
- [Q26](Q26_modify_bio_mediumtext.sql) — Write a DDL command to change the bio column in user_profiles from TEXT to MEDIUMTEXT.
- [Q27](Q27_add_middle_name_after.sql) — Add a column middle_name (VARCHAR 30) to employees specifically positioned right after given_name.
- [Q28](Q28_create_geolocations.sql) — Create a table geolocations with location_id (INT Primary Key), latitude (DECIMAL 9,6), and longitude (DECIMAL 9,6).
- [Q29](Q29_create_user_accounts.sql) — Create a table user_accounts with user_id (BIGINT Primary Key), account_type (ENUM('Standard', 'Premium', 'Admin')), and created_timestamp (TIMESTAMP).
- [Q30](Q30_create_device_logs.sql) — Create a table device_logs with log_id (BIGINT Primary Key), ip_address (VARCHAR 45), and payload (LONGBLOB).
- [Q31](Q31_replace_pk_order_items.sql) — Drop the existing primary key of order_items, add a new column order_item_id (INT) at the first position, and set it as the new primary key in a single ALTER command chain.
- [Q32](Q32_start_date_to_project_year.sql) — Convert start_date column in table projects to project_year with data type YEAR using a single DDL statement.
- [Q33](Q33_create_document_store.sql) — Create a table document_store with doc_id (INT Primary Key), doc_title (VARCHAR 255), and content (LONGTEXT).
- [Q34](Q34_rename_content_doc_body.sql) — Change column content in document_store to doc_body while maintaining its LONGTEXT type.
- [Q35](Q35_create_table_like.sql) — Write a DDL command to create an empty table structure employees_archive identical in layout and constraints to the employees table.
- [Q36](Q36_drop_if_exists.sql) — Write a DDL query to drop table employees_archive safely only if it exists in the schema.
- [Q37](Q37_create_financial_ledger.sql) — Create a table financial_ledger with entry_id (BIGINT Primary Key), debit (DECIMAL 15,4), and credit (DECIMAL 15,4).
- [Q38](Q38_add_first_column.sql) — Add transaction_date (DATETIME) as the absolute first column in the financial_ledger table using ALTER.
- [Q39](Q39_create_measurements.sql) — Create a table measurements with sample_id (INT Primary Key) and value (DOUBLE).
- [Q40](Q40_create_app_users.sql) — Create a table app_users with user_id (INT Primary Key) and status_code (TINYINT).
- [Q41](Q41_create_transactions.sql) — Design a transactions table with an xact_id (BIGINT Primary Key), user_id (INT), amount (DECIMAL 10,2), channel (ENUM('Web', 'Mobile', 'ATM')), status (VARCHAR 20), and xact_time (TIMESTAMP).
- [Q42](Q42_create_system_events.sql) — Create a high-throughput logging table system_events using event_id (BIGINT), node_id (SMALLINT), event_payload (TEXT), and logged_time (TIMESTAMP). Define a composite primary key on (event_id, node_id).
- [Q43](Q43_redesign_clients_pk.sql) — Redesign existing table clients in a single ALTER statement: drop its current primary key, add region_code (CHAR 3), and set (client_id, region_code) as the new composite primary key.
- [Q44](Q44_rename_modify_add_after.sql) — You have a table raw_data with column temp_val (VARCHAR 50). In a single ALTER command, rename column temp_val to converted_val, change its type to DECIMAL(6,3), and add column processed_at (TIMESTAMP) right after it.
- [Q45](Q45_create_student_enrollments.sql) — Create a student_enrollments junction table with student_id (INT), course_id (INT), semester (VARCHAR 10), and enrollment_date (DATE). Set a 3-column composite primary key across (student_id, course_id, semester).
- [Q46](Q46_refactor_student_enrollments.sql) — Refactor student_enrollments by dropping the composite key (student_id, course_id, semester), adding enrollment_id (BIGINT) as the first column, and establishing it as the new primary key in a single statement.
- [Q47](Q47_create_file_metadata.sql) — Create table file_metadata with file_id (INT Primary Key), file_path (VARCHAR 500), file_size_bytes (BIGINT), and checksum (CHAR 64).
- [Q48](Q48_modify_file_metadata.sql) — Modify file_metadata schema in one ALTER statement: Change file_id from INT to BIGINT, alter file_path to TEXT, and drop column checksum.
- [Q49](Q49_create_and_rename_sensor_readings.sql) — Write the SQL DDL statements to: (1) Create a table sensor_readings with composite PK (sensor_id INT, recorded_at TIMESTAMP) and column reading (FLOAT), and (2) Rename sensor_readings to historical_sensor_readings.
- [Q50](Q50_create_and_modify_application_logs.sql) — Write the SQL DDL statements to: (1) Create table application_logs with log_id (BIGINT Primary Key), level (ENUM('DEBUG', 'INFO', 'WARN', 'ERROR')), message (TEXT), execution_time (DOUBLE), and created_at (DATETIME), and (2) Modify the level column to VARCHAR(10).
