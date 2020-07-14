# Create database
CREATE DATABASE LabMySQL;

# Use database
USE LabMySQL;

# Create table Cars
DROP TABLE Cars;

CREATE TABLE Cars (ID INT auto_increment, VIN VARCHAR(20) NOT NULL, Manufacturer VARCHAR(20) NOT NULL, Model VARCHAR(30) NOT NULL, Car_Year INT(4) NOT NULL, Color VARCHAR(20), primary key(ID));

INSERT INTO Cars (VIN,Manufacturer,Model,Car_Year,Color) VALUES

('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

# Create table Customers
DROP TABLE Customers;

CREATE TABLE Customers (ID INT auto_increment, Customer_ID CHAR(5) NOT NULL, Customer_Name VARCHAR(20) NOT NULL, 
Phone_Number VARCHAR(20), Email TEXT(30), Address VARCHAR(50) NOT NULL, City VARCHAR(20) NOT NULL, 
State_Province VARCHAR(30) NOT NULL, Country VARCHAR(20) NOT NULL, Zip_postal_code CHAR(5) NOT NULL, primary key(ID));

INSERT INTO Customers (Customer_ID,Customer_Name,`Phone_Number`,Address,City,State_Province,Country,Zip_postal_code) VALUES

(10001,'Pablo Picasso','+34 636 17 63 82','Paseo de la Chopera 14','Madrid','Madrid','Spain',28045),
(20001,'Abraham Lincoln','+1 305 907 7086',' 120 SW 8th St','Miami','Florida','United States',33130),
(30001,'Napoléon Bonaparte','+33 1 79 75 40 00','40 Rue du Colisée','Paris','Île-de-France','France',75008);

# Create Salespersons table
DROP TABLE Salespersons;

CREATE TABLE Salespersons (ID INT auto_increment, Staff_ID CHAR(5) NOT NULL, Name VARCHAR(30) NOT NULL, Store VARCHAR(30) NOT NULL, primary key(ID));

INSERT INTO Salespersons (Staff_ID,Name,Store) VALUES

(00001,'Petey Cruiser','Madrid'),
(00002,'Anna Sthesia','Barcelona'),
(00003,'Paul Molive','Berlin'),
(00004,'Gail Forcewind','Paris'),
(00005,'Paige Turner','Mimia'),
(00006,'Bob Frapples','Mexico City'),
(00007,'Walter Melon','Amsterdam'),
(00008,'Shonda Leer','São Paulo');

# Create Invoices table
DROP TABLE Invoices;

CREATE TABLE Invoices (ID INT auto_increment, Invoice_Number VARCHAR(20) NOT NULL, Invoice_Date DATE NOT NULL, Car_ID INT NOT NULL,Customer_ID INT NOT NULL,Salesperson_ID INT NOT NULL, primary key(ID));

INSERT INTO Invoices (Invoice_Number,Invoice_Date,Car_ID,Customer_ID,SalesPerson_ID) VALUES
	
(852399038,'2018-08-22',0,1,3),
(731166526,'2018-12-31',3,0,5),
(271135104,'2019-01-22',2,2,7);

# Update Paige Turner Store
UPDATE Salespersons SET Store = 'Miami' WHERE id = 5;

# Update emails of the customers
UPDATE Customers SET Email='ppicasso@gmail.com' WHERE Customer_Name = 'Pablo Picasso';
UPDATE Customers SET Email='hello@napoleon.me' WHERE Customer_Name = 'Napoléon Bonaparte';
UPDATE Customers SET Email='lincoln@us.gov' WHERE Customer_Name = 'Abraham Lincoln';

# Delete duplicated Car
DELETE FROM Cars WHERE id = 5;