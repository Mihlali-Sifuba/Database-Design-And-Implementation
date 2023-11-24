USE `global superstore`;

DELIMITER $$
USE `global superstore`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE IF NOT EXISTS`load_sales` ()
BEGIN
INSERT IGNORE INTO sales
	SELECT a.`Order ID`, a.`Profit`, a.`Discount`, a.`Shipping Cost` 
	FROM
		raw_data AS a
	INNER JOIN
		orders AS b ON b.order_id = a.`Order ID` AND b.customer_id = a.`Customer ID`
	INNER JOIN 
		products AS c ON c.product_id = b.product_id AND c.product_name = a.`Product Name`;
END$$

DELIMITER ;

