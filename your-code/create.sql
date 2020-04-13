" CREATE DATABASE lab_mysql;"
USE lab_mysql;
show tables

DROP TABLE `Cars`
CREATE TABLE `Cars` ( `ID` INT(6) AUTO_INCREMENT, PRIMARY KEY (ID), `VIN` VARCHAR(20), `Manufacturer` VARCHAR(20), `Model` VARCHAR(30), `Year` INT(4), `Color` VARCHAR(20));

DESCRIBE CARS

CREATE TABLE `Customers` ( `ID` INT(6) AUTO_INCREMENT, PRIMARY KEY (ID), `Customer ID` INT(6), `Name` VARCHAR(16), `Phone` VARCHAR(16),	
`Email` VARCHAR(50), `Address` VARCHAR(50),	`City` VARCHAR(16), `State/Province` VARCHAR(20), `Country` VARCHAR(20), `Postal` VARCHAR(20))

SHOW TABLES

DESCRIBE customers

CREATE TABLE `Salesperson` ( `ID` INT(6) AUTO_INCREMENT, PRIMARY KEY (ID), `Staff ID` INT(10), `Name` VARCHAR(20), `Store` VARCHAR(16))


DROP TABLE `Invoices`
CREATE TABLE `Invoices` ( `ID` INT(6) AUTO_INCREMENT, PRIMARY KEY (ID), `Invoice Number` VARCHAR(10), `Date` VARCHAR(20), `Car` VARCHAR(3), `Costumer` INT(4), `Sales Person` VARCHAR(10));

