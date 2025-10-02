-- Constraints 
-- these are the conditions applied to columns of table which are applicable while inserting some record in the table .. 

create database contstraints;
use contstraints;

-- Case 1 : We will have to create table 
create table test_not_null(
EID int not null
,age tinyint,
firstName varchar(256)
);

select * from information_schema.columns where table_name like "test_not_null"; -- using is nullable
select * from test_not_null;

INSERT INTO test_not_null (EID, age, firstName)
VALUES (1, 12, 'Awadh');
insert into test_not_null values
(2,22,'Kishor');
insert into test_not_null values
(null,2,'Kishor'); -- error
insert into test_not_null values
(3,null,'Siggh');



-- Case 2 : Table already exists 
show tables;
select * from test_not_null;

alter table test_not_null modify firstname varchar(256) not null;
insert into test_not_null values
(3,null,null);

select * from information_schema.columns where table_name = 'test_not_null'; 

