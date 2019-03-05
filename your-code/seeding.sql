INSERT INTO 
Cars (VIN, Manufacturer, Model, Year, Color) 
VALUES 
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota',	'RAV4',	2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO 
Customers (Name, Phone, Address, City, StateProvince, Country, PostalCode)
VALUES
 ('Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera, 14 Madrid', '28045'),
('Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St Miami', '33130'),
('Napoléon Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée Paris', '75008');

INSERT INTO 
Salespersons (Name, Store)
VALUES
 ('Petey Cruiser', 'Madrid'),
('Anna Sthesia',	'Barcelona'),
('Paul Molive',	'Berlin'),
('Gail Forcewind',	'Paris'),
('Paige Turner',	'Mimia'),
('Bob Frapples',	'Mexico City'),
('Walter Melon',	'Amsterdam'),
('Shonda Leer',	'São Paulo');

INSERT INTO Invoices (Number, Date, Car_ID, Customer_ID, Salesperson_ID) 
VALUES 
(852399038, '2018-08-22', 1, 1, 3),
(731166526, '2018-12-31', 3, 3, 5),
(271135104, '2019-01-22', 2, 2, 7);