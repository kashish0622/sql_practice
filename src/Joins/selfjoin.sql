CREATE DATABASE JoinPractice;
USE JoinPractice;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id INT
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    course_fee INT
);

INSERT INTO students VALUES
(101, 'Rahul', 1),
(102, 'Priya', 2),
(103, 'Amit', 3),
(104, 'Sneha', 2),
(105, 'Karan', 5);

INSERT INTO courses VALUES
(1, 'Data Analytics', 50000),
(2, 'Web Development', 40000),
(3, 'Cyber Security', 60000),
(4, 'AI & ML', 70000);
SELECT * FROM students;
SELECT * FROM courses;

SELECT a.student_id, a.course_id, a.student_name,  b.student_id, b.student_name, b.course_id
FROM students AS a
JOIN students AS b
ON a.student_id = b.student_id
AND a.course_id <> b.course_id;

SHOW Tables;