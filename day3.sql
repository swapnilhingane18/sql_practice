CREATE database mp;
use mp;
CREATE TABLE emp(
id int,
salary int DEFAULT 2500);

INSERT INTO emp(id) VALUES (10);
SELECT * FROM emp;
 
CREATE TABLE city (
id INT,
cname VARCHAR(50),
age INT,
CONSTRAINT age_check CHECK (age>=18 AND cname="delhi")
);

INSERT INTO city (id,cname,age)
VALUES(1,"delhi",19),
(3,"DELHI",20),
(4,"delhi",22);
SELECT * FROM CITY;
