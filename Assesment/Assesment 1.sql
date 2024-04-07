
USE Employee;

select * from Worker;

-- 1. Write an SQL query to print all Worker details from the Worker table..
SELECT *FROM Worker
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
SELECT *FROM Worker
WHERE FIRST_NAME IN ('Vipul','Satish');

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’.
SELECT *FROM Worker
WHERE FIRST_NAME LIKE 'h';

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1
SELECT *FROM Worker
WHERE SALARY BETWEEN 100000 AND 500000;

-- 5.Write an SQL query to fetch duplicate records having matching data in some fields of a table.
SELECT * FROM Worker
GROUP BY FIRST_NAME, LAST_NAME, DEPARTMENT
HAVING COUNT(*) > 1;


-- 6. Write an SQL query to show the top 6 records of a table.
SELECT * FROM Worker
ORDER BY WORKER_ID ASC
LIMIT 6;

-- 7. Write an SQL query to fetch the departments that have less than five people in them.
SELECT DEPARTMENT FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(*) < 5;

-- 8. Write an SQL query to show all departments along with the number of people in there.
SELECT DEPARTMENT, COUNT(*) AS EmployeeCount
FROM Worker
GROUP BY DEPARTMENT;

-- 9. Write an SQL query to print the name of employees having the highest salary..
SELECT FIRST_NAME, LAST_NAME
FROM Worker
WHERE SALARY = (SELECT MAX(SALARY) FROM Worker);


CREATE DATABASE if not exists School;
USE School;

CREATE TABLE Student (
  StdID INT PRIMARY KEY,
  StdName VARCHAR(255) NOT NULL,
  Sex VARCHAR(10) NOT NULL,
  Percentage FLOAT,
  Class VARCHAR(10) NOT NULL,
  Sec VARCHAR(10) NOT NULL,
  Stream VARCHAR(20) NOT NULL,
  DOB DATE
);

INSERT INTO Student (StdID, StdName, Sex, Percentage, Class, Sec, Stream, DOB)
VALUES (1001, 'Surekha Joshi', 'Female', 82, '12 A', 'Sec', 'Science', '1998-03-08'),
       (1002, 'MAAHI AGARWAL', 'Female', 56, '11 C', 'Sec', 'Commerce', '2008-11-23'),
       (1003, 'Sanam Verma', 'Male', 59, '11 C', 'Sec', 'Commerce', '2006-06-29'),
       (1004, 'Ronit Kumar', 'Male', 63, '11 C', 'Sec', 'Commerce', '1997-11-05'),
       (1005, 'Dipesh Pulkit', 'Male', 78, '11 B', 'Sec', 'Science', '2003-09-14'),
       (1006, 'JAHANVI Puri', 'Female', 60, '11 B', 'Sec', 'Commerce', '2008-11-07'),
       (1007, 'Sanam Kumar', 'Male', 23, '12 F', 'Sec', 'Commerce', '1998-03-08'),
       (1008, 'SAHIL SARAS', 'Male', 56, '11 C', 'Sec', 'Commerce', '2008-11-07'),
       (1009, 'AKSHRA AGARWAL', 'Female', 72, '12 B', 'Sec', 'Commerce', '1996-10-01'),
       (1010, 'STUTI MISHRA', 'Female', 39, '11 F', 'Sec', 'Science', '2008-11-23'),
       (1011, 'HARSH AGARWAL', 'Male', 42, '11 C', 'Sec', 'Science', '1998-03-08'),
       (1012, 'NIKUNJ AGARWAL', 'Male', 49, '12 C', 'Sec', 'Commerce', '1998-06-28'),
       (1013, 'AKRITI SAXENA', 'Female', 89, '12 A', 'Sec', 'Science', '2008-11-23'),
       (1014, 'TANI RASTOGI', 'Female', 82, '12 A', 'Sec', 'Science', '2008-11-23');
       
       use students
       
-- 1. To display all the records form STUDENT table.
SELECT*FROM Student;

-- 2.To display any name and date of birth from the table STUDENT.
SELECT StdName, DOB FROM student;
    
-- 3.To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM student 
WHERE percentage >= 80;

-- 4. To display student name, stream and percentage where percentage of student is more than 80 .
SELECT StdName, Stream, Percentage FROM Student 
WHERE Percentage > 80;

	
-- 5. To display all records of science students whose percentage is more than 75 form student table.
SELECT * FROM Student 
WHERE Stream = 'Science' AND Percentage > 75;

       





