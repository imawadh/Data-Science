
use student_details;

select * from student_details;

insert into student_details(student_name,gender,age,event_date ,distance)
values("Mayank",'M',24,'2024-08-03',123.4);

insert into student_details
values("Kishor",'M',54,'2024-08-03',123.4);

SET SQL_SAFE_UPDATES = 0;
delete from student_details where student_name = "Raj Mehra";

insert into student_details(student_name,gender,age,event_date ,distance)
values("Ram",'M',24,'2024-08-03',123.4),
("Rohan",'M',54,'2024-08-03',123.4);

select * from information_schema.columns where table_name = 'student_details'; -- jab value insert kar rahe hai to kis oridinal position me rahe isiliye oridinal poistion jaanne le use karege 



