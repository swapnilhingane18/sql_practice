CREATE DATABASE me;
USE me;

CREATE TABLE STUDENT
(
    STUDENT_ID INT PRIMARY KEY,
    STUDENT_NAME VARCHAR(30),
    GENDER VARCHAR(10),
    DEPARTMENT VARCHAR(20),
    YEAR_OF_STUDY INT,
    MARKS INT,
    CITY VARCHAR(20),
    AGE INT
);
INSERT INTO STUDENT VALUES
(101, 'Amit', 'Male', 'Computer', 1, 85, 'Pune', 18);

INSERT INTO STUDENT VALUES
(102, 'Sneha', 'Female', 'IT', 2, 92, 'Mumbai', 19);

INSERT INTO STUDENT VALUES
(103, 'Rahul', 'Male', 'Mechanical', 3, 68, 'Nashik', 21);

INSERT INTO STUDENT VALUES
(104, 'Priya', 'Female', 'Computer', 4, 95, 'Pune', 22);

INSERT INTO STUDENT VALUES
(105, 'Rohit', 'Male', 'Civil', 2, 74, 'Nagpur', 20);

INSERT INTO STUDENT VALUES
(106, 'Anjali', 'Female', 'IT', 1, 88, 'Mumbai', 18);

INSERT INTO STUDENT VALUES
(107, 'Karan', 'Male', 'Computer', 3, 79, 'Pune', 21);

INSERT INTO STUDENT VALUES
(108, 'Neha', 'Female', 'Electrical', 4, 81, 'Aurangabad', 22);

INSERT INTO STUDENT VALUES
(109, 'Vikas', 'Male', 'Mechanical', 2, 65, 'Nashik', 20);

INSERT INTO STUDENT VALUES
(110, 'Pooja', 'Female', 'Computer', 1, 91, 'Mumbai', 18);

-- 1. Display all student details.
SELECT * FROM STUDENT;

-- 2. Display only STUDENT_NAME and MARKS.
SELECT STUDENT_NAME, MARKS
FROM STUDENT;

-- 3. Display STUDENT_NAME, CITY and AGE.
SELECT STUDENT_NAME, CITY, AGE
FROM STUDENT;

-- 4. Display all students from the Computer department.
SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'Computer';

-- 5. Display students whose marks are greater than 80.
SELECT *
FROM STUDENT
WHERE MARKS > 80;

-- 6. Display students whose marks are less than 70.
SELECT *
FROM STUDENT
WHERE MARKS < 70;

-- 7. Display students from Pune.
SELECT *
FROM STUDENT
WHERE CITY = 'Pune';

-- 8. Display female students.
SELECT *
FROM STUDENT
WHERE GENDER = 'Female';

-- 9. Display male students from Mumbai.
SELECT *
FROM STUDENT
WHERE GENDER = 'Male'
AND CITY = 'Mumbai';

-- 10. Display students whose age is greater than 20.
SELECT *
FROM STUDENT
WHERE AGE > 20;

-- 11. Display students studying in Year 2.
SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY = 2;

-- 12. Display students whose marks are exactly 91.
SELECT *
FROM STUDENT
WHERE MARKS = 91;

-- 13. Display students whose city is Nashik.
SELECT *
FROM STUDENT
WHERE CITY = 'Nashik';

-- 14. Display students whose department is IT.
SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'IT';

-- 15. Display students whose marks are not equal to 85.
SELECT *
FROM STUDENT
WHERE MARKS != 85;


-- 1. Display all students with MARKS + 5 as BONUS_MARKS.
SELECT *, MARKS + 5 AS BONUS_MARKS
FROM STUDENT;

-- 2. Display MARKS * 2 as DOUBLE_MARKS.
SELECT *, MARKS * 2 AS DOUBLE_MARKS
FROM STUDENT;

-- 3. Display AGE + 1 as NEXT_YEAR_AGE.
SELECT *, AGE + 1 AS NEXT_YEAR_AGE
FROM STUDENT;

-- 4. Display MARKS / 10 as MARKS_RATIO.
SELECT *, MARKS / 10 AS MARKS_RATIO
FROM STUDENT;

-- 5. Display MARKS - 10 as AFTER_DEDUCTION.
SELECT *, MARKS - 10 AS AFTER_DEDUCTION
FROM STUDENT;

SHOW TABLES;

-- Write a query to display distinct DEPARTMENT and CITY.

SELECT DISTINCT DEPARTMENT, CITY
FROM STUDENT;


-- Write a query to display distinct CITY and GENDER.

SELECT DISTINCT CITY, GENDER
FROM STUDENT;


-- Write a query to display distinct YEAR_OF_STUDY and DEPARTMENT.

SELECT DISTINCT YEAR_OF_STUDY, DEPARTMENT
FROM STUDENT;


-- Write a query to display distinct GENDER and YEAR_OF_STUDY.

SELECT DISTINCT GENDER, YEAR_OF_STUDY
FROM STUDENT;


-- Write a query to display distinct DEPARTMENT and YEAR_OF_STUDY.

SELECT DISTINCT DEPARTMENT, YEAR_OF_STUDY
FROM STUDENT;