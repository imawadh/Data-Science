

use SQLBasicsQuestions;
drop table employees;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary) VALUES
(1, 'John', 'Doe', 'HR', 55000.00),
(2, 'Jane', 'Smith', 'IT', 75000.00),
(3, 'Emily', 'Jones', 'Finance', 65000.00),
(4, 'Michael', 'Brown', 'IT', 80000.00),
(5, 'Sarah', 'Davis', 'HR', 60000.00),
(6, 'David', 'Wilson', 'Finance', 70000.00),
(7, 'Laura', 'Garcia', 'IT', 72000.00),
(8, 'Robert', 'Miller', 'HR', 58000.00),
(9, 'Sophia', 'Martinez', 'Finance', 67000.00),
(10, 'James', 'Anderson', 'IT', 81000.00);


select * from Employees;

-- 1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000?
select * from employees where department = 'IT'  and salary>75000;


-- 2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?
select * from employees where department = 'HR'  or salary<60000;



-- 3. How do you select employees who do not work in the 'Finance' department?
select * from employees where department not in ('Finance');
-- or
select * from employees where department != 'Finance';



-- 4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?
select * from employees where salary between 60000 and 70000 and department='Finance';


-- 5. How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000?
select * from employees where department = 'IT' and salary<=80000;

-- 6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?
select *  from employees where department in ('HR','Finance') and salary>65000;

-- 7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?
select * from employees where lastname like "D%" and department != 'HR'; 


-- 8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?
select * from employees where department not like ('IT') and salary>70000;


-- 9. How do you select employees who work in the 'IT' department and either have a salary greater 
-- than 75,000 or have the first name 'Laura'?
select * from employees where department = 'IT' and (salary>75000 or firstname = "Laura");


-- 10. How do you find employees who do not work in the 'HR' or 'IT' departments?
select * from employees where department not in  ('HR','IT');

