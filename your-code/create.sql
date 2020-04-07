USE lab_mysql;

CREATE TABLE Cars
(ID INT auto_increment, Vehicle_ID VARCHAR(30), Manufacturer VARCHAR(30), Model VARCHAR(30), Year YEAR, Color VARCHAR(10), Primary key (ID));

CREATE TABLE Customers
(ID INT auto_increment, Customer_ID VARCHAR(30), Name VARCHAR(30), Phone VARCHAR(30), Email VARCHAR(30), Address VARCHAR(30), City VARCHAR(20), Province VARCHAR(30), Country VARCHAR(20), Postal VARCHAR(20), PRIMARY KEY (ID));

CREATE TABLE Salesperson
(ID INT auto_increment, Staff_ID VARCHAR(30), Name VARCHAR(20), Store VARCHAR(20), primary key (ID));

CREATE TABLE Invoices
(ID INT auto_increment, Invoice_Number VARCHAR(30), Date DATE, Car VARCHAR(10), Customer VARCHAR(10), SalesPerson VARCHAR(10), primary key (ID));

