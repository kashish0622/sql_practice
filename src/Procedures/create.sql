use studentinfo;
SELECT * FROM student;

DELIMITER //
CREATE PROCEDURE information()
BEGIN
SELECT * FROM student;
END //
DELIMITER ; 

