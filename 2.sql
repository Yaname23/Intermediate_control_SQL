DROP PROCEDURE if EXISTS numbers;
DELIMITER //
CREATE PROCEDURE numbers()
BEGIN
    DECLARE num INT default 0;
    DROP TABLE if EXISTS nums;
    CREATE TABLE nums (n INT);
    WHILE num <= 10 DO
    SET num = num + 2;
    INSERT INTO nums VALUES(num);
    END WHILE;
SELECT*FROM nums;	
END //
DELIMITER ;

CALL numbers();