-- CHALLENGE 3 - Inserting Data into our tables

-- Insert data into table stores
INSERT INTO stores (store_name, address, city, state, zipcode)
VALUES 
('Miami Beach Store', 'Collins Ave 115', 'Miami', 'Florida', 33123),
('New York Lux Store', 'Fifth Ave 502','New York','New York', 45324),
('Chicago Bears Store', 'Seventh Ave 12','Chicago','Illinois', 67543),
('Cisco Store', 'Laurent Ave 01','San Francisco','California', 90210);


-- Insert data into table cars 
INSERT INTO cars (vin_id, manufacturer, model, year, color, store_id)
VALUES 
('3K096I98581DHSNUP','Ferrari', '298', 2019,'red',1),
('ZM8G7BEUQZ97IH46V','Tesla', 'S', 2019,'white',3),
('RKXVNNIHLVVZOUB4M','Lamborghini', 'Aventador', 2019,'orange',2),
('HKNDGS7CU31E9Z7JW','Ferrari', '298', 2019,'black',1),
('DAM41UDN3CHU2WVF6','Mercedes', 'slk', 2018,'black',4),
('DFN41UXN5FDS4GGS9','Mercedes', 'slk', 2018,'black',4),
('AM2G3YETQZ47IF46G','Tesla', 'S', 2019,'white',2);

-- Insert data into table sales_person
INSERT INTO sales_person(name, store_id)
VALUES
('Petey Cruiser', 1),
('Anna Sthesia', 1),
('Paul Molive', 2),
('Gail Forcewind', 2),
('Paige Turner', 3),
('Walter Melon', 4),
('Shonda Leer', 4);

-- Insert data into table customers
INSERT INTO customers (name, phone, email, address, city, state, zipcode)
VALUES 
('John Walsh', '0123 4958 867', 'john.walsh@hotmail.com', 'White Street 456', 'New York', 'New York', 01978),
('Johnny Depp', '0178 4898 867', 'johnny.depp@gmail.com', 'Paradis Avenue 675','San Francisco','California', 08965),
('Patrick Lebowski', '0178 3898 585', 'biglebowski@gmail.com', 'Dude Park 675', 'Miami','Florida' ,08965),
('Jim Carrey', '0960 6867 474', 'jimcarrey@gmail.com', 'Sunlight Way 980', 'Boston','Massachusetts', 90575);

-- Insert data into table invoices
INSERT INTO invoices (date, amount, vin_id, cust_id, staff_id, store_id)
VALUES
('2017-04-09', 22005,'3K096I98581DHSNUP', 3, 6, 1),
('2018-12-12', 33505,'ZM8G7BEUQZ97IH46V', 4, 7, 2),
('2017-10-10', 44098,'RKXVNNIHLVVZOUB4M', 1, 1, 2),
('2017-04-06', 78605,'DFN41UXN5FDS4GGS9', 2, 2, 3),
('2017-04-10', 36505,'AM2G3YETQZ47IF46G', 3, 3, 4);













