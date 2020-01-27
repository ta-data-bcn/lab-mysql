Cars
CREATE TABLE `Cars` (`numeric_id` INT(5) AUTO_INCREMENT, PRIMARY KEY (ID), 
	`vehicle_id` VARCHAR(20), `manufacturer`VARCHAR(20), 
	`model`VARCHAR(20), `year`YEAR, `colour`VARCHAR(15));

Customers
CREATE TABLE `Customers` (`numeric_id` INT(5) AUTO_INCREMENT, 
	`customer_id` INT(5), `customer_name`VARCHAR(40), 
	`phone_number`VARCHAR(20), `email` VARCHAR(60), 
	`address` VARCHAR(40), `city`VARCHAR(20), `country`VARCHAR(25),
	`zip_code` VARCHAR(5));

Invoices
CREATE TABLE `Customers` (`numeric_id` INT(5) AUTO_INCREMENT, 
	`invoice_number` VARCHAR(20), `date` DATE, `car`VARCHAR(10),
	`customer` VARCHAR(10), `salesperson` VARCHAR(10));

Salespersons
CREATE TABLE `Customers` (`numeric_id` INT(5) AUTO_INCREMENT, 
	`staff_id` INT(3), `staff_name` VARCHAR(40), `store` VARCHAR(30));