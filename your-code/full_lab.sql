
-- CREATE DB 

CREATE DATABASE IF NOT EXISTS car_dealer;
DROP DATABASE car_dealer;
USE car_dealer;

-- CREATE TABLES
-- Cars - e.g. the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.

DROP TABLES cars;
CREATE TABLE IF NOT EXISTS cars (
ID int NOT NULL AUTO_INCREMENT,
VIN VARCHAR (255) NOT NULL,
Manufacturer VARCHAR (255),
Model VARCHAR (255),
Year_launch int,
Color VARCHAR (255),
PRIMARY KEY (ID),
FOREIGN KEY (ID) REFERENCES invoices(Car)
);

-- Customers - e.g. the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.

CREATE TABLE IF NOT EXISTS customers(
ID int NOT NULL AUTO_INCREMENT, 
Customer_ID int NOT NULL UNIQUE, 
Client_Name VARCHAR (255),
Phone_Number VARCHAR (255),
email VARCHAR (255),
Address VARCHAR (255),
City VARCHAR (255),
StateProvince VARCHAR (255),
Country VARCHAR (255),
ZipPostal_Code int,
PRIMARY KEY (ID),
FOREIGN KEY (ID) REFERENCES invoices(Customer)
);

-- Salespersons - e.g. staff ID, name, and the store at your company.

DROP TABLE salesperson;
CREATE TABLE IF NOT EXISTS salesperson(
ID int NOT NULL AUTO_INCREMENT,
Staff_ID int(5) UNSIGNED ZEROFILL NOT NULL UNIQUE, 
First_name VARCHAR (255),
Store VARCHAR (255),
PRIMARY KEY (ID)
);
-- FOREIGN KEY (ID) REFERENCES invoices(Salesperson)
-- Invoices - e.g. the invoice number, date, car, customer, and salesperson related to each car sale.
DROP TABLE invoices;
CREATE TABLE IF NOT EXISTS invoices(
ID int NOT NULL AUTO_INCREMENT,
Invoice_number int,
Invoice_date DATE, 
Car int, 
Customer int,
Salesperson int, 
PRIMARY KEY (ID)
);

-- INSERT DATA INTO TABLES

SELECT * FROM invoices;


INSERT INTO cars (VIN, Manufacturer, Model, Year_launch, Color)
VALUES("K096I98581DHSNUP", "Volkswagen", "Tiguan", "2019", "Blue" ),	
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", "2019", "Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "2018", "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", "2018", "Silver"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", "2019", "Gray"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", "2019", "Gray");

INSERT INTO customers (Customer_ID, Client_Name, Phone_Number, email, Address, City, StateProvince, Country, ZipPostal_Code)
VALUES ("10001", "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera , 14", "Madrid", "Madrid", "Spain", "28045"),	
("20001", "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "Florida", "United States", "33130"),	
("30001", "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");

INSERT INTO salesperson (Staff_ID, First_Name, Store)
VALUES (00001, "Petey Cruiser", "Madrid"),
(00002, "Anna Sthesia", "Barcelona"),
(00003, "Paul Molive", "Berlin"),
(00004, "Gail Forcewind", "Paris"),
(00005, "Paige Turner", "Mimia"),
(00006, "Bob Frapples", "Mexico City"),
(00007, "Walter Melon", "Amsterdam"),
(00008, "Shonda Leer", "São Paulo");			
							
INSERT INTO invoices (Invoice_number, Invoice_date, Car, Customer, Salesperson)
VALUES(852399038, "20180822", 0, 1, 3),
(731166526, "20181231", 3, 0, 5),
(271135104, "20190122", 2, 2, 7);

-- UPDATES

SELECT * FROM salesperson;

UPDATE salesperson
SET Store = "Miami"
WHERE ID = 40001;

SELECT * FROM customers;

UPDATE customers
SET email = "ppicasso@gmail.com"
WHERE ID = 1;

UPDATE customers
SET email = "lincoln@us.gov"
WHERE ID = 10001;

UPDATE customers
SET email = "hello@napoleon.me"
WHERE ID = 20001;
