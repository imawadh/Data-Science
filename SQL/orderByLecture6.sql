use employee_details;

select * from [dbo].[Employees] ;


-- Below two lines of code don't have any difference in 
-- output because of by default value of order by is asc


select * from [dbo].[Employees] order by Salary;
select * from [dbo].[Employees] order by Salary asc;

select * from [dbo].[Employees] order by Salary desc;

select * from Employees order by FirstName asc, Salary desc;
