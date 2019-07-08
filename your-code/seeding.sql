CREATE TABLE cars ( 
car_id INT(30) PRIMARY KEY,
vin VARCHAR(50),
manufacturer TEXT,
model VARCHAR(20),
year INT(4),
color TEXT
);

INSERT INTO cars(car_id, vin, manufacturer, model, year, color)
VALUES (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue');

INSERT INTO cars(car_id, vin, manufacturer, model, year, color)
VALUES (1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red');

INSERT INTO cars(car_id, vin, manufacturer, model, year, color)
VALUES (2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');

INSERT INTO cars(car_id, vin, manufacturer, model, year, color)
VALUES (3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');

INSERT INTO cars(car_id, vin, manufacturer, model, year, color)
VALUES (4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

INSERT INTO cars(car_id, vin, manufacturer, model, year, color)
VALUES (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

select * from cars;

CREATE TABLE customers ( 
id INT(30),
cust_id INT(20),
name TEXT,
phone VARCHAR(20),
email VARCHAR(30),
adress VARCHAR(50),
city VARCHAR(30),
state VARCHAR(30),
country VARCHAR(30),
zipcode INT
);

INSERT INTO customers (id, cust_id, name, phone, email, adress, city, state, country, zipcode)
VALUES (0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045);

INSERT INTO customers (id, cust_id, name, phone, email, adress, city, state, country, zipcode)
VALUES (1, 20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130);

INSERT INTO customers (id, cust_id, name, phone, email, adress, city, state, country, zipcode)
VALUES (2, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

select * from customers;

CREATE TABLE salespersons ( 
id INT,
staff_id INT,
name TEXT,
store TEXT
);

INSERT INTO salespersons (id, staff_id, name, store)
VALUES (0, 00001, 'Petey Cruiser', 'Madrid');

INSERT INTO salespersons (id, staff_id, name, store)
VALUES (1, 00002, 'Anna Sthesisa', 'Barcelona');

INSERT INTO salespersons (id, staff_id, name, store)
VALUES (2, 00003, 'Paul Molive', 'Berlin');

INSERT INTO salespersons (id, staff_id, name, store)
VALUES (3, 00004, 'Gail Forcewind', 'Paris');

INSERT INTO salespersons (id, staff_id, name, store)
VALUES (4, 00005, 'Paige Turner', 'Mimia');

INSERT INTO salespersons (id, staff_id, name, store)
VALUES (5, 00006, 'Bob Frapples', 'Mexico City');

INSERT INTO salespersons (id, staff_id, name, store)
VALUES (6, 00007, 'Walter Melon', 'Amsterdam');

INSERT INTO salespersons (id, staff_id, name, store)
VALUES (7, 00008, 'Shonda Leer', 'Sao Paulo');

select * from salespersons;

CREATE TABLE invoices (
id INT,
invoice_number INT,
date DATE,
car INT,
customer INT,
salesperson INT
);

INSERT INTO invoices(id, invoice_number, date, car, customer, salesperson)
VALUES (0, 852399038, '2018-08-22', 0, 1, 3);

INSERT INTO invoices(id, invoice_number, date, car, customer, salesperson)
VALUES (1, 731166526, '2018-12-31', 3, 0, 5);

INSERT INTO invoices(id, invoice_number, date, car, customer, salesperson)
VALUES (2, 271135104, '2019-01-22', 2, 2, 7);

select * from invoices;