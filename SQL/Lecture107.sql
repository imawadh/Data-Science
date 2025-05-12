show databases;
use employee_details;

show tables;
show table status;

-- Temporary Table 
create temporary table t1
as select * from employeerecords;
select * from t1;

-- Temporary Table using like 
CREATE TABLE t2 LIKE employees;
insert into t2 select * from employees;
select * from employees;
select * from t2;

set sql_safe_updates = 0;
-- Delete Drop and Truncate  
-- delete command
delete from t2 
where department is null or lastname = '';
select * from t2;

-- delete without where condition (clause) 
-- delete is used to delete a perticular record from the table 
create table t3 like employees;
insert into t3 select * from employees;
select * from t3;
delete from t3; -- all the records will be deleted and table structure remains intact 
select * from t3; 


-- Trunacate 
-- it deletes all the records from the table and table structure remains intact 
insert into t3 select * from employees;
select * from t3;
truncate table t3;
select * from t3;

-- drop 
-- it deletes all the record as well as table structure as well ..
drop table t3;
select * from t3;





