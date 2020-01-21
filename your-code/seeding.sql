#CUSTOMERS

INSERT INTO `Customers`(`customer_ID`, `name`, `phone`,`email`,`address`,`city`,`state`,`zip`,`country`) VALUES (10001, "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", 28045,"Spain");
INSERT INTO `Customers`(`customer_ID`, `name`, `phone`,`email`,`address`,`city`,`state`,`zip`,`country`) VALUES (20001, "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Madrid", "Florida", 33130,"United States");
INSERT INTO `Customers`(`customer_ID`, `name`, `phone`,`email`,`address`,`city`,`state`,`zip`,`country`) VALUES (30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", 75008,"France");

#CARS
INSERT INTO `Cars`(`vin`, `manufacturer`, `model`,`year`,`color`) VALUES ("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue");
INSERT INTO `Cars`(`vin`, `manufacturer`, `model`,`year`,`color`) VALUES ("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red");
INSERT INTO `Cars`(`vin`, `manufacturer`, `model`,`year`,`color`) VALUES ("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White");
INSERT INTO `Cars`(`vin`, `manufacturer`, `model`,`year`,`color`) VALUES ("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver");
INSERT INTO `Cars`(`vin`, `manufacturer`, `model`,`year`,`color`) VALUES ("DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray");
INSERT INTO `Cars`(`vin`, `manufacturer`, `model`,`year`,`color`) VALUES ("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

#Salespersons
INSERT INTO `Salespersons`(`salesperson_ID`, `name`, `store`) VALUES (00001, "Petey Cruiser", "Madrid");
INSERT INTO `Salespersons`(`salesperson_ID`, `name`, `store`) VALUES (00002, "Anna Sthesia", "Barcelona");
INSERT INTO `Salespersons`(`salesperson_ID`, `name`, `store`) VALUES (00003, "Paul Molive", "Berlin");
INSERT INTO `Salespersons`(`salesperson_ID`, `name`, `store`) VALUES (00004, "Gail Forcewind", "Paris");
INSERT INTO `Salespersons`(`salesperson_ID`, `name`, `store`) VALUES (00005, "Paige Turner", "Mimia");
INSERT INTO `Salespersons`(`salesperson_ID`, `name`, `store`) VALUES (00006, "Bob Frapples", "Mexico City");
INSERT INTO `Salespersons`(`salesperson_ID`, `name`, `store`) VALUES (00007, "Walter Melon", "Amsterdam");
INSERT INTO `Salespersons`(`salesperson_ID`, `name`, `store`) VALUES (00008, "Shonda Leer", "São Paulo");

#Invoices
INSERT INTO `Invoices`(`invoice_number`, `date`) VALUES (852399038, 20180822);
INSERT INTO `Invoices`(`invoice_number`, `date`) VALUES (731166526, 20181231);
INSERT INTO `Invoices`(`invoice_number`, `date`) VALUES (271135104, 20190122);

#why did my ID start 1 and not 0? so I got an error when I referrenced to another table
UPDATE `Invoices`SET `car`=0 WHERE ID=1 ;
UPDATE `Invoices`SET `salesperson`=3 WHERE ID=1 ;
UPDATE `Invoices`SET `customer`=1 WHERE ID=1 ;
UPDATE `Invoices`SET `car`=3 WHERE ID=2 ;
UPDATE `Invoices`SET `salesperson`=5 WHERE ID=2 ;
UPDATE `Invoices`SET `customer`=1 WHERE ID=2 ;
UPDATE `Invoices`SET `car`=2 WHERE ID=3 ;
UPDATE `Invoices`SET `customer`=3 WHERE ID=2 ;
UPDATE `Invoices`SET `salesperson`=7 WHERE ID=3 ;