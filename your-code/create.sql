/*
Creating DATABASE and USING it
*/

DROP DATABASE IF EXISTS mysql_lab;
CREATE DATABASE mysql_lab;

USE mysql_lab;

/*
Creating Tables
*/

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    ID_number INT AUTO_INCREMENT,
    VIN VARCHAR(255),
    Manufacturer VARCHAR(255),
    Model VARCHAR(255),
    Year INT,
    Color VARCHAR(255),
    PRIMARY KEY (ID_number)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    ID_number INT AUTO_INCREMENT,
    Customer_ID INT,
    Name VARCHAR(255),
    Phone VARCHAR(255),
    Email VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    State_Province VARCHAR(255),
    Country VARCHAR(255),
	Postal INT,
    PRIMARY KEY (ID_number)
);

DROP TABLE IF EXISTS salesperson;
CREATE TABLE salesperson (
    ID_number INT AUTO_INCREMENT,
    Staff_ID INT,
    Name VARCHAR(255),
    City VARCHAR(255),
    PRIMARY KEY (ID_number)
);

DROP TABLE IF EXISTS invoice;
CREATE TABLE invoice (
    ID_number INT AUTO_INCREMENT,
    Invoice_Number INT,
    Date VARCHAR(255),
    Car INT,
    Customer INT,
    Sales_Person INT,
    PRIMARY KEY (ID_number),
    FOREIGN KEY (Car) REFERENCES cars (ID_number),
    FOREIGN KEY (Customer) REFERENCES customers (ID_number),
    FOREIGN KEY (Sales_Person) REFERENCES salesperson (ID_number)
);