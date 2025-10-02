-- Lecture 140  and 139
-- Primary Key Constarint 
use contstraints;
-- Cse 1 : New Table 
create table test_pk_1(
	eid int primary key,
    gender char(1)
    ,age tinyint,
    firstname varchar(256)
);

insert into test_pk_1 values
(1,'M',12,"Mayank");

select * from test_pk_1;
insert into test_pk_1 values
(1,'F',22,"Meena"); -- error 
insert into test_pk_1 values
(null,'F',22,"Meena"); -- error 



-- Case 2 :Table Already Exists 
truncate test_pk_1;
alter table test_pk_1
drop primary key,
modify eid int , 
modify firstname varchar(264) primary key;

-- or -- 
truncate test_pk_1;
alter table test_pk_1
drop primary key,
modify eid int , 
add primary key (firstname);

-- DEfine two columns combination as primary key 

alter table test_pk_1
drop primary key,
add primary key (eid,firstname);

select column_name,column_key from information_schema.columns where table_name = "test_pk_1" ; 
-- combination of two keys can be primary key but 2 columns can not be primary key individually in a table 
