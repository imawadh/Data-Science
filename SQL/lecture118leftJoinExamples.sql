use sales_database;

select * from table1;
select * from table2;

select * from table1 t1 left join table2 t2 
on t1.c1 = t2.c1;

select * from table1 t1 left outer join table2 t2 
on t1.c1 = t2.c1;

select t1.c1 , t1.c2 , t2.c3 from table1 t1 left join table2 t2 
on t1.c1 = t2.c1;