Create Database cars;
-- lower case for USE command
USE cars;

CREATE table Cars (
Automatic_ID INT auto_increment,
VIN VARCHAR(50),
Manufacturer CHAR(50),
Model VARCHAR(50),
Prod_year INT,
Car_color VARCHAR(30),
Primary key (Automatic_ID));

Create table Customers (
automatic_ID INT auto_increment,
customer_ID INT,
Cust_name CHAR(50),
phone_number INT,
email VARCHAR(50),
address  VARCHAR(100),
city VARCHAR(30),
state_province VARCHAR (50),
country VARCHAR (50),
zip_postal INT,
customers SMALLINT,
Primary key (automatic_ID));

select * from Customers;
ALTER TABLE Customers DROP COLUMN costumers;

Create table Salesperson (
automatic_ID SMALLINT auto_increment,
staff_ID SMALLINT,
employee_name CHAR(50),
company_store CHAR (50),
Primary key (automatic_ID));

Create table Invoices (
automatic_ID SMALLINT auto_increment,
invoice_number SMALLINT,
Invoice_date DATE,
car CHAR(50),
customer CHAR(50),
salesperson_per_car_sale CHAR (50),
primary key (automatic_ID));

-- Cars
INSERT INTO cars (
VIN,
Manufacturer,
Model,
Prod_year,
Car_color)
VALUES 
('K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');



-- CUSTOMERS
INSERT INTO customers (
customer_ID,
Cust_name,
phone_number,
email,
address,
city,
state_province,
country,
zip_postal,
customers)
VALUES
(10001,	'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

-- SALES PERSONS
INSERT INTO sales_persons VALUES
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Mimia'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

-- INVOICES
INSERT INTO invoices VALUES
(852399038, '2018-08-22', 0, 1, 3),
(731166526, '2018-12-31', 3, 0, 5),
(271135104, '2019-01-22', 2, 2, 7);





