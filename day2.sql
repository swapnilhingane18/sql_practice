CREATE DATABASE day2;
USE day2;

CREATE TABLE student(
 stid int primary key,
 sname varchar(50),
 sage int
 );
 
INSERT INTO student VALUES(101,"MEENA",25);
 
select * from student;

CREATE DATABASE XYZ;
USE XYZ;

DROP TABLE employee;

CREATE TABLE employee(
 id INT PRIMARY KEY,
 name VARCHAR(50),
  salary BIGINT
);
INSERT INTO employee
(id,name,salary)
VALUES(101,"Adam",25000),
(102,"bob",30000),
(103,"casey",40000);

SELECT * FROM employee;
