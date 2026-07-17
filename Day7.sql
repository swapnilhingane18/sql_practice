/*
Question: Top Sales Employees

A company wants to reward employees from its Sales division
who have achieved excellent sales performance during the last quarter.

Write a SQL query to display the employee_ID and name of all employees who:

1. Work in the 'Sales' division.
2. Have made sales worth 100000 or more.

Tables:
1. employee_information
   - employee_ID
   - name
   - division

2. last_quarter_sales
   - employee_ID
   - sales

Expected Output:
employee_ID | name
------------------
103         | Amit
105         | Neha
*/

USE me;
CREATE TABLE employee_information (
    employee_ID INT PRIMARY KEY,
    name VARCHAR(50),
    division VARCHAR(20)
);

CREATE TABLE last_quarter_sales (
    employee_ID INT PRIMARY KEY,
    sales INT
);
INSERT INTO employee_information VALUES
(101,'Rahul','Sales'),
(102,'Priya','HR'),
(103,'Amit','Sales'),
(104,'Sneha','Tech'),
(105,'Neha','Sales');

INSERT INTO last_quarter_sales VALUES
(101,95000),
(102,120000),
(103,150000),
(104,110000),
(105,100000);

SELECT e.employee_ID, e.name
FROM employee_information e
JOIN last_quarter_sales s
ON e.employee_ID = s.employee_ID
WHERE e.division = 'Sales'
AND s.sales >= 100000;


/*
Question: Employee Performance Rewards

The management wants to identify employees who are eligible
for the "Star Performer Award".

Write a SQL query to display the following columns:

employee_ID,
name,
division,
salary,
rating,
bonus

The employee must satisfy ALL of the following conditions:

1. Work in either 'IT' or 'Sales' division.
2. Salary must be greater than or equal to 60000.
3. Performance rating must be greater than or equal to 4.
4. Last quarter bonus must be greater than or equal to 8000.

Tables:

employee_information
--------------------
employee_ID
name
division
salary

performance
-----------
employee_ID
rating

last_quarter_bonus
------------------
employee_ID
bonus

Expected Output:
employee_ID | name | division | salary | rating | bonus
--------------------------------------------------------
102         | Priya | IT      | 75000  | 5      | 10000
105         | Neha  | Sales   | 68000  | 4      | 8500
*/

CREATE TABLE employee_information (
    employee_ID INT PRIMARY KEY,
    name VARCHAR(50),
    division VARCHAR(20),
    salary INT
);

CREATE TABLE performance (
    employee_ID INT PRIMARY KEY,
    rating INT
);

CREATE TABLE last_quarter_bonus (
    employee_ID INT PRIMARY KEY,
    bonus INT
);