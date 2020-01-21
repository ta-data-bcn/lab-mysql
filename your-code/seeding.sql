INSERT INTO Car (VIN, manufacturer, model, year, color) VALUES ('3K096I98581DHSNUP','Tiguan',2019,'Blue');
INSERT INTO Car (VIN, manufacturer, model, year, color) VALUES ('ZM8G7BEUQZ97IH46V','Rifter',2019,'Red');
INSERT INTO Car (VIN, manufacturer, model, year, color) VALUES ('RKXVNNIHLVVZOUB4M','Fusion',2018,'White');
INSERT INTO Car (VIN, manufacturer, model, year, color) VALUES ('HKNDGS7CU31E9Z7JW','RAV4',2018,'Silver');
INSERT INTO Car (VIN, manufacturer, model, year, color) VALUES ('DAM41UDN3CHU2WVF6','V60',2019,'Gray');
INSERT INTO Car (VIN, manufacturer, model, year, color) VALUES ('DAM41UDN3CHU2WVF6','V60 Cross Country',2019,'Gray');

INSERT INTO Customer (customer_ID, name, phone,  address, city, state, country, zip_code) VALUES (10001,'Pablo Picasso','+34 636 17 63 82','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045');
INSERT INTO Customer (customer_ID, name, phone,  address, city, state, country, zip_code) VALUES (20001,'Abraham Lincoln','+1 305 907 7086','120 SW 8th St','Miami','Florida','United States','33130');
INSERT INTO Customer (customer_ID, name, phone,  address, city, state, country, zip_code) VALUES (30001,'Napoléon Bonaparte','+33 1 79 75 40 00','40 Rue du Colisée','Paris','Île-de-France','France','75008');

INSERT INTO Salesperson (staff_ID, name, store) VALUES (1,'Petey Cruiser','Madrid');
INSERT INTO Salesperson (staff_ID, name, store) VALUES (2,'Anna Sthesia','Barcelona');
INSERT INTO Salesperson (staff_ID, name, store) VALUES (3,'Paul Molive','Berlin');
INSERT INTO Salesperson (staff_ID, name, store) VALUES (4,'Gail Forcewind','Paris');
INSERT INTO Salesperson (staff_ID, name, store) VALUES (5,'Paige Turner','Mimia');
INSERT INTO Salesperson (staff_ID, name, store) VALUES (6,'Bob Frapples','Mexico City');
INSERT INTO Salesperson (staff_ID, name, store) VALUES (7,'Walter Melon','Amsterdam');
INSERT INTO Salesperson (staff_ID, name, store) VALUES (8,'Shonda Leer','São Paulo');

INSERT INTO Invoice (invoice_ID, date, car_ID, customer_ID, staff_ID) VALUES (852399038,str_to_date('00:00:00 22-08-2018','%H:%i:%s %d-%m-%Y'),1,20001,3);
INSERT INTO Invoice (invoice_ID, date, car_ID, customer_ID, staff_ID) VALUES (731166526,str_to_date('00:00:00 31-12-2018','%H:%i:%s %d-%m-%Y'),4,10001,5);
INSERT INTO Invoice (invoice_ID, date, car_ID, customer_ID, staff_ID) VALUES (271135104,str_to_date('00:00:00 22-01-2019','%H:%i:%s %d-%m-%Y'),3,30001,7);