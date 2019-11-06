USE lab_mysql;

INSERT INTO cars (car_id, VIN, Manufacturer,	model,	year,	color)
VALUES 
(1,	'ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	2019,	'Red'),
(2,	'RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	2018,	'White'),
(3,	'HKNDGS7CU31E9Z7JW',	'Toyota',	'RAV4', 2018, 'Silver'),
(4,	'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(5,	'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country',	2019,'Gray');

INSERT INTO customers (customer_id, name, lname, phone, email, address, city, state_prov, country, zip_post_code)
VALUES
(10001,	'Pablo', 'Nicaso', '+34636176382',	'-', 'Paseo de la Chopera, 14',	'Madrid',	'Madrid',	'Spain',	28045),
(20001,	'Abraham', 'Romero',  '+13059077086', '-', 'SW 8th St,  120', 'Miami', 'Florida',	'United States',	33130),
(30001,	'Román', 'Malaparte',  '+33179754000,', '-', 'Rue du Colisée, 40',	'Paris', 'Île-de-France', 'France',	75008);


INSERT INTO invoices (invoice_id, date, car_id, customer_id, salesperson_id)
VALUES
(852399038,	'2018-8-22',	0,	1,	3),
(731166526,	'2018-12-31',	3,	0,	5),
(271135104,	'2019-1-22',	2,	2,	7);

INSERT INTO salespersons (salesperson_id, name, lname, store_id, sex)
VALUES
(00001,	'Petey', 'Cruiser',	'01', 'M'),
(00002,	'Anna', 'Sthesia',	'02', 'F'),
(00003,	'Paul', 'Molive',	'03', 'M'),
(00004,	'Gail', 'Forcewind',	'04', 'F'),
(00005,	'Paige', 'Turner',	'05', 'M'),
(00006,	'Bob', 'Frapples',	'06', 'M'),
(00007,	'Walter', 'Melon',	'01', 'M'),
(00008,	'Shonda', 'Leer',	'02', 'F');

INSERT INTO stores (store_id, city, country)
VALUES
('01', 'Madrid', 'Spain'),
('02', 'Barcelona', 'Spain'),
('03', 'Miami', 'USA'),
('04', 'Sao Paulo', 'Brasil'),
('05', 'Amsterdaam', 'Netherlands'),
('06', 'Paris', 'France');