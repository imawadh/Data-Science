use employee_details;
show tables;
select * from employeerecords;

-- Insert into 
select * from employee_details.employees;
insert into employee_details.employees (Employeeid,firstname,lastname,department,salary,hiredate)
values (6,'raj','ambani','it',6700,'2023-04-20');

insert into employee_details.employees(employeeid,firstname,lastname)
values (7,'Rohit','Mehre');

-- Only possible when all the values known of each column 
insert into employee_details.employees
values(8,'Mahesh','Narang','HR',73000.00,'2024-01-24');

-- How to know what values will go where 
SELECT * FROM information_schema.columns
WHERE table_name = 'employees';
-- There will be a column named as ordinal position which specifies the the order of values which goes where .
