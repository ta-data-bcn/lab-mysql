CREATE SCHEMA `lab_mysql` ;

CREATE TABLE `lab_mysql`.`Cars` (
  `ID` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`));

CREATE TABLE `lab_mysql`.`Customers` (
  `ID` INT NOT NULL,
  `Customers ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Addres` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State/Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Postal` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`));

CREATE TABLE `lab_mysql`.`Invoices` (
  `ID` INT NOT NULL,
  `Invoices Number` INT NULL,
  `Date` DATE NULL,
  `Car` INT NULL,
  `Customer` INT NULL,
  `Sales Person` INT NULL,
  PRIMARY KEY (`ID`));

CREATE TABLE `lab_mysql`.`Salespersons` (
  `ID` INT NOT NULL,
  `Staff ID` INT NOT NULL,
  `Name` VARCHAR(255) NULL,
  `Store` VARCHAR(255) NULL,
  PRIMARY KEY (`ID`));