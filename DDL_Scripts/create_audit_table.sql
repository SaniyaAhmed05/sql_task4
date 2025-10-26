CREATE TABLE Employee_AuditLog(
    AuditID INT  PRIMARY KEY AUTO_INCREMENT,
    EmpID INT,
    OperationType VARCHAR(10),
    Old_EmpName VARCHAR(100),
    New_EmpName VARCHAR(100),
    Old_Department VARCHAR(50),
    New_Department VARCHAR(50),
    Old_Salary DECIMAL(10,2),
    New_Salary DECIMAL(10,2),
    OperationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    PerformedBy VARCHAR(100) DEFAULT CURRENT_USER()


);