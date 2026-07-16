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


SELECT * FROM student;

ALTER TABLE STUDENT
ADD COLUMN ADMDATE DATE;

UPDATE STUDENT SET ADMDATE='2024-06-01' WHERE STUDENT_ID=101;
UPDATE STUDENT SET ADMDATE='2024-06-05' WHERE STUDENT_ID=102;
UPDATE STUDENT SET ADMDATE='2024-06-10' WHERE STUDENT_ID=103;
UPDATE STUDENT SET ADMDATE='2024-06-15' WHERE STUDENT_ID=104;
UPDATE STUDENT SET ADMDATE='2024-06-20' WHERE STUDENT_ID=105;
UPDATE STUDENT SET ADMDATE='2024-06-25' WHERE STUDENT_ID=106;
UPDATE STUDENT SET ADMDATE='2024-07-01' WHERE STUDENT_ID=107;
UPDATE STUDENT SET ADMDATE='2024-07-05' WHERE STUDENT_ID=108;
UPDATE STUDENT SET ADMDATE='2024-07-10' WHERE STUDENT_ID=109;
UPDATE STUDENT SET ADMDATE='2024-07-15' WHERE STUDENT_ID=110;


-- 31. Write a query to display STUDENT_NAME and ADMISSION_DATE.

SELECT STUDENT_NAME,
       ADMDATE AS ADMISSION_DATE
FROM STUDENT;


-- 32. Write a query to display ADMISSION_DATE and ADMISSION_DATE + 30 as REVIEW_DATE.

SELECT ADMDATE AS ADMISSION_DATE,
       DATE_ADD(ADMDATE, INTERVAL 30 DAY) AS REVIEW_DATE
FROM STUDENT;


-- 33. Write a query to display STUDENT_ID and ADMISSION_DATE + 365.

SELECT STUDENT_ID,
       DATE_ADD(ADMDATE, INTERVAL 365 DAY) AS ADMISSION_DATE_PLUS_365
FROM STUDENT;


-- 34. Write a query to display STUDENT_NAME and ADMISSION_DATE.

SELECT STUDENT_NAME,
       ADMDATE AS ADMISSION_DATE
FROM STUDENT;


-- 35. Write a query to display STUDENT_ID and ADMISSION_DATE + 1 as NEXT_DAY.

SELECT STUDENT_ID,
       DATE_ADD(ADMDATE, INTERVAL 1 DAY) AS NEXT_DAY
FROM STUDENT;


-- 36. Display all students who belong to the COMPUTER department and are in year 1.

SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'Computer' AND YEAR_OF_STUDY = 1;


-- 37. Display students whose gender is MALE and city is MUMBAI.

SELECT *
FROM STUDENT
WHERE GENDER = 'Male' AND CITY = 'Mumbai';


-- 38. Display students who are in year 3 and department is IT.

SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY = 3 AND DEPARTMENT = 'IT';


-- 39. Display students who scored more than 70 and are from CHENNAI.

SELECT *
FROM STUDENT
WHERE MARKS > 70 AND CITY = 'Chennai';


-- 40. Display students whose department is COMPUTER and gender is FEMALE.

SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'Computer' AND GENDER = 'Female';


-- 41. Display students who are in year 2 and city is DELHI.

SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY = 2 AND CITY = 'Delhi';


-- 42. Display students who scored less than 40 and are in year 1.

SELECT *
FROM STUDENT
WHERE MARKS < 40 AND YEAR_OF_STUDY = 1;


-- 43. Display students whose gender is FEMALE and department is ECE.

SELECT *
FROM STUDENT
WHERE GENDER = 'Female' AND DEPARTMENT = 'ECE';


-- 44. Display students who are from HYDERABAD and scored more than 60.

SELECT *
FROM STUDENT
WHERE CITY = 'Hyderabad' AND MARKS > 60;


-- 45. Display students who are in year 4 and department is MECH.

SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY = 4 AND DEPARTMENT = 'Mech';


-- 46. Display students who belong to IT or COMPUTER department.

SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'IT' OR DEPARTMENT = 'Computer';


-- 47. Display students who are from DELHI or MUMBAI.

SELECT *
FROM STUDENT
WHERE CITY = 'Delhi' OR CITY = 'Mumbai';


-- 48. Display students who are in year 1 or year 2.

SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY = 1 OR YEAR_OF_STUDY = 2;


-- 49. Display students whose gender is MALE or department is CIVIL.

SELECT *
FROM STUDENT
WHERE GENDER = 'Male' OR DEPARTMENT = 'Civil';


-- 50. Display students who scored more than 80 or are in year 4.

SELECT *
FROM STUDENT
WHERE MARKS > 80 OR YEAR_OF_STUDY = 4;