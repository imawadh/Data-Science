select * from [dbo].[EmployeeRecords]

-- Two conditions need to be satisfied

select * from EmployeeRecords where department='HR';

select * from EmployeeRecords where department='HR' 
and employeeid=3;

select * from employeerecords where department='HR' 
or department='IT';

select * from employeerecords where (department='HR' 
or department='IT') and salary>70000;


select * from employeerecords where 
department in ('HR' ,'IT') and salary>70000;


select * from employeerecords where (department='HR' 
or employeeid>2) and salary>70000;