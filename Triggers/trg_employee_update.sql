DELIMITER $$
CREATE TRIGGER trg_employee_update
AFTER UPDATE ON Employee
FOR EACH ROW 
BEGIN
     INSERT INTO Employee_AuditLog (
        EmpID, OperationType,
        Old_EmpName, New_EmpName,
        Old_Department, New_Department,
        Old_Salary, New_Salary
    )
    VALUES (
        NEW.EmpID, 'UPDATE',
        OLD.EmpName, NEW.EmpName,
        OLD.Department, NEW.Department,
        OLD.Salary, NEW.Salary
    );



END $$
DELIMITER ;