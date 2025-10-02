-- Deafult Comstarints
-- This contsraints to provide values to columns when no value is passed to insert 


-- Case 1 : Table doesn't exist
create table test_default(
SID int,
firstname varchar(256) default 'Virat',
lstname varchar(256),
age tinyint
);
select * from test_default;
insert into test_default (sid,lstname,age) values
(1,'Singh',12),
(2,'Kumar',90);

insert into test_default values
(3,'Hello','World',12);

insert into test_default (sid,firstname,age) values
(1,'Ajay',12),
(2,'Rohan',90);



-- Case 2 : Table exists 
select * from test_default;
alter table test_default
modify lstname varchar(256) default 'Singh';

select * from information_schema.columns where table_name = "test_default";