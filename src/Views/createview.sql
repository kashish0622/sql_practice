CREATE DATABASE company_database;
USE company_database;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT,
    salary INT
);

INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');

INSERT INTO employees VALUES
(101, 'Rahul', 2, 60000),
(102, 'Priya', 1, 40000),
(103, 'Amit', 2, 80000),
(104, 'Sneha', 3, 75000),
(105, 'Karan', 4, 50000);

CREATE VIEW view1 as 
SELECT emp_name, emp_id FROM employees;

SELECT * FROM view1