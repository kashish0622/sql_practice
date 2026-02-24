use studentinfo;
SELECT * FROM student;

DELIMITER //
CREATE PROCEDURE information()
BEGIN
SELECT * FROM student;
END //
DELIMITER ; 
DROP PROCEDURE information;

use studentinfo;
SELECT * FROM student;

DELIMITER //
CREATE PROCEDURE information(
IN s_ID INT,
IN s_name VARCHAR(50)) 
BEGIN
SELECT * FROM student
WHERE roll_no = s_ID
AND name = p_name;
END //
DELIMITER ; 
DROP PROCEDURE information;