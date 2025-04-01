select * from employees;

select ordinal_position,column_name
from information_schema.columns 
where table_name='employees';

-- NULL Value vs 0 vs ''
insert into employees values
(9,'Jay','','IT',7300,'2022-04-04');

insert into employees values
(10,'Nithn','shamani','IT',0,'2021-04-04');

select * from employees where department = null;
select * from employees where Department is null;

select * from employees where Department is not null;

select 2+2;
select null is null;
select null = null;