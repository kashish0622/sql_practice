CREATE TABLE departments(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

INSERT INTO departments (
dept_id, dept_name)
VALUES ('111', 'CSE'),
('112', 'AI-ML'),
('113', 'DATA-SCIENCE'),
('114', 'IOT');

SET SQL_SAFE_UPDATES = 0;

UPDATE departments
SET dept_name = 'CSE-plain'
WHERE dept_id = '111';
UPDATE departments
SET dept_id = 111
WHERE dept_id = 101;

DELETE FROM departments
WHERE dept_name = 'IOT';

DELETE FROM departments
WHERE dept_id = 111;

SELECT * FROM departments;