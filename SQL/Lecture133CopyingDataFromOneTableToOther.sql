show databases;
use sales_database;
show tables;
-- 4 Sceinarios of Copying Record from one table to other 
-- Case 1 :  Copying all Data with structure to a new table from existing table 
-- Case 2 :  Copying certian columns data to a new Table from existing table 
-- Case 3 :  Copying all data to a existing table from another existing table
-- Case 4 :  Copying certain to a existing table from another existing table ..


create table demo1 as 
select * from sales; -- Case 1 :  Duplicating table 

select * from demo1;

create table demo2 as 
select Productid, quantity from sales; -- INsertion of certain columns from sales table to a new table 
select * from demo2; 

create table demo3 as 
select * from sales where 1 = 0; -- Copying the same structure as of sales table
select * from demo3;
insert into demo3  select * from sales; -- copying the data a existing table 

create table demo4 (
pid tinyint, quan integer);
insert into demo4 (pid,quan)
select productId, Quantity from sales;
select * from demo4;


-- Duplicatig table structure 
create table demo5 like sales;
select * from demo5;


