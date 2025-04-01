use employee_details;

select * from employeerecords;

-- Order by -- Sorting 
select * from employeerecords order by Salary;
select * from employeerecords order by Salary asc;
select * from employeerecords order by Salary desc;

-- Sort one col by aesc and other by desc
select * from employeerecords 
order by FirstName asc,
salary desc;

select * from employeerecords 
order by Department asc,
salary desc;

