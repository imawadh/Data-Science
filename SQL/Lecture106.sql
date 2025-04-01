select * from employees;

-- Tempoarary table craetion
create temporary table temp1
as select * from employees;
select * from temp1;

-- Sql safe state 
SET SQL_SAFE_UPDATES = 0;

-- Update statement of SQL
update temp1 
set department = 'HR'
where department is null;


update temp1
set salary = 89000, hiredate = '2023-09-15'
where employeeid=7;

-- Update without where clause 
create temporary table temp2 as 
select * from employees;

select * from temp2;
update temp2
set department = 'COOK';
-- If wedonot use where every value in the column is set that value 

