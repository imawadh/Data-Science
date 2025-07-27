use sales_database;

select * from table1;
select * from table2;

-- Outer JOin Means inner join + left join  + right join 

SELECT *
FROM table1
inner JOIN table2 ON table1.c1 = table2.c1

UNION



SELECT *
FROM table1
LEFT JOIN table2 ON table1.c1 = table2.c1

UNION

SELECT *
FROM table1
RIGHT JOIN table2 ON table1.c1 = table2.c1;


  