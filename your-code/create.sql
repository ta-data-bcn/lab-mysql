CREATE DATABASE IF NOT EXISTS My_lab;

USE My_lab;

DROP TABLE IF EXISTS Cars;
CREATE TABLE IF NOT EXISTS Cars (
	VIN_Vehicle_indentification_number varchar(255) PRIMARY KEY,
    Manufacturer varchar(255),
    Model varchar(255),
    Year int,
    Color varchar(255)
);

DROP TABLE IF EXISTS Salespersons;
CREATE TABLE IF NOT EXISTS Salespersons (
	Staff_ID int auto_increment,
    Name varchar(255),
    Store_company varchar(255),
    PRIMARY KEY(Staff_ID)
);
    
DROP TABLE IF EXISTS Customers;
CREATE TABLE IF NOT EXISTS Customers (
	Customer_ID int auto_increment,
    Name varchar(255),
    Phone_number int,
    Email varchar(255),
    Address varchar(255),
    City varchar(255),
    State_Province varchar(255),
    Country varchar(255),
    ZIP_Postal_code int,
    PRIMARY KEY(Customer_ID)
);

DROP TABLE IF EXISTS Invoices;
CREATE TABLE IF NOT EXISTS Invoices (
	Invoice_number int auto_increment,
    Date varchar(255),
    Car varchar(255),
    Customer varchar(255),
    Salesperson varchar(255),
    PRIMARY KEY(Invoice_number)
);


