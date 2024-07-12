create database day4;
use day4;
create table student( 
en_number int,
name varchar(60),
marks int,
primary key(en_number,name));

insert into student values(1,"Ram",89);
insert into student values(1,"",89);
insert into student values(1,null,89); -- Throws error because primary key cannot have null value 

create table categories(
categories_Id int auto_increment primary key,
category_name varchar(50));

create table product(
product_id int primary key,
product_name varchar(50),
categories_Id int,
constraint foreign_key foreign key (categories_ID)
						references categories(categories_Id)
);

describe categories;
describe product;

insert into categories (category_name) values("Fashion");
insert into categories (category_name) values("Toys");
insert into categories (category_name) values("Mens");

select * from categories;

insert into product values (1,"Remote Car", 2);
insert into product values (2,"Remote Car", 2);
insert into product values (3,"Remote Car", 2);
insert into product values (4,"T Shirt",3);

select * from product;


create table product_data(
product_id int,
quality_of_raw_material varchar(5),
constraint foreign_key_product foreign key (product_id)
						references product(product_id)
);

insert into product_data values(1,"Good");

select * from product_data;
select * from product;
select * from categories;

update  categories 
set categories_id = 5 where categories_id = 2;

drop table product;

drop table product_data;

describe categories;

create table product(
product_id int,
product_name varchar(50),
categories_Id int,
constraint fk foreign key (categories_Id) references categories(categories_Id)
on update cascade
on delete cascade
);

insert into product values (1,"Remote Car", 3);
insert into product values (2,"Remote Car", 1);
insert into product values (3,"Remote Car", 2);
insert into product values (4,"T Shirt",3);

select * from product;

delete from categories
where categories_Id = 2;










