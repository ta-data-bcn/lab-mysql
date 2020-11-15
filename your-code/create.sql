CREATE SCHEMA lab_mysql;

USE lab_mysql;
/*
CREO LA TABLA DE LOS COCHES QUE SU KEY SERA ID QUE SE RELACIONARÁ CON LA DE INVOICE 
*/

CREATE TABLE cars (
ID int auto_increment,
Manufacter varchar(255),
Model varchar (255),
Year int,
Color varchar (255),
primary key (ID)
);

INSERT INTO cars (Manufacter, Model, Color, Year)
 VALUES
 ("KLJDJFHG7878", "Audi", "Blue", 2010),
 ("JKHYBHBU8329", "Peugot", "Yellow", 2017), 
 ("KJHSDFHJ8373", "Volvo", "Red", 2019), 
 ("JKHSDJSD8923", "Ford", "White", 2011), 
 ("JKHSJHFJ8923", "Toyota", "Black", 2010), 
 ("JHDHJFJD9834", "Mercedes", "Red", 2018);
 
/*
CREO LA TABLA DE LOS CLIENTES QUE SU KEY SERA ID QUE SE RELACIONARÁ CON LA DE INVOICE 
*/

DROP TABLE IF exists Customers; 

CREATE TABLE Customers (
	ID int auto_increment, 
    Customer int, 
    Full_Name varchar (255),
    Phone varchar (30),
    Email varchar (50),
    Address	varchar (255),
    City varchar (255),
    State_Province varchar (50),
    Country	varchar (50),
    Postal int,
    primary key (ID)
);


INSERT INTO Customers (Customer, Full_Name, Phone, Email, Address, City, State_Province, Country, Postal)
VALUES
(10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045'),
(20001,'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States','33130'),
(30001,'Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France','75008');

/*
CREO LA TABLA DE LOS Salespersons QUE SU KEY SERA ID QUE SE RELACIONARÁ CON LA DE INVOICE 
*/
CREATE TABLE SalesPersons (
ID int auto_increment,
Staff_id int,
Name varchar (255),
Store varchar (255),
primary key (ID)
);

INSERT INTO SalesPersons (Staff_id, Name, Store)
VALUES
(00001, "Petey Cruiser", "Madrid"),
(00002, "Anna Sthesia", "Barcelona"),
(00003,	"Paul Molive",	"Berlin"),
(00004,	"Gail Forcewind", "Paris"),
(00005,	"Paige Turner", "Mimia"),
(00006,	"Bob Frapples",	"Mexico City"),
(00007,	"Walter Melon",	"Amsterdam"),
(00008,	"Shonda Leer",	"São Paulo");

/*
CREO LA TABLA DE LOS INVOICE QUE SE RELACIONARA CON CARS ID, CUSTOMER ID Y SALES PERSON ID
*/
DROP TABLE IF exists Invoices;

CREATE TABLE Invoices (
	ID int auto_increment,
    Invoice_number int,
    Invoice_Date Date, 
    Car int, 
    Customer int, 
    Staff int, 
    primary key (ID),
    FOREIGN KEY (Car)
        REFERENCES cars (ID),
    FOREIGN KEY (Customer)
        REFERENCES Customers (ID),
    FOREIGN KEY (Staff)
        REFERENCES SalesPersons (ID)
);

INSERT INTO Invoices (Invoice_number, Invoice_Date, Car, Customer, Staff)
VALUES
(852399038, "2018-08-18", 1, 1, 3),
(731166526,	"2018-12-31", 3, 1, 5),	
(271135104,	"2019-01-12", 2, 2, 7);	

SELECT * FROM Cars;
