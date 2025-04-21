create database practicel;

 use practice1;
 create table Mech(s_id int,s_name varchar(25));

 START TRANSACTION;
 insert into Mech values (101, 'jayanth');
 SAVEPOINT A;
 update mech set s_id=102 where s_id=101;

 SAVEPOINT B; 
 insert into Mech values (103, 'Karthick');
 select * from mech;
 savepoint c;
 select*from mech;
 rollback to B;
 select * from mech;
 commit;