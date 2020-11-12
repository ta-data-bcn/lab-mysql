CREATE DATABASE car_sales;
USE car_sales;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (	
	id int AUTO_INCREMENT,
	VIN VARCHAR(255),
	manufacturer VARCHAR(255),
    model VARCHAR(255),
    year int,
    color VARCHAR(255),
    PRIMARY KEY (id)
);
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (	
	id int auto_increment,
	customer_id VARCHAR(255),
	customer_name VARCHAR(255),
    phone_number VARCHAR(255),
    email VARCHAR(255),
	adress VARCHAR(255),
    city VARCHAR(255),
    state_province VARCHAR(255),
	country VARCHAR(255),
    zip_postal_code VARCHAR(255),
    PRIMARY KEY (id)
);
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (	
	id int AUTO_INCREMENT,
	staff_id int(5) UNSIGNED ZEROFILL,
	staff_name VARCHAR(255),
    store VARCHAR(255),
    PRIMARY KEY (id)
);
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (	
	id int auto_increment,
	invoice_number VARCHAR(255),
	invoice_date date,
    car VARCHAR(255),
    customer VARCHAR(255),
	salesperson VARCHAR(255),
    PRIMARY KEY (id)
);
INSERT INTO cars (VIN, manufacturer, model, year, color) VALUES
	('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
	('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
	('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
	('HKNDGS7CU31E9Z7JW','Toyota','RAV4',	2018,'Silver'),
	('DAM41UDN3CHU2WVF6','Volvo','V60',	2019,'Gray'),
	('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');
select * from cars;
INSERT INTO customers (customer_id,	customer_name, phone_number, email,	adress, city, state_province, country, zip_postal_code) VALUES
	('10001', 'Pablo Picasso', '+34 636 17 63 82','-','Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
	('20001', 'Abraham Lincoln', '+1 305 907 7086','-',	'120 SW 8th St','Miami','Florida', 'United States', '33130'),
	('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00','-','40 Rue du Colisée', 'Paris', 'Île-de-France', 'France','75008');
select * from customers;
INSERT INTO salespersons (staff_id, staff_name, store) VALUES
	(00001,'Petey Cruiser', 'Madrid'),
	(00002,'Anna Sthesia', 'Barcelona'),
	(00003,'Paul Molive', 'Berlin'),
	(00004,'Gail Forcewind', 'Paris'),
	(00005,'Paige Turner', 'Mimia'),
	(00006,'Bob Frapples', 'Mexico City'),
	(00007,'Walter Melon', 'Amsterdam'),
	(00008,'Shonda Leer', 'São Paulo');
select * from salespersons;
INSERT INTO invoices (invoice_number, invoice_date, car, customer, salesperson) VALUES
	('852399038', 20180822,'0','1','3'),
	('731166526', 20181231,'3','0','5'),
	('271135104', 20190122,'2','2','7');
select * from invoices;

select * from cars;
select * from customers;
select * from salespersons;
select * from invoices;

UPDATE salespersons SET store = 'Miami'
WHERE id = 5;
select * from salespersons;

UPDATE customers SET email = 'ppicasso@gmail.com'
WHERE id = 1;
UPDATE customers SET email = 'lincoln@us.gov'
WHERE id = 2;
UPDATE customers SET email = 'hello@napoleon.me'
WHERE id = 3;

SELECT * FROM customers;