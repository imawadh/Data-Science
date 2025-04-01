select * from employee_details.employeerecords;

-- Not operator 
select * from employee_details.employeerecords 
where not FirstName = "JOHN";

select * from employee_details.employeerecords 
where not FirstName = "JOHN" and not Salary = 85000.00;

select * from employee_details.employeerecords
where not LastName = 'Mailler';


-- Or operator
select * from employee_details.employeerecords
where not LastName='Miller' or Department='HR';

-- Between operator
select * from employee_details.employeerecords
where Salary between 75000 and 85000;
-- Another way of above query 
select * from employee_details.employeerecords
where Salary>=75000 and Salary<=75000;

-- In operator 
select * from employee_details.employeerecords
where Department='HR' or Department='IT';

select * from employee_details.employeerecords
where Department in ('HR' ,'IT');

select * from employee_details.employeerecords
where Department not in ('HR' ,'IT');

-- mysql is case insensitive
-- To make it case sensitive we use binary
select * from employee_details.employeerecords
where Department = 'HR';
select * from employee_details.employeerecords
where Department = 'Hr';
select * from employee_details.employeerecords
where Department = 'hR';
select * from employee_details.employeerecords
where Department = 'hr';


-- Method 1 Binary Keyword 
select * from employee_details.employeerecords
where binary Department = 'Hr';
select * from employee_details.employeerecords
where binary Department = 'HR';
select * from employee_details.employeerecords
where binary Department = 'hr';
select * from employee_details.employeerecords
where binary Department = 'hR';

-- Method 2 COLLATE utf8mb4_bin 

