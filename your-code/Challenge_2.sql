USE world;
 CREATE TABLE `cars` (
 `Cars_id` int(11) NOT NULL AUTO_INCREMENT,
 `VIN` varchar(255) DEFAULT NULL,
 `manufacturer` varchar(255) DEFAULT NULL,
 `model` varchar(255),
 `year` int(255),
 PRIMARY KEY (`Cars_id`)
 );
  CREATE TABLE `customers` (
 `Customers_id` int(11) NOT NULL AUTO_INCREMENT,
 `customer_ID` int(11) NOT NULL,
 `name` varchar(255) DEFAULT NULL,
 `phone` int(255) DEFAULT NULL,
 `adress` varchar(255),
 `city` varchar(255),
 `state` varchar(255),
 `zip` int(255),
 PRIMARY KEY (`Customers_id`)
 );
   CREATE TABLE `invoices` (
 `Invoices_id` int(11) NOT NULL AUTO_INCREMENT,
 `inocoice_ID` int(11) NOT NULL,
 `VIN` varchar(255) DEFAULT NULL,
 `date` int(255) DEFAULT NULL,
 `Staff_ID` int(255),
 `customer_ID` varchar(255),
 PRIMARY KEY (`Invoices_id`)
 );
    CREATE TABLE `salespersons` (
 `Salespersons_id` int(11) NOT NULL AUTO_INCREMENT,
 `staff_ID` int(11) NOT NULL,
 `name_staff` varchar(255) DEFAULT NULL,
 `store` varchar(255),
 PRIMARY KEY (`Salespersons_id`)
 );
 SHOW TABLES;
 DESCRIBE lab_mysql;