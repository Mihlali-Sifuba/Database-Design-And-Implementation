SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile=TRUE;
LOAD DATA LOCAL INFILE "C:\\Users\\Hp\\Desktop\\Open Datasets\\Database-Design-And-Implementation\\Global Superstore\\wikipedia-iso-country-codes.csv" 
IGNORE INTO TABLE countries_iso_codes FIELDS TERMINATED BY "," ENCLOSED BY '"'LINES TERMINATED BY "\n" IGNORE 1 ROWS;