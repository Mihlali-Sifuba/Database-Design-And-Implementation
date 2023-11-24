CREATE TABLE IF NOT EXISTS `countries_iso_codes` (
  `Country Name` varchar(255) DEFAULT NULL,
  `Alpha-2 code` varchar(2) DEFAULT NULL,
  `Alpha-3 code` varchar(3) DEFAULT NULL,
  `Numeric code` int DEFAULT NULL,
  `ISO 3166-2` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
