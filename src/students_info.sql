CREATE DATABASE studentinfo;

USE studentinfo;

CREATE TABLE Student (
  roll_no INT NOT NULL,
  name VARCHAR(50),
  marks INT
);

INSERT INTO Student (roll_no, name, marks)
VALUES
(101, 'Anil', 78),
(102, 'Bhumika', 93),
(103, 'Chetan', 85),
(104, 'Dhruv', 96),
(105, 'Emanuel', 12),
(106, 'Farah', 82);

SELECT * FROM Student;
