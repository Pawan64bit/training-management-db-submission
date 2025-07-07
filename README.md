This project contains the ER diagram, schema , sample data, and SQL queries for the Training Management DB project.

## Structure ##

- er-diagram: Contains the ER diagram (PNG or PDF)
- schema: Contains DDL for table creation and DML for sample data
- assignments: Contains SQL queries for query-based assignments

## Assumptions ##

- Each topic belongs to one course
- A batch is assigned to one course
- A candidate can join multiple batches
- Every batch can have multiple assignments

## Instructions ##

1. Run the script in 'ddl_tables_training_mgt.sql' to create tables
2. Run 'dml_insert_training_mgt.sql' to insert sample data
3. Use queries in 'assignments_training_mgt.sql' to test results