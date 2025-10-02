-- Case 1 : New Table 
-- It ensures the columns has all the uniques vlues in the columns 
truncate test_unique;
select * from test_unique;
alter table test_unique
modify lastname varchar(200) not null unique;

select * from information_schema.columns where table_name = "test_unique";


-- Case 2 : Existing Table 
use contstraints;
create table test_unique(
	SID int unique,
    age tinyint not null,
    firstname varchar(256) not null unique,
    lastname varchar(256) not null
);

select * from test_unique;
insert into test_unique values
(1,22,'Mayank','Mehra');
insert into test_unique values
(4,24,'Rohit','Mehra');
insert into test_unique values
(null,24,'Awadh','Mehra');
insert into test_unique values
(null,24,'Kishor','Mehra');
--  Duplicate unique value can be inserted
select null = null;
