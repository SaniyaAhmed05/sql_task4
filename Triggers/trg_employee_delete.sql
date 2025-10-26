DELIMITER $$
CREATE TRIGGER trg_employee_delete
AFTER DELETE ON Employee
FOR EACH ROW
BEGIN 
    INSERT INTO Employee_AuditLog( EmpID,OperationType,Old_EmpName,Old_Department,Old_Salary)  )
    VALUES(OLD.EmpID,'DELETE',Old_EmpName,Old_Department,Old_Salary);
END $$
DELIMITER ;