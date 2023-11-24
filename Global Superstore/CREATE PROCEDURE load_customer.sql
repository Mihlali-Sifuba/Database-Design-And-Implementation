USE `global superstore`;

DELIMITER $$
USE `global superstore`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE IF NOT EXISTS `load_customer` ()
BEGIN
	INSERT IGNORE INTO customer
	SELECT DISTINCT `Customer ID`, `Customer Name`
	FROM raw_data;
END$$

DELIMITER ;