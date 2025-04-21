show databases;
use org123;

create table Student(
sno int primary key,
sname varchar(20),
age int
);

insert into Student(sno,sname,age)
values (1,'Ankit',17),
(2,'Ramya',18),
(3,'Ram',16);

create table Course(
cno int primary key,
cname varchar(20)
);

select from Course;
insert into Course(cno,cname)
values(101,'c'),
(102,'c++'),
(103,'DBMS');

create table Enroll(
sno int,
cno int,
jdate date,
primary key (sno,cno),
foreign key(cno)
	references Course(cno)
	on delete cascade
);

insert into Enroll (sno,cno,jdate)
value (2,105,"2022/05/05");

select * from enroll;
desc enroll;