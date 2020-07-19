#SEEDING THE TABLES 

INSERT INTO Cars VALUES (0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue");
INSERT INTO Cars VALUES (1, "ZM8G7BEUQZ97IH46V", 'Peugeot', 'Rifter', 2019, 'Red');
INSERT INTO Cars VALUES (2, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White");
INSERT INTO Cars VALUES (3, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver");
INSERT INTO Cars VALUES (4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray");
INSERT INTO Cars VALUES (5, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

INSERT INTO Customers VALUES (0,10001, "Pablo Picasso", "+34636176382", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045);
INSERT INTO Customers VALUES (0,20001, "Abraham Lincoln", "+13059077086", "-", "120 SW 8th St", "Miami", "Florida", "United States", 33130);
INSERT INTO Customers VALUES (0,30001, "Napoléon Bonaparte", "+33179754000", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);

INSERT INTO Salespersons (`Staf_ID`, `Name_Staff`, Store) VALUES (00001, 'Petey Cruiser', 'Madrid');
INSERT INTO Salespersons (`Staf_ID`, `Name_Staff`, Store) VALUES (00002,	'Anna Sthesia', 'Barcelona');
INSERT INTO Salespersons (`Staf_ID`, `Name_Staff`, Store) VALUES (00003, 'Paul Molive', 'Berlin');
INSERT INTO Salespersons (`Staf_ID`, `Name_Staff`, Store) VALUES (00004, 'Gail Forcewind', 'Paris'); 
INSERT INTO Salespersons (`Staf_ID`, `Name_Staff`, Store) VALUES (00005,	'Paige Turner', 'Mimia');
INSERT INTO Salespersons (`Staf_ID`, `Name_Staff`, Store) VALUES (00006, 'Bob Frapples', 'Mexico City');
INSERT INTO Salespersons (`Staf_ID`, `Name_Staff`, Store) VALUES (00007, 'Walter Melon', 'Amsterdam');
INSERT INTO Salespersons (`Staf_ID`, `Name_Staff`, Store) VALUES (00008, 'Shonda Leer', 'São Paulo');

INSERT INTO INVOICES (`Invoice_Number`, `Invoice_Date`, `Car_Model`, `Customer_ID`, `Salesperson`) VALUES (852399038, '2018-08-22 00:00:00', '3K096I98581DHSNUP', 20001,	00004);
INSERT INTO INVOICES (`Invoice_Number`, `Invoice_Date`, `Car_Model`, `Customer_ID`, `Salesperson`) VALUES (731166526, '2018-12-31 00:00:00', 'HKNDGS7CU31E9Z7JW', 10001,	00006);
INSERT INTO INVOICES (`Invoice_Number`, `Invoice_Date`, `Car_Model`, `Customer_ID`, `Salesperson`) VALUES (271135104, '2019-01-22 00:00:00', 'RKXVNNIHLVVZOUB4M', 30001,	00008);