CREATE DATABASE company_db;
USE company_db;
CREATE TABLE departments(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
age INT CHECK(age > 18),
salary INT,
dept_id INT,
joining_date DATE,
FOREIGN KEY (dept_id) references departments(dept_id)
);

CREATE INDEX idx_joining_date
ON employees(joining_date);

ALTER TABLE employees
ADD gender VARCHAR(10);
ALTER TABLE departments
MODIFY dept_name VARCHAR(30);
ALTER TABLE employees
DROP COLUMN gender;
ALTER TABLE employees
MODIFY salary float8;

TRUNCATE TABLE employees;
