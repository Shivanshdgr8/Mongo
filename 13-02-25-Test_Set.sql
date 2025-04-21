CREATE DATABASE ORG;
show databases;
USE ORG;
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);
show tables;

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
show tables;

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');
 
 
 -- Q1 Solution 
 
SELECT * FROM Worker 
ORDER BY FIRST_NAME ASC;
 
  -- Q2 Solution 
  
SELECT * FROM Worker 
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;
 
   -- Q3 Solution 
   
SELECT * FROM Worker 
WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');

   -- Q4 Solution 
   
SELECT * FROM Worker 
WHERE FIRST_NAME LIKE '_____h';

-- Q5 Solution

SELECT COUNT(*) AS Admin_Employee_Count 
FROM Worker WHERE DEPARTMENT = 'Admin';

-- Q6 Solution

SELECT FIRST_NAME, LAST_NAME 
FROM Worker
WHERE SALARY BETWEEN 50000 AND 100000;

-- Q7 Solution

SELECT DEPARTMENT, COUNT(*) AS Worker_Count 
FROM Worker 
GROUP BY DEPARTMENT 
ORDER BY Worker_Count DESC;

-- Q8 Solution

SELECT DISTINCT SALARY 
FROM Worker W1 
WHERE 4 = (SELECT COUNT(DISTINCT SALARY) 
FROM Worker W2 
WHERE W2.SALARY > W1.SALARY);

-- Q9 Solution

SELECT W1.FIRST_NAME, W1.LAST_NAME, W1.SALARY 
FROM Worker W1 
WHERE EXISTS (
    SELECT 1 FROM Worker W2 
    WHERE W1.SALARY = W2.SALARY AND W1.WORKER_ID <> W2.WORKER_ID
)
ORDER BY W1.SALARY;

-- Q10 Solution

SELECT DEPARTMENT, COUNT(*) AS Worker_Count 
FROM Worker 
GROUP BY DEPARTMENT 
HAVING COUNT(*) < 3;
