select * from employees;
-- (*) star means all

-- Showing specific columns in the table 
select firstname, lastname from employees;
select firstname ,salary from employees;


-- concat 
select * from employees;
select employeeid , concat(firstname,' ',lastname) from employees;

-- Alias 
select employeeid , concat(firstname,' ',lastname) as Full_Name  from employees;
select employeeid , concat(firstname,' ',lastname) as 'Full_Name' from employees;




