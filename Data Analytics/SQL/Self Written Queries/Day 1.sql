--- Creating a data Base
create database sports;

create database healthcare;

--- Deleting a Database
drop database healthcare;

create database healthcare;

--- Creating a Table 
Use healthcare;
create table test
( S_No int,
name varchar(50));



--- Database with 5 table in it....

create database Cricket;
use cricket;
create table players
( S_No int,
	player_name varchar(45),
    country_name varchar(20)
   
);
drop table players;

create table players
( S_No int,
	player_name varchar(45),
    country_name varchar(20),
    jersy_number int
);

create table centuries
( player_name varchar(50),
	no_of_centuries int
);

create table dob
( player_name varchar(50),
	date_of_birth date
);

create table umpire
(
	umpire_id int,
    umpire_name varchar(50),
    experience_of_matches int,
    country varchar(45)
);

create table coach
(
	coach_id int,
    coach_name varchar(50),
    batting_coach boolean,
    batting_career_average double,
    bowling_career_average double,
    has_done_coaching_earlier boolean,
    what_can_we_expect_from_him_as_coach text
    
);
use cricket;
select * from coach;





