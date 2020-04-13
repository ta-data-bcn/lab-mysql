

INSERT INTO cars (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue');
INSERT INTO cars (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Rifter', '2019', 'Red');
INSERT INTO cars (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Fusion', '2019', 'White');
INSERT INTO cars (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES ('RKXVNNIHLVVZOUB4M', 'Toyota', 'RAV4', '2018', 'Silver');
INSERT INTO cars (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES ('HKNDGS7CU31E9Z7JW', 'Volvo', 'V60', '2018', 'Gray');
INSERT INTO cars (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');

select * from cars

"delete from cars where id=2"

DROP TABLE `Costumers`
CREATE TABLE `Customers` ( `ID` INT(6) AUTO_INCREMENT, PRIMARY KEY (ID), `Customer ID` INT(6), `Name` VARCHAR(30), `Phone` VARCHAR(20),	
`Email` VARCHAR(50), `Address` VARCHAR(50),	`City` VARCHAR(20), `State/Province` VARCHAR(20), `Country` VARCHAR(20), `Postal` VARCHAR(20))

INSERT INTO customers (`Customer ID`, `Name`, `Phone`, `Email`, `Address`, `City`, `State/Province`, `Country`, `Postal`) VALUES ('10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', '28045');
INSERT INTO customers (`Customer ID`, `Name`, `Phone`, `Email`, `Address`, `City`, `State/Province`, `Country`, `Postal`) VALUES ('20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130');
INSERT INTO customers (`Customer ID`, `Name`, `Phone`, `Email`, `Address`, `City`, `State/Province`, `Country`, `Postal`) VALUES ('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée 14', 'Paris', 'Île-de-France', 'France', '75008');


DROP TABLE `salesperson`

CREATE TABLE `Salesperson` ( `ID` INT(10) AUTO_INCREMENT, PRIMARY KEY (ID), `Staff ID` INT(20), `Name` VARCHAR(30), `Store` VARCHAR(20))

INSERT INTO Salesperson (`Staff ID`, `Name`, `Store`) VALUES ('00001', 'Petey Cruiser', 'Madrid');
INSERT INTO Salesperson (`Staff ID`, `Name`, `Store`) VALUES ('00002', 'Anna Sthesia', 'Barcelona');
INSERT INTO Salesperson (`Staff ID`, `Name`, `Store`) VALUES ('00003', 'Paul Molive', 'Berlin');
INSERT INTO Salesperson (`Staff ID`, `Name`, `Store`) VALUES ('00004', 'Gail Forcewind',	'Paris');
INSERT INTO Salesperson (`Staff ID`, `Name`, `Store`) VALUES ('00005', 'Paige Turner', 'Mimia');
INSERT INTO Salesperson (`Staff ID`, `Name`, `Store`) VALUES ('00006', 'Bob Frapples', 'Mexico City');
INSERT INTO Salesperson (`Staff ID`, `Name`, `Store`) VALUES ('00007', 'Walter Melon', 'Amsterdam');
INSERT INTO Salesperson (`Staff ID`, `Name`, `Store`) VALUES ('00008', 'Shonda Leer', 'São Paulo');

SELECT * FROM SALESPERSON

INSERT INTO Invoices (`Invoice Number` , `Date` , `Car` , `Costumer`, `Sales Person`) values ('852399038', '22-08-2018', '0', '1', '3');
INSERT INTO Invoices (`Invoice Number` , `Date` , `Car` , `Costumer`, `Sales Person`) values ('731166526', '31-12-2018', '3', '0', '5');
INSERT INTO Invoices (`Invoice Number` , `Date` , `Car` , `Costumer`, `Sales Person`) values ('271135104', '22-01-2019', '2', '2', '7');
