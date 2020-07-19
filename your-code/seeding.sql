INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (0, '3K096I98581DHSNUP','Volkswagen', 'Tiguan', 2019, 'Blue');
INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (1, 'ZM8G7BEUQZ97IH46V','Peugeot', 'Rifter', 2019, 'Red');
INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (2, 'RKXVNNIHLVVZOUB4M','Ford', 'Fusion', 2018, 'White');
INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (3, 'HKNDGS7CU31E9Z7JW','Toyota', 'RAV4', 2018, 'Silver');
INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (4, 'DAM41UDN3CHU2WVF6','Volvo', 'V60', 2019, 'Gray');
INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (5, 'DAM41UDN3CHU2WVF6','Volvo', 'V60 Cross Country', 2019, 'Gray');

SELECT * FROM cars;

DROP TABLE customers;

CREATE TABLE customers (ID INT AUTO_INCREMENT PRIMARY KEY, cust_ID INT, cust_name VARCHAR(60), phone VARCHAR(60), email VARCHAR(200), address VARCHAR(500), city VARCHAR(60), state VARCHAR(60), country VARCHAR(60), CP INT);
DESCRIBE customers;

INSERT INTO customers (cust_ID, cust_name, phone, email, address, city, state, country, CP)
VALUES (10001, 'Pablo Picasso','+34 636 17 63 82', '-', 'Paseo de la Chopera', 'Madrid', 'Madrid', 'Spain', 28045);
INSERT INTO customers (cust_ID, cust_name, phone, email, address, city, state, country, CP)
VALUES (20001, 'Abraham Lincoln','+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130);
INSERT INTO customers (cust_ID, cust_name, phone, email, address, city, state, country, CP)
VALUES (30001, 'Napoléon Bonaparte','+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

SELECT * from customers;


INSERT INTO salespersons (staff_ID, seller_name, store)
VALUES (00001, 'Petey Cruiser', 'Madrid');
INSERT INTO salespersons (staff_ID, seller_name, store)
VALUES (00002, 'Anna Sthesia', 'Barcelona');
INSERT INTO salespersons (staff_ID, seller_name, store)
VALUES (00003, 'Paul Molive', 'Berlin');
INSERT INTO salespersons (staff_ID, seller_name, store)
VALUES (00004, 'Gail Forcewind', 'Paris');
INSERT INTO salespersons (staff_ID, seller_name, store)
VALUES (00005, 'Paige Turner', 'Mimia');
INSERT INTO salespersons (staff_ID, seller_name, store)
VALUES (00006, 'Bob Frapples', 'Mexico City');
INSERT INTO salespersons (staff_ID, seller_name, store)
VALUES (00007, 'Walter Melon', 'Amsterdam');
INSERT INTO salespersons (staff_ID, seller_name, store)
VALUES (00008, 'Shonda Leer', 'São Paulo');

SELECT * FROM salespersons;

INSERT INTO invoices (ID, inv_no, date_inv, car_ID, cust_ID, staff_ID)
VALUES (0, 852399038, 20180822, 0, 1, 3);
INSERT INTO invoices (ID, inv_no, date_inv, car_ID, cust_ID, staff_ID)
VALUES (1, 731166526, 20181231, 3, 0, 5);
INSERT INTO invoices (ID, inv_no, date_inv, car_ID, cust_ID, staff_ID)
VALUES (2, 271135104, 20190122, 2, 2, 7);

SELECT * FROM invoices;

DELETE FROM invoices;

INSERT INTO invoices (ID, inv_no, date_inv, car_ID, cust_ID, staff_ID)
VALUES (0, 852399038, 20180822, 0, 1, 3);
INSERT INTO invoices (ID, inv_no, date_inv, car_ID, cust_ID, staff_ID)
VALUES (1, 731166526, 20181231, 3, 0, 5);
INSERT INTO invoices (ID, inv_no, date_inv, car_ID, cust_ID, staff_ID)
VALUES (2, 271135104, 20190122, 2, 2, 7);

SELECT * FROM invoices;