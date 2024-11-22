USE classicmodels;



DELIMITER //

DROP PROCEDURE IF EXISTS findAllCustomers //

CREATE PROCEDURE findAllCustomers()

BEGIN

  SELECT * FROM customers WHERE customerNumber = 175;

END //

DELIMITER ;


CALL findAllCustomers();



delimiter //

DROP PROCEDURE IF EXISTS getCusByID //

CREATE PROCEDURE getCusByID (IN cusNum INT)

BEGIN

SELECT * FROM customers WHERE customerNumber = cusNum;

END //

delimiter ;


CALL getCusByID(175);