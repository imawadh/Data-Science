use employee_details;

-- And and Or Opertor
select * from employeerecords;

select * from employeerecords 
where LastName='miller';
select * from employeerecords 
where LastName='Miller';
-- select * from employeerecords 
-- where LastName=Miller; -- this is an error 



select * from employeerecords 
where LastName='miller' 
and EmployeeID=3;

select * from employeerecords 
where LastName='miller' 
and EmployeeID='3';

-- where in
select * from employeerecords where Department = 'HR' or Department= 'finance';
select * from employeerecords where  Department in ('finance','hr');
select * from employeerecords where  Department in ('finance','hr') and Salary>=60000;



