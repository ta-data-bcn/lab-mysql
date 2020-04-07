USE `lab_mysql`;
# Create Table Cars
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
# Create Table Customers
CREATE TABLE `Customers`
(
    `ID`           INT(6) AUTO_INCREMENT NOT NULL,
    primary key (ID),
    `Customer ID`          INT(6)          NOT NULL,
    `Name` VARCHAR(100)           NOT NULL,
    `Phone`        INT(13)           NOT NULL,
    `Email`         VARCHAR(50)                  NOT NULL,
    `Address`        VARCHAR(1000)           NOT NULL,
    `City`         VARCHAR(20)                  NOT NULL,
    `State/Province`        VARCHAR(20)           NOT NULL,
    `Country`         VARCHAR(20)                  NOT NULL,
    `Postal`        INT(6)           NOT NULL
);
# Create Table Salespersons
CREATE TABLE `Salespersons`
(
    `ID`           INT(6) AUTO_INCREMENT NOT NULL,
    primary key (ID),
    `StaffID`          INT(6)          NOT NULL,
    `Name` VARCHAR(100)           NOT NULL,
    `Store`        VARCHAR(20)           NOT NULL
    );
# Create Table Invoices
CREATE TABLE `Invoices`
(
    `ID`           INT(6) AUTO_INCREMENT NOT NULL,
    primary key (ID),
    `Invoice Number`          INT(11)          NOT NULL,
    `Date` DATE(255)           NOT NULL,
    `Car`        VARCHAR(20)           NOT NULL,
    `Customer` VARCHAR(255)           NOT NULL,
    `Salesperson` VARCHAR(255)           NOT NULL
    );


