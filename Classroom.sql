create database college;

USE COLLEGE;

CREATE TABLE student (
 id INT PRIMARY KEY,
 name VARCHAR(50),
 age INT NOT NULL
);

INSERT INTO student  VALUES(1,"Swapnil",23);
INSERT INTO student VALUES (2,"meghraj",22);

SELECT * FROM STUDENT;

CREATE DATABASE IF NOT EXISTS college;
