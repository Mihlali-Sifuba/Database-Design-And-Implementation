USE `global superstore`;

DELIMITER $$
USE `global superstore`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE IF NOT EXISTS `load_country` ()
BEGIN
	INSERT IGNORE INTO country
	SELECT DISTINCT a.`Alpha-3 code`, b.Country
	FROM countries_iso_codes AS a
	INNER JOIN raw_data AS b
	ON b.Country = a.`Country Name`;
END$$

DELIMITER ;
