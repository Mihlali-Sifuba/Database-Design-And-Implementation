USE `global superstore`;

DELIMITER $$
USE `global superstore`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE IF NOT EXISTS `load_country_info` ()
BEGIN
	INSERT IGNORE INTO country_info 
	SELECT DISTINCT a.country_code, b.City, b.state
	FROM country AS a
	INNER JOIN raw_data AS b
	ON b.Country = a.country_name;
END$$

DELIMITER ;
