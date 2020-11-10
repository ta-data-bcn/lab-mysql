use lab_mysql;
INSERT INTO cars (vin_no, manufacter, model, year_rg, color) values
('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford','Fusion',2018,'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota',	'RAV4',	2018,'Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60',	2019,'Gray'),
('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray'); 

select * from cars;

INSERT INTO customers (customer_ID, cust_name, phone_number, city, country) values
(10001,	'Pablo Picasso','0034636176382','Madrid','Spain'),
(20001,	'Abraham Lincoln','0013059077086','Miami','United States'),
(30001,	'Napoléon Bonaparte', '0033179754000','Paris','France');

select * from customers;

INSERT INTO invoices (invoice_no, date_inv, car, customer, salesperson) values
(852399038,	'22-08-2018',0,1,3),
(731166526, '31-12-2018',3,0,5),
(271135104,	'22-01-2019',2,2,7);

select * from invoices;

INSERT INTO salesperson (staff_id, staff_name, store) values
(00001,	'Petey Cruiser','Madrid'),
(00002,	'Anna Sthesia','Barcelona'),
(00003,	'Paul Molive','Berlin'),
(00004,	'Gail Forcewind','Paris'),
(00005,	'Paige Turner','Mimia'),
(00006,	'Bob Frapples','Mexico City'),
(00007,	'Walter Melon','Amsterdam');

select * from salesperson; 
INSERT INTO salesperson (staff_id, staff_name, store) values
(00008,	'Shonda Leer','São Paulo');


