CREATE DATABASE lab_mysql;
USE lab_mysql;
#Challenge2
# here we create all the tables with their columns
CREATE TABLE cars (id INT AUTO_INCREMENT, primary key(id) , vehicle_id VARCHAR(20), manufacturer VARCHAR(30), model VARCHAR (30), year INT(4), color VARCHAR (20));
CREATE TABLE customers (id INT AUTO_INCREMENT,primary key(id) , customer_id VARCHAR(8), name VARCHAR(30), phone VARCHAR(20), email varchar(40), address VARCHAR(40), city VARCHAR(20), state VARCHAR(20), country VARCHAR(20), zip VARCHAR(20));
CREATE TABLE salespersons (id INT AUTO_INCREMENT, primary key(id) ,  staff_id VARCHAR(8), name VARCHAR(30), store VARCHAR(30));
CREATE TABLE invoices (id INT AUTO_INCREMENT,  primary key(id), invoice_num CHAR(10), date DATE, car INT, FOREIGN KEY (car) REFERENCES cars(id), salesperson INT, FOREIGN KEY(salesperson) REFERENCES salespersons(id), customer INT, FOREIGN KEY(customer) REFERENCES customers(id));
#Challenge3
#Here we insert the values corresponding the cars table)
INSERT INTO cars (vehicle_id, manufacturer, model, year, color) 
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'), 
('ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	2019,	'Red'),
('RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	2018,	'White'),
('HKNDGS7CU31E9Z7JW',	'Toyota',	'RAV4',	2018,	'Silver'),
('DAM41UDN3CHU2WVF6',	'Volvo',	'V60',	2019,	'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo',	'V60 Cross Country',	2019,	'Gray');

#Here we insert the values corresponding the customers table)
INSERT INTO customers (customer_id, name, phone, address, city, state, country, zip)
VALUES ('10001','Pablo Picasso',	'+34 636 17 63 82', 'Paseo de la Chopera, 14',	'Madrid',	'Madrid',	'Spain',	'28045'),
('20001',	'Abraham Lincoln', '+1 305 907 7086',  '120 SW 8th St',	'Miami',	'Florida',	'United States',	'33130'),
('30001',	'Napoléon Bonaparte',	'+33 1 79 75 40 00',  '40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	'75008');

#Here we insert the values corresponding the salespersons table)
INSERT INTO salespersons ( staff_id, name, store)
VALUES (00001,	'Petey Cruiser',	'Madrid'),
(00002,	'Anna Sthesia', 'Barcelona'),
(00003,	'Paul Molive',	'Berlin'),
(00004,	'Gail Forcewind',	'Paris'),
(00005,	'Paige Turner',	'Mimia'),
(00006,	'Bob Frapples',	'Mexico City'),
(00007,	'Walter Melon',	'Amsterdam'),
(00008,	'Shonda Leer',	'São Paulo');

##Here we insert the values corresponding the invoices table) (had to add one to the labs values because the id started in 1)
INSERT INTO invoices (invoice_id, date, car, customer, salesperson)
VALUES ( '852399038',	'2018-08-22', 1, 2,	4),
('731166526',	'2018-12-31',	4,	1,	6),
('271135104',	'2019-01-22',	3,	3,	8);
#Bonus
SET SQL_SAFE_UPDATES = 0;
#Update
#here we update the customers emails form the bonus
UPDATE customers SET email = CASE
	WHEN name = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
	WHEN name = 'Abraham Lincoln' THEN	'lincoln@us.gov'
	WHEN name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
END
WHERE name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');
#delete
#Here we delete the duplicate
DELETE FROM cars WHERE id = 5;

