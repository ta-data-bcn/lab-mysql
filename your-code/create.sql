USE Ironhack;
CREATE TABLE `Cars`
(
    `ID`           INT(6) AUTO_INCREMENT NOT NULL,
    primary key (ID),
    `VIN`          VARCHAR(100)          NOT NULL,
    `Manufacturer` VARCHAR(20)           NOT NULL,
    `Model`        VARCHAR(20)           NOT NULL,
    `Year`         YEAR                  NOT NULL,
    `Color`        VARCHAR(10)           NOT NULL
);

CREATE TABLE `Customers`
(
    `ID`          INT(6) AUTO_INCREMENT NOT NULL,
    primary key (ID),
    `Customer ID` INT(5)                NOT NULL,
    `Name`        VARCHAR(25)           NOT NULL,
    `Phone`       VARCHAR(15)           NOT NULL,
    `Email`       VARCHAR(30),
    `Address`     VARCHAR(30)           NOT NULL,
    `City`        VARCHAR(15)           NOT NULL,
    `State`       VARCHAR(30)           NOT NULL,
    `Country`     VARCHAR(20)           NOT NULL,
    `Postal`      INT(7)                NOT NULL
);

CREATE TABLE `Salespersons`
(
    `ID`       INT(6) AUTO_INCREMENT NOT NULL,
    primary key (ID),
    `Staff ID` INT(6)                NOT NULL,
    `Name`     VARCHAR(25)           NOT NULL,
    `Store`    VARCHAR(15)           NOT NULL,
    KEY `Staff ID` (`Staff ID`)
);

CREATE TABLE `Invoices`
(
    `ID`             int  NOT NULL AUTO_INCREMENT,
    `Invoice Number` int  NOT NULL,
    `Date`           date NOT NULL,
    `Car`            int  NOT NULL,
    `Customer`       int  NOT NULL,
    `Salesperson`    int  NOT NULL,
    PRIMARY KEY (`ID`),
    KEY `Car` (`Car`),
    KEY `invoice_fk_customers` (`Customer`),
    KEY `invoices_fk_sales` (`Salesperson`),
    CONSTRAINT `invoice_fk_customers` FOREIGN KEY (`Customer`) REFERENCES `Customers` (`ID`),
    CONSTRAINT `invoices_fk_sales` FOREIGN KEY (`Salesperson`) REFERENCES `Salespersons` (`Staff ID`) ON UPDATE CASCADE,
    CONSTRAINT `invoices_fk_cars` FOREIGN KEY (`Car`) REFERENCES `Cars` (`ID`) ON DELETE CASCADE
);




