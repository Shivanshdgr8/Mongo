use org123;

create table student(
  s_id int primary key,
  s_name varchar(25) not null,
  s_department varchar(25) not null
  );

insert into student values (1001, "Shubham","CSE"),(1002,"Joy","CSE"),(1003,"Ujjwal","CSE");

select * from student;


create table VIT(
  s_id int primary key,
  s_cgpa varchar(5) not null
  );

insert into vit values (1001,'8.2'),(1003,'8.5'),(1007,'9.5');
select * from vit;

use org123;

select * from student cross join vit;

select * from student INNER JOIN vit where student.s_id = vit.s_id;


select * from student NATURAL JOIN vit where student.s_id = vit.s_id;

select * from student LEFT JOIN vit ON (student.s_id = vit.s_id);

select * from student RIGHT JOIN vit ON (student.s_id = vit.s_id);

select * from student full JOIN vit;

select * from student FULL OUTER JOIN vit ON (student.s_id = vit.s_id);


