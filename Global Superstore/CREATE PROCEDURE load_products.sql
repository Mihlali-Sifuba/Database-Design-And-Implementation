USE `global superstore`;

DELIMITER $$
USE `global superstore`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE IF NOT EXISTS `load_products` ()
BEGIN
	INSERT IGNORE INTO products
	SELECT DISTINCT `Product ID`, `Product Name`, `Segment`, `Sub-Category`
	FROM raw_data;
END$$

DELIMITER ;