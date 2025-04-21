create database org123;

use org123;

create table category(
c_id int primary key,
c_name varchar(25) not null unique,
c_decrp varchar(250) not null
);


insert into category values (102, 'furnitures','it stores all set of wooden items');

select * from category;
desc category;

CREATE TABLE Products(
P_ID int primary key,
p_Name varchar(250) NOT NULL,
c_id int,
constraint c_id foreign key (c_id)
references category(c_id)
);

desc products;

drop table products;

insert into products values(904,'Wooden table',null);

select * from products;

select* from category;

delete from category where c_id = 101;

drop table category;



