USE lab_mysql;


CREATE TABLE `Customers`(
`ID` INT(5) AUTO_INCREMENT,
PRIMARY KEY (ID),
`customer_ID` INT(6),
`name` VARCHAR(50),
`phone`VARCHAR(20),
`email`VARCHAR(50),
`address` VARCHAR(50),
`city`VARCHAR(50),
`state`VARCHAR(50),
`zip` INT(5),
`country`VARCHAR(50));

CREATE TABLE `Salespersons`(
`ID` INT(5) AUTO_INCREMENT,
PRIMARY KEY (ID),
`salesperson_ID` INT(6),
`name` VARCHAR(50),
`store`VARCHAR(50));
               
CREATE TABLE `Cars`(
`ID` INT(5) AUTO_INCREMENT,
PRIMARY KEY (ID),
`vin` VARCHAR(20),
`manufacturer` VARCHAR(50),
`model`VARCHAR(50),
`year`INT(4),
`color`VARCHAR(50));


CREATE TABLE `Invoices`(
`ID` INT(5) AUTO_INCREMENT,
PRIMARY KEY (ID),
`invoice_number` INT(10),
`date` DATE);
               
               
Create References
               
mysql> ALTER TABLE `Invoices`ADD `car` INT(3);
mysql> ALTER TABLE `Invoices` ADD FOREIGN KEY (`car`) REFERENCES Cars(ID);      
mysql> ALTER TABLE `Invoices`ADD `customer` INT(3);
mysql> ALTER TABLE `Invoices` ADD FOREIGN KEY (`customer`) REFERENCES Customers(ID);
mysql> ALTER TABLE `Invoices`ADD `salesperson` INT(3);
mysql> ALTER TABLE `Invoices` ADD FOREIGN KEY (`salesperson`) REFERENCES Salespersons(ID);