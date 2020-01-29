-- Creating the SQL Table

USE lab_mysql;
CREATE TABLE `cars`(
`ID`INT AUTO_INCREMENT, 
PRIMARY KEY (`ID`),
`VIN` VARCHAR(20),
`manufacturer`VARCHAR(20),
`model`VARCHAR (45),
`year` INT,
`color`VARCHAR(20));

DROP TABLE `cars`;

CREATE TABLE `Cars`(
`ID`INT AUTO_INCREMENT, 
PRIMARY KEY (`ID`),
`VIN` VARCHAR(20),
`manufacturer`VARCHAR(20),
`model`VARCHAR (45),
`year` INT,
`color`VARCHAR(20));



CREATE TABLE `Customers`(
`ID`INT AUTO_INCREMENT, 
PRIMARY KEY(`ID`),
`customer_id`VARCHAR(6),
`name`VARCHAR(45),
`phone`VARCHAR(19),
`email`VARCHAR(55),
`address`VARCHAR(70),
`city`VARCHAR(25),
`state/province`VARCHAR(25),
`country`VARCHAR (20),
`postal`VARCHAR(6));

DROP TABLE `Customers`;

CREATE TABLE `Customers`(
`ID`INT AUTO_INCREMENT, 
PRIMARY KEY(`ID`),
`customer_id`VARCHAR(6),
`name`VARCHAR(45),
`phone`VARCHAR(19),
`email`VARCHAR(55),
`address`VARCHAR(70),
`city`VARCHAR(25),
`state/province`VARCHAR(25),
`country`VARCHAR (20),
`postal`VARCHAR(6));


CREATE TABLE `Salesperson`(
`ID`INT AUTO_INCREMENT, 
PRIMARY KEY(`ID`),
`staff_id`INT(6),
`name`VARCHAR(45),
`store`VARCHAR(40)
);

DROP TABLE `Salesperson`;

CREATE TABLE `Salesperson`(
`ID`INT AUTO_INCREMENT, 
PRIMARY KEY(`ID`),
`staff_id`INT(6),
`name`VARCHAR(45),
`store`VARCHAR(40)
);


CREATE TABLE `Invoices`(
`ID`INT AUTO_INCREMENT, 
PRIMARY KEY(`ID`),
`invoice_number`INT(10),
`date`VARCHAR(12),
`car`INT,
`customer` INT,
`sales_person`INT
);

DROP TABLE `Invoices`;

CREATE TABLE `Invoices`(
`ID`INT AUTO_INCREMENT, 
PRIMARY KEY(`ID`),
`invoice_number`INT(10),
`date`VARCHAR(12),
`car`INT,
`customer` INT,
`sales_person`INT
);





