CREATE TABLE IF NOT EXISTS `products` (
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_segment` enum('Consumer','Home Office','Corporate') DEFAULT NULL,
  `product_subcategories` enum('Paper','Art','Storage','Appliances','Supplies','Envelopes','Fasteners','Labels','Binders','Accessories','Phones','Copiers','Machines','Tables','Bookcases','Chairs','Furnishings') DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
