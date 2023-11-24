CREATE TABLE IF NOT EXISTS `country_info` (
  `country_code` varchar(3) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  UNIQUE KEY `unq_city` (`country_code`,`state`,`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;