use contstraints;
show tables;
-- Case 1 : New Table 
create table test_fk_1(
id int primary key,
name varchar(256)
);

insert into test_fk_1 values
(1, "Mayank"), (2,"Raj"),(3,"Jayant");

select * from test_fk_1;
create table test_fk_2(
	id int ,
    age tinyint,
	CONSTRAINT fk_test FOREIGN KEY (id) REFERENCES test_fk_1(id)
);

insert into test_fk_2 values(1,22),(2,44);
select * from test_fk_2; 
insert into test_fk_2 values(1,56);  -- foreign key can have duplicates values 
insert into test_fk_2 values(null,56); -- foreign key can have null values 
insert into test_fk_2 values(90,56); -- key not present in the primary table will not allow us to insert values 