use ironhack_lab;
DROP TABLE customers;
CREATE TABLE IF NOT EXISTS customers (
    `ID` INT,
    `Customer_ID` INT,
    `Name` VARCHAR(30),
    `Phone` VARCHAR(30),
    `Email` VARCHAR(30),
    `Address` VARCHAR(30),
    `City` VARCHAR(20),
    `State_Province` VARCHAR(20),
    `Country` VARCHAR(20),
    `Postal` VARCHAR(10)
);
INSERT INTO customers VALUES
    (0,10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain',28045),
    (1,20001,'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States',33130),
    (2,30001,'Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France',75008);
select * from  customers;

-- Invoices
DROP TABLE invoices;
CREATE TABLE IF NOT EXISTS invoices (
    `ID` INT,
    `Invoice_Number` INT,
    `Date` char(10),
    `Car` INT,
    `Customer` INT,
    `Sales_Person` INT
);
INSERT INTO invoices VALUES
    (0,852399038,'22-08-2018',0,1,3),
    (1,731166526,'31-12-2018',3,0,5),
    (2,271135104,'22-01-2019',2,2,7);
select * from  invoices;
-- salespersons
DROP TABLE salespersons;
CREATE TABLE IF NOT EXISTS salespersons (
    `ID` INT,
    `Staff_ID` NCHAR(5),
    `Name` VARCHAR(30),
    `Store` VARCHAR(20)
);
INSERT INTO salespersons VALUES
    (0,'00001','Peter Cruiser','Madrid'),
    (1,'00002','Anna Sthesia','Barcelona'),
	(2,'00003','Paul Molive','Berlin'),
    (3,'00004','Gail Forcewind','Paris'),
    (4,'00005','Paige Turner','Mimia'),
    (5,'00006','Bob Frapples','Mexico City'),
    (6,'00007','Walter Melon','Amsterdam'),
    (7,'00008','Shonda Leer','São Paulo');
select * from  salespersons;

-- cars
DROP TABLE cars;
CREATE TABLE IF NOT EXISTS cars (
    `ID` INT,
    `VIN` CHAR(17),
    `Manufacturer` VARCHAR(20),
    `Model` VARCHAR(20),
    `Year` INT,
    `Color` VARCHAR(12)
);
INSERT INTO cars VALUES
    (0,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
    (1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
	(2,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
    (3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
    (4,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
    (5,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');
select * from  cars;