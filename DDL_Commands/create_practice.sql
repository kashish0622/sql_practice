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


