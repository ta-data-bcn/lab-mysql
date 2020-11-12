USE lab_mysql;

SELECT * FROM cars;

INSERT INTO cars (VIN, manufacturer, model, fabrication_year, color)
VALUES
('3K096I98581DHSNUP','Volswagen','Tiguan','2019','Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray');

SELECT * FROM customers;

INSERT INTO customers (customer_id, name, phone_number, email, address, city, state, country, zip)
VALUES
('10001','Pablo Picasso','+34 636 17 63 82','pablo@hotmail.com','c/El Palacio N201','Oviedo','Asturias','Spain','33127'),
('20001','Luis Alvarez','+34 636 17 30 82','luis@hotmail.com','c/Vauxhall N50','Madrid','Madrid','Spain','50100'),
('30001','David Gonzalez','+34 636 11 63 19','david@hotmail.com','c/Santiago Lopez N6','Pravia','Asturias','Spain','33120'),
('40001','Javier Isla','+34 636 12 63 32','isla@hotmail.com','c/Asturias N25','Barcelona','Barcelona','Spain','99541'),
('50001','Santi Arango','+34 655 17 00 82','arango@hotmail.com','c/San Cugat N30','Barcelona','Barcelona','Spain','44127');

SELECT * FROM salesperson;
INSERT INTO salesperson (staff_id, name, store)
VALUES
('00001','Petey Cruiser','Madrid'),
('00002','Anna Sthesia','Barcelona'),
('00003','Paul Molive','Berlin'),
('00004','Gail Forcewind','Paris'),
('00005','Paige Turner','Mimia');

SELECT * FROM invoices;
INSERT INTO invoices (invoice_number, date, car,customer,sales_person)
VALUES
('1122522','2019-01-20','1','1','2'),
('1133522','2019-06-10','2','3','3'),
('1023552','2019-01-20','3','4','1'),
('1142572','2018-06-22','4','2','4'),
('2925562','2019-01-20','5','5','5');

SELECT * FROM cars;

INSERT INTO cars (VIN, manufacturer, model, fabrication_year, color)
VALUES
('DAM414443CHU2WVF6','Seat','Ibiza','2012','Red');










