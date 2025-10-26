# sql_task4
This task involves implementing a trigger-based auditing mechanism to automatically track all data modifications performed on the Employee table.
An audit table (Employee_AuditLog) is created to record every INSERT, UPDATE, and DELETE operation, along with important details such as old and new values, operation type, timestamp, and user information.

The triggers ensure that:

* Whenever a new record is inserted into the Employee table, the inserted values are logged.

* When a record is updated, both the previous (old) and modified (new) values are captured.

* When a record is deleted, the deleted data is preserved in the audit log for future reference.

This mechanism helps maintain data integrity, traceability, and accountability, enabling database administrators and data engineers to monitor changes and perform audits effectively.
# 📁 Project Structure: Trigger-Based Audit Logging
```
Trigger_Audit_Logging/
│
├── 1_DDL_Scripts/
│   ├── create_employee_table.sql
│   ├── create_audit_table.sql
│
├── 2_Triggers/
│   ├── trg_employee_insert.sql
│   ├── trg_employee_update.sql
│   ├── trg_employee_delete.sql
│
├── 3_Test_Cases/
│   ├── test_insert.sql
│   ├── test_update.sql
│   ├── test_delete.sql
│
├── README.md
```


# Key Components:

Employee Table: Main data table on which operations are performed.

Employee_AuditLog Table: Stores operation type, old/new values, timestamp, and user.

Triggers: Automatically capture and insert audit records after each INSERT, UPDATE, or DELETE.

# Outcome:
Every data modification in the Employee table is transparently logged in the Employee_AuditLog table, creating a reliable audit trail for compliance, debugging, and historical analysis.
