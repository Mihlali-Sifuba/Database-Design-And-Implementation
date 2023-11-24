CREATE TABLE IF NOT EXISTS `global superstore`.`customer` (
  `customer_id` VARCHAR(255) NOT NULL,
  `customer_name` VARCHAR(255) NULL,
  `country_id` CHAR(3) NULL,
  `city` VARCHAR(255) NULL,
  PRIMARY KEY (`customer_id`));