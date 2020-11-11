USE my_lab;

INSERT INTO Cars VALUES
('3K096I98581DHSNUP', 'Audi', 'TT 2.0', 2018, 'green'),
('DAM41UDN3CHU2WVF6', 'Ferrari', 'California', 2020, 'red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Mustang', 1980, 'blue');

INSERT INTO Salespersons (Name, Store_company) VALUES
('Tommy', 'Diagonal'),
('Roman', 'Aragon'),
('Mark', 'Gracia');

INSERT INTO Customers (Name, Phone_number, Email, Address, City, State_Province, Country, ZIP_Postal_code) VALUES
('Nicolas', 646764821, 'pequeñonicolas@gmail.com', 'Tuset 24', 'Barcelona', 'Barcelona', 'Spain', 08025),
('Rogelio', 754862158, 'rechi94@hotmail.com', 'Avenida Cataluña', 'Sabadell', 'Barcelona', 'Spain', 08215);

INSERT INTO Invoices (Date, Car, Customer, Salesperson) VALUES
('09-11-2018', 'DAM41UDN3CHU2WVF6', 1, 1),
('15-12-2019', '3K096I98581DHSNUP', 2, 1),
('10-05-2020', 'RKXVNNIHLVVZOUB4M', 3, 2);

