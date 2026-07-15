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
