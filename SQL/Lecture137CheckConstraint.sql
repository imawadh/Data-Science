-- check constaraint

-- Case 1 :: Table doesn;t exist
use contstraints;
select * from test_check;
create table test_check(
	SID tinyint not null unique,
    age tinyint check(age>10)
);

insert into test_check values
(1,12);
insert into test_check values
(2,10); -- check contsrint doesn't match 
insert into test_check values
(2,11);

-- Case 2 :: Table Already exists  
alter table test_check 
modify SID int not null check(SID>=1);

update test_check set SID = 6 where SID = 1;
select * from test_check;