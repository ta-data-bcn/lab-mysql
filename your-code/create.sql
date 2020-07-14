"Create database"
CREATE DATABASE LabMySQL;

"Use database"
USE LabMySQL;

"Create table Cars"
CREATE TABLE Cars (ID INT auto_increment, VIN VARCHAR(20) NOT NULL, Manufacturer VARCHAR(20) NOT NULL, Model VARCHAR(30) NOT NULL, Car_Year INT(4) NOT NULL, Color VARCHAR(20), primary key(ID));

"Create table Customers"
CREATE TABLE Customers (ID INT auto_increment, Customer_ID CHAR(5) NOT NULL, Customer_Name VARCHAR(20) NOT NULL, 
Phone_Number VARCHAR(20), Email TEXT(30), Address VARCHAR(50) NOT NULL, City VARCHAR(20) NOT NULL, 
State_Province VARCHAR(30) NOT NULL, Country VARCHAR(20) NOT NULL, Zip_postal_code CHAR(5) NOT NULL, primary key(ID));

"Create Salespersons table"
CREATE TABLE Salespersons (ID INT auto_increment, Staff_ID CHAR(5) NOT NULL, Name VARCHAR(30) NOT NULL, Store VARCHAR(30) NOT NULL, primary key(ID));

"Create Invoices table"
CREATE TABLE Invoices (ID INT auto_increment, Invoice_Number VARCHAR(20) NOT NULL, Invoice_Date DATE NOT NULL, Car_ID INT NOT NULL,Customer_ID INT NOT NULL,Salesperson_ID INT NOT NULL, primary key(ID));