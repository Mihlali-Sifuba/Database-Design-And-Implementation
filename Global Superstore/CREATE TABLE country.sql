CREATE TABLE IF NOT EXISTS `country` (
  `country_code` varchar(3) NOT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
