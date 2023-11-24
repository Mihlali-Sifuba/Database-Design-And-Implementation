USE `global superstore`;

DELIMITER $$
USE `global superstore`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE IF NOT EXISTS `load_orders` ()
BEGIN
	INSERT IGNORE INTO orders
	SELECT 
		a.`Order ID`, a.`Customer ID`, a.`Order Priority`, a.`Product ID`, a.`Quantity`, a.`Order Date`, a.`Ship Date`, a.`weeknum`, a.`Ship Mode`
	FROM 
		raw_data AS a
	INNER JOIN 
		customer AS b ON a.`Customer ID` = b.customer_id
	INNER JOIN 
		products AS c ON c.product_id = a.`Product ID` AND c.product_name = a.`Product Name`;
END$$

DELIMITER ;

