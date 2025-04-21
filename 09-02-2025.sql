CREATE TABLE Persons{
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int,
  CHECK (salary>=200000 and salar <= 400000)
);

ALTER TABLE Persons
ADD CHECK (Age >= 18);

CREATE TABLE Persons1 (
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int,
  City varchar(255) DEFAULT 'Coimbatore'
);

desc persons1;

use org123;
show table from org123;

select * from worker;

SELECT * FROM worker WHERE first_name LIKE '_i_a%';

SELECT * FROM worker WHERE salary LIKE '8%';

create view admin_more_salary as
select * from worker 
where departe = 'Admin' and salary >= 100000 order by salary desc;


select * from admin_more_salary;
