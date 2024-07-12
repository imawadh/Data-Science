create database Constraints;
use constraints;
create table employee
(id int primary key,
name varchar(60));

insert into employee
values (1,"Ram");

select * from employee;

insert into employee
values (2,"Shyam");

create table product
(user_id int,
product_id int, 
shipping_address varchar(70),
primary key (user_id,product_id));
-- If both the primary key matches then only it will show error .... 

insert into product
values
(1,1,"Sumhatar"),(1,2,"Delhi");



select * from product;


create table auto_increment_data_for_primary_key
(id int auto_increment primary key,
name varchar(50));

insert into auto_increment_data_for_primary_key
(name) values
("Ram"),("Shyam");

select * from auto_increment_data_for_primary_key;

insert into auto_increment_data_for_primary_key
values (5,"Rohan");

insert into auto_increment_data_for_primary_key
(name) values
("Awadh"),("Yashraj");

insert into auto_increment_data_for_primary_key
values
(3,"Dinkar"),(4,"Priyanshu");

select * from auto_increment_data_for_primary_key;

insert into auto_increment_data_for_primary_key
(name)
values ("Aditya"),("Aaadhar");

CREATE TABLE faviorites(
    customer_id INT,
    product_id INT,
    favorite_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(customer_id, product_id)
);

insert into faviorites
values(1,1,CURRENT_TIMESTAMP);

select * from faviorites;

insert into faviorites
values(1,2,CURRENT_TIMESTAMP);



-- alter table product
-- add Time_Stamp default Current_timestamp; 



create table table_without_primary_key
( 
);































-- Foreign Key

CREATE DATABASE fkdemo;
USE fkdemo;

CREATE TABLE categories(
  categoryId INT AUTO_INCREMENT PRIMARY KEY, 
  categoryName VARCHAR(100) NOT NULL
);

CREATE TABLE products(
  productId INT AUTO_INCREMENT PRIMARY KEY, 
  productName VARCHAR(100) NOT NULL, 
  categoryId INT, 
  CONSTRAINT fk_category FOREIGN KEY (categoryId) 
                         REFERENCES categories(categoryId)
);

INSERT INTO categories(categoryName)
VALUES
    ('Smartphone'),
    ('Smartwatch');
    

INSERT INTO products(productName, categoryId)
VALUES('iPhone',1);

INSERT INTO products(productName, categoryId)
VALUES('iPad',6);

select * from products;
select * from categories;





create database foreign_key_dabatabse;
use foreign_key_dabatabse;

create table student(
	student_id int auto_increment primary key,
    student_name varchar(50),
    Field_of_knowlwdge varchar(15)

);

create table student_subjects(
	student_id int,
    subject_1 varchar(15),
    subject_2 varchar(15),
    constraint fk Foreign key (student_id) references student(student_id)
);

insert into student (student_name,field_of_knowlwdge)
values ("Awadh" , "Technology"),("Nischal","Management");

select * from student;

insert into student_subjects values
(1,"DSA","JAVA"),(2,"Economics","Finanace");

select * from student_subjects;

insert into student (student_name,field_of_knowlwdge)
values("Shyam","Medical");

insert into student_subjects values
(3,"Ram","Shyam");



