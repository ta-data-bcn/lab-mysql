CREATE TABLE `Address` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `address` varchar(255)   DEFAULT NULL,
  `city` varchar(255)   DEFAULT NULL,
  `state/province` varchar(255)   DEFAULT NULL,
  `zip/postal_code` varchar(10)   DEFAULT NULL,
  `country_ID` int(3) NOT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`country_ID`) REFERENCES `country` (`ID`)
);

CREATE TABLE `Car` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `vehicle_identification_number` varchar(18)   DEFAULT NULL,
  `model` varchar(20)   DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `color` varchar(20)   DEFAULT NULL,
  `manufacturer_ID` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`manufacturer_ID`) REFERENCES `manufacturer` (`ID`)
);

CREATE TABLE `Country` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(255)   DEFAULT NULL,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `Customer` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `customer_ID` int(10) DEFAULT NULL,
  `name` varchar(255)   DEFAULT NULL,
  `phone_number` varchar(14)   DEFAULT NULL,
  `email` varchar(255)   DEFAULT NULL,
  `address_ID` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`address_ID`) REFERENCES `address` (`ID`)
);

CREATE TABLE `Invoice` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(255)   DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `car_ID` int(10) NOT NULL,
  `customer_ID` int(10) NOT NULL,
  `sales_person_ID` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`car_ID`) REFERENCES `car` (`ID`),
  FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`ID`),
  FOREIGN KEY (`sales_person_ID`) REFERENCES `sales_person` (`ID`)
);

CREATE TABLE `Manufacturer` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20)   DEFAULT NULL,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `Sales_Person` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `staff_ID` int(10) DEFAULT NULL,
  `name` varchar(255)   DEFAULT NULL,
  `store` varchar(255)   DEFAULT NULL,
  PRIMARY KEY (`ID`)
);