#CREATE SCHEMA `lab_mysql` ;
USE `lab_mysql`;

CREATE TABLE `Car` (
  `VIN` VARCHAR(17),
  PRIMARY KEY (`VIN`),
  `manufacturer` VARCHAR(30),
  `model`VARCHAR(20),
  `year` INT,
  `color` VARCHAR(20));

  CREATE TABLE `Salesperson` (
  `staffID` INT AUTO_INCREMENT,
  PRIMARY KEY (`staffID`),
  `name` VARCHAR(30),
  `store`VARCHAR(30));

CREATE TABLE `Customer` (
  `ID` INT AUTO_INCREMENT,
  PRIMARY KEY (`ID`),
  `name` VARCHAR(30),
  `phone_number` VARCHAR(20),
  `email` VARCHAR(30),
  `address` VARCHAR(50),
  `city` VARCHAR(20),
  `state/province` VARCHAR(20),
  `country` VARCHAR(20),
  `ZIP/postal_code` VARCHAR(10));

  CREATE TABLE `Invoice` (
  `invoice_number` INT AUTO_INCREMENT,
  PRIMARY KEY (`invoice_number`),
  `date` DATE,
  `car` VARCHAR(17),
  `customer` INT,
  `salesperson` INT);

ALTER TABLE `Invoice` ADD FOREIGN KEY (`car`) REFERENCES `Car`(`VIN`);
ALTER TABLE `Invoice` ADD FOREIGN KEY (`customer`) REFERENCES `Customer`(`ID`);
ALTER TABLE `Invoice` ADD FOREIGN KEY (`salesperson`) REFERENCES `Salesperson`(`staffID`);