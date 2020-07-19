

## table cars

INSERT INTO `cars` VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan',2019, 'BLue');
INSERT INTO `cars` VALUES (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot','Rifter',2019, 'Red');
INSERT INTO `cars` VALUES (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion',2018,'White');
INSERT INTO `cars` VALUES (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');
INSERT INTO `cars` VALUES (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019,'Gray');
INSERT INTO `cars` VALUES (6, 'DAM61UDN3CHU2WVF6', 'Volvo', 'V60 Cross_t Country',2019,'Gray');

SELECT * from cars;

## table customers

INSERT INTO `customers` VALUES (1, 10001, '	Pablo Picasso', 34636176382,'','Paseo de la Chopera, 14','Madrid','Madrid','Spain',28045);
INSERT INTO `customers` VALUES (2, 20001, 'Abraham Lincoln',13059077086,'','120 SW 8th St','Miami','Florida','United States',33130);
INSERT INTO `customers` VALUES (3, 30001, 'Napoléon Bonaparte', 33179754000,'','40 Rue du Colisée','Paris','Île-de-France','France',75008);

Select flname from customers;

## table salesperson

INSERT INTO `salesperson` VALUES (1, 00001, 'Petey Cruiser', 'Madrid');
INSERT INTO `salesperson` VALUES (2, 00002, 'Anna Sthesia','Barcelona');
INSERT INTO `salesperson` VALUES (3, 00003, 'Paul Molive', 'Berlin');
INSERT INTO `salesperson` VALUES (4, 00004, 'Gail Forcewind', 'Paris');
INSERT INTO `salesperson` VALUES (5, 00005, 'Paige Turner', 'Mimia');
INSERT INTO `salesperson` VALUES (6, 00006, 'Bob Frapples', 'Mexico City');
INSERT INTO `salesperson` VALUES (7, 00007, 'Walter Melon', 'Amsterdam');
INSERT INTO `salesperson` VALUES (8 ,00008, 'Shonda Leer', 'São Paulo');

SELECT flname from salesperson;

## table invoices

INSERT INTO `invoices` VALUES (1, 852399038, 22-08-2018, 0,1,3);
INSERT INTO `invoices` VALUES (2, 731166526, 31-12-2018,3,0,5);
INSERT INTO `invoices` VALUES (3, 271135104, 22-01-2019,2,2,7);

select salesperson_count from invoices;


