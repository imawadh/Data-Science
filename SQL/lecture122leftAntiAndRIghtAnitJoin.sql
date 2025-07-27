use sales_database;

select * from table1;
select * from table2;

select * from table1 left join table2 on table1.c1 = table2.c1 where table2.c3 is null;
select * from table1 right join table2 on table1.c1 = table2.c1 where table1.c2 is null;