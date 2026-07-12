CREATE database mp;
use mp;
CREATE TABLE emp(
id int,
salary int DEFAULT 2500);

INSERT INTO emp(id) VALUES (10);
SELECT * FROM emp;
