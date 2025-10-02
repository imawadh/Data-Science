
use student_details;
create table student_details(
student_name nvarchar(256),
gender char(1),
age tinyint,
event_date date,
distance decimal(5,2)
);

select * from student_details;

insert into student_details(student_name,gender,age,event_date ,distance)
values("Raj Mehra",'M',12,'2024-08-03',12.4);

