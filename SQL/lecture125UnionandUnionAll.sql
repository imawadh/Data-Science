use sales_database;

select * from table1;
select * from table2;



create table append1 (C1 int,C2 nvarchar(255),C3 int);
insert into  append1 values (1,'A',7),
(2,'B',8),
(3,'C',9);



create table append2 (C1 int,C2 nvarchar(255),C3 int);
insert into append2 values (11,'AA',17),
(2,'B',8),
(33,'C1',91);

select * from append1;
select * from append2;

-- Union and union all table 
select c1, c2, c3 from append1
union all
select c1, c2, c3 from append2;

select c1, c2, c3 from append1
union 
select c1, c2, c3 from append2;

-- Number of columns in both the table need to be same.
-- Data types of the columns have to be same
-- Order in which columns are written has to be same
-- alias name assigned in first select statement will be assigned 

select c1, c2 from append1
union all
select c1, c2, c3 from append2;

select c1, c2, c3 from append1
union all
select c1, c3, c2 from append2;


