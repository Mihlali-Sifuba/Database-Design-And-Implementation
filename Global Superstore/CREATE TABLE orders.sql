CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `order_priority` enum('High','Medium','Critical','Low') DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `shipment_date` date DEFAULT NULL,
  `weeknum` varchar(45) DEFAULT NULL,
  `shipment_mode` enum('Second Class','Standard Class','Same Day','First Class') DEFAULT NULL,
  UNIQUE KEY `unq_order` (`order_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
