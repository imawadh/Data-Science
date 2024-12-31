use employee_details;

select * from employeerecords;
select * from [dbo].[EmployeeRecords];

select * from [dbo].[EmployeeRecords] where employeeid = 2;

select employeeid, concat(firstname,' ',lastname) [Full Name] 
from [dbo].[EmployeeRecords] where employeeid = 2;


select distinct  concat(firstname,' ',lastname) [Full Name],salary 
from [dbo].[EmployeeRecords] where salary<75000;

--- observe the difference between above and below code 

select distinct employeeid, concat(firstname,' ',lastname) [Full Name],salary 
from [dbo].[EmployeeRecords] where salary<75000;




