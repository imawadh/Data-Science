

CREATE TABLE EmployeeRecords (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50),
    Salary DECIMAL(10, 2)
);


INSERT INTO EmployeeRecords (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
(1, 'John', 'Miller', 'HR', 60000),
(2, 'Jane', 'Smith', 'Finance', 75000),
(3, 'John', 'Miller', 'HR', 60000),
(4, 'Emily', 'Davis', 'IT', 85000),
(5, 'Michael', 'Brown', 'Finance', 75000),
(6, 'Jane', 'Smith', 'Finance', 75000);


select * from EmployeeRecords;

select firstname from EmployeeRecords;

select distinct(firstname) from EmployeeRecords;

select distinct lastname from EmployeeRecords;
select distinct firstname,lastname from EmployeeRecords;

select * from EmployeeRecords;

--- Observe a pattern here that all the queries that we made using distinct are given in alphabetical order