select * from temp1;
SELECT CONNECTION_ID();

select * from regulartable;

-- Dropping table beacuse of the same session 
drop table temp1;

-- Temprary Table for employees 
create temporary table temp1 as 
select * from employee_details.employees;

-- Temporary table for employeerecord 
create temporary table temp2 as 
select * from employee_details.employeerecords;

-- where Clause 
select * from employee_details.employeerecords where EmployeeID=2;
select concat(firstname,' ',lastname) as Full_Name from employee_details.employeerecords where EmployeeID=2;

select * from employee_details.employeerecords where Salary>=75000.00;
select * from employee_details.employeerecords where Salary<75000.00;

select distinct * from employee_details.employeerecords where Salary<75000.00;

select distinct firstname,lastname ,Salary from employee_details.employeerecords where Salary<75000.00;
select distinct concat(firstname,' ',lastname) as Full_Name ,Salary from employee_details.employeerecords where Salary<75000.00;

