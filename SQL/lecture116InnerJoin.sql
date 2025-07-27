use sales_database;
show tables;

DROP TABLE IF EXISTS table1;
create table table1(c1 int, c2 varchar(50));

insert into table1 values
(1,'A'),
(1,'B'),
(2,'C'),
(null,'D'),
(3,'E'),
(7,'DA');

select * FROM TABLE1;
DROP TABLE IF EXISTS table2;
create TABLE TABLE2(C1 INT, C3 nvarchar(50));

insert into table2 values
(1,'XA'),
(2,'MB'),
(2,'NX'),
(null,'MO'),
(4,'XY'),
(5,'TF');

select * from table1;
select * from table2;

select * from	table1 inner join table2
on table1.c1=table2.c1;

select table1.c1,table1.c2,table2.c3 from	table1 inner join table2
on table1.c1=table2.c1;

select a.c1,a.c2,b.c3 from	table1 as a inner join table2  b
on a.c1=b.c1;