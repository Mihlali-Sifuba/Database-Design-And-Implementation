CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` varchar(255) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
