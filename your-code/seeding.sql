USE mysql_lab;

SELECT * FROM cars;
INSERT INTO cars (VIN, Manufacturer, Model, Year, Color) VALUES
("3K096I98581DHSNUP", "Audi", "R8", 2019, "Red"),
("ZM8G7BEUQZ97IH46V", "Audi", "A8 TFSIe", 2020,"Silver"),
("RKXVNNIHLVVZOUB4M", "Fiat", "500X", 2019, "Black"),
("HKNDGS7CU31E9Z7JW", "Toyota", "Yaris", 2019, "Gray"),
("DAM41UDN3CHU2WVF6", "Ferrari", "F8Tributo", 2019, "Red"),
("DAM41UDN3CHU2WVF6", "Volkswagen", "Polo", 2017, "White");

SELECT * FROM customers;
INSERT INTO customers (Customer_ID, Name, Phone, Email, Address, City, State_Province, Country, Postal) VALUES
(10001, "Pablo Picasso", "+34 636 17 63 82", NULL, "Paseo de la Chopera 14", "Madrid", "Madrid", "Spain", 28045),
(20001, "Abraham Lincoln", "+1 305 907 7086", NULL, "120 SW 8th St", "Miami", "Florida", "United States", 33130),
(30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", NULL, "40 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);

SELECT * FROM salesperson;
INSERT INTO salesperson (Staff_ID, Name, City) VALUES
(00001, "Petey Cruiser", "Madrid"),
(00002, "Anna Sthesia", "Barcelona"),
(00003, "Paul Molive", "Berlin"),
(00004, "Gail Forcewind", "Paris"),
(00005, "Paige Turner", "Mimia"),
(00006, "Bob Frapples", "Mexico City"),
(00007, "Walter Melon", "Amsterdam"),
(00008, "Shonda Leer", "São Paulo");

SELECT * FROM invoice;
INSERT INTO invoice (Invoice_Number, Date, Car, Customer, Sales_Person) VALUES
(852399038, "22-08-2018", 1, 2, 4),
(731166526, "31-12-2018", 4, 1, 6),
(271135104, "22-01-2019", 3, 3, 8);