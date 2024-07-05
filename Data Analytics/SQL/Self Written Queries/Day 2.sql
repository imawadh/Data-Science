create database Day2;
drop database day2;

create database mydb;

drop database mydb;

create database mydb;

use mydb;

create table mytable(
name varchar(60),
age int,
marks int
);

insert into mytable
values("Awadh",20,67);

insert into mytable(name,age,marks)
values("Kishor",21,70);

select * from mytable;

insert into mytable(name)
values("Singh");

insert into mytable
values ("Awadh",56,89);

insert into mytable
values("Awadh Kishor Singh","78","56");

insert into mytable
values("Awadh Kishor Singh Pwioi",78,"56");

insert into mytable
values("Ram","67","89"),("Shyam",45,"45");

/*
Inavlid because 
insert into mytable
 values("Ram","67k","89");
*/

create table hospitals
(
	hospital_code	int,
	hospital_name	varchar(50), 
	location		varchar(200), 
	contact_no		bigint
);
insert into hospitals (hospital_code, hospital_name, location, contact_no)
values (1, 'Apollo Hospital', 'Mumbai', 9900099000);
insert into hospitals (hospital_code, hospital_name, location)
values (2, 'Fortis Hospital', 'New York');
insert into hospitals values (3, 'Duke Hospital', 'Washington DC', 171944449999);

select * from hospitals;

update hospitals
set hospital_name = "Awadh", contact_no = 676545
where hospital_code = 2; 


/* Why this beacuse update is very sensitive */
set sql_safe_updates = 0;

update hospitals
set contact_no = "12345678765"
where hospital_code=3;

describe mytable;

select * from mytable;

alter table mytable
add status boolean;

alter table mytable
drop status;

alter table mytable
add pass_Status varchar(4);

insert into mytable
values("Rohan", 56,78,"Pass");

select * from mytable;


/*
insert into mytable
values(Mohan,56,98,Pass);

We can pass int as string but string need to be passed as string only...


*/
insert into mytable
values("Mohan",56,98,"Pass");


alter table mytable
rename to data;

alter table data
rename to mytable;

describe mytable;

alter table mytable
modify name varchar(100);

alter table mytable
change name full_name varchar(67);




select * from mytable;

create table practice
( 
	name varchar(60)
);
select * from practice;
describe practice;

alter table practice
add class int;


alter table practice 
change name student_name varchar(56);


alter table practice
rename to day2_practice;

describe day2_practice;

insert into day2_practice
values("Ram",12),
	("Shyam",11),
    ("Rohan",56);
    
select * from day2_practice;

truncate day2_practice;

update day2_practice
set class = 44
where student_name = "Ram";

alter table day2_practice
rename to t1;

select * from t1;

delete from t1;

describe t1;
insert into t1
values("Ram",12),
	("Shyam",11),
    ("Rohan",56);
    
delete from t1
where class = 12;

/*
	Truncate is faster than delete
*/

select * from t1;

alter table t1
add percentage float;

describe t1;

alter table t1
drop percentage;







