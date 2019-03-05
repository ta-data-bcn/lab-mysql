CREATE SCHEMA IF NOT EXISTS `Lab-MySQL` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `Lab-MySQL` ;

-- -----------------------------------------------------
-- Table `Lab-MySQL`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Lab-MySQL`.`Cars` (
  `idCars` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(50) NOT NULL,
  `Manufacturer` VARCHAR(50) NULL,
  `Model` VARCHAR(100) NULL,
  `Year` YEAR NULL,
  `Color` VARCHAR(45) NULL,
  `Carscol` VARCHAR(45) NULL,
  PRIMARY KEY (`idCars`, `VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Lab-MySQL`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Lab-MySQL`.`Customers` (
  `idCustomers` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `Phone` INT NULL,
  `Email` VARCHAR(100) NULL,
  `Adress` VARCHAR(200) NULL,
  `Postal Code` INT NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Lab-MySQL`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Lab-MySQL`.`Salesperson` (
  `idSalesperson` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NULL,
  `Store` VARCHAR(100) NULL,
  PRIMARY KEY (`idSalesperson`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Lab-MySQL`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Lab-MySQL`.`Invoices` (
  `idInvoices` INT NOT NULL AUTO_INCREMENT,
  `Number` BIGINT(20) NOT NULL,
  `Date` DATETIME NULL,
  `Car_ID` INT NULL,
  `Customer_ID` INT NULL,
  `Salesperson_ID` INT NULL,
  PRIMARY KEY (`idInvoices`, `Number`),
  INDEX `cars_idx` (`Car_ID` ASC),
  INDEX `customers_idx` (`Customer_ID` ASC),
  INDEX `sales_idx` (`Salesperson_ID` ASC),
  CONSTRAINT `cars`
    FOREIGN KEY (`Car_ID`)
    REFERENCES `Lab-MySQL`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `customers`
    FOREIGN KEY (`Customer_ID`)
    REFERENCES `Lab-MySQL`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `sales`
    FOREIGN KEY (`Salesperson_ID`)
    REFERENCES `Lab-MySQL`.`Salesperson` (`idSalesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;