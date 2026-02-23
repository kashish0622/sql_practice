CREATE DATABASE campus_management_system;
USE campus_management_system;
CREATE TABLE teachers(
teacher_id INT PRIMARY KEY,
qualification VARCHAR(100),
designation VARCHAR(50),
subject_specialization VARCHAR(50)
);

CREATE TABLE student_info(
stud_id INT PRIMARY KEY,
name VARCHAR(100),
age INT NOT NULL,
marks INT,
teacher_id INT,
FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
); 

INSERT INTO teachers 
(teacher_id, qualification, designation, subject_specialization)
VALUES
(1, 'B.COM', 'PRINCIPAL', 'NA'),
(2, 'B.SC', 'TEACHER', 'MATHS'),
(3, 'B.TECH', 'TEACHER', 'ENG'),
(4, 'B.A', 'TEACHER', 'SCIENCE'),
(5, 'M.A', 'TEACHER', 'ENG'),
(6, 'BCA', 'TEACHER', 'MATHS AND SCIENCE');

INSERT INTO student_info VALUES
(101, 'Anuj', 18, 90, 3),
(102, 'Bushra', 17, 80, 5),
(103, 'Divij', 16, 76, 2),
(104, 'Chetan', 12, 40, 6),
(105, 'Aayush', 19, 67, 4);

SET autocommit = 0;
START TRANSACTION;

UPDATE student_info SET marks = 86 WHERE stud_id = 101;
SAVEPOINT point1;

UPDATE student_info SET marks = 72 WHERE stud_id = 102;

ROLLBACK TO point1;
COMMIT;

SELECT * FROM student_info;


