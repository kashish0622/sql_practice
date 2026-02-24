use studentinfo;
SELECT * FROM student;

DELIMITER //
CREATE PROCEDURE information()
BEGIN
SELECT * FROM student;
END //
DELIMITER ; 

ALTER PROCEDURE information
comment 'cannot alter bcoz mysql doesnt allow that';


