DELIMITER $$
CREATE TRIGGER trg_employee_insert
AFTER INSERT on Employee
FOR EACH ROW
BEGIN
     INSERT INTO Employee_AuditLog(EmpID,OperationType,New_EmpName,New_Department,New_Salary)
     VALUES(NEW.EmpID,'INSERT',NEW.EmpName,NEW.Department,NEW.Salary);



END $$
DELIMITER ;