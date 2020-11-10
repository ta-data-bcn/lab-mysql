CREATE DATABASE lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
	id_number int auto_increment,
    VIN varchar(255),
    Manufacturer varchar(255),
    Model varchar(255),
    Year_car int,
    Color varchar(255),
    PRIMARY KEY(id_number)
);


INSERT INTO cars (VIN, Manufacturer, Model, Year_car, Color) values
("3K096I98581DHSNUP","Volkswagen", "Tiguan", "2019", "blue"),
("ZM8G7BEUQZ97IH46V","Peugeot", "Rifter", "2019", "Red"),
("RKXVNNIHLVVZOUB4M","Ford", "Fusion", "2018", "White");

Select * from cars;

DROP TABLE IF EXISTS salesperson;
CREATE TABLE salesperson(
	id_number int auto_increment,
    Staff_ID int,
	Name_person varchar(255),
    Store varchar (255),
    PRIMARY KEY(id_number)
);

INSERT INTO salesperson (Staff_ID, Name_person, Store) values
(00001,"Petey Cruiser", "Madrid"),
(00002,"Anna Sthesia","Barcelona"),
(00003,"Paul Molive","Berlin");

Select * from salesperson;



DROP TABLE IF EXISTS customer;
CREATE TABLE customer(
	id_number int auto_increment,
    Customer_ID int,
	Name_customer varchar(255),
    Phone varchar(255),
    Mail varchar(255) ,
	Adress varchar(255),
    City varchar (255),
    State varchar (255),
    Postal_code int,
    PRIMARY KEY(id_number)
);

INSERT INTO customer (Customer_ID, Name_customer, Phone, Adress, City, State, Postal_code) values
(10001,"Pablo Picasso", "+34 636 17 63 82", "Paseo de la Chopera", "Madrid", "Madrid", 28045),
(20001,"Abraham Lincoln", "+1 305 907 7086", "120 SW 8th St", "Miami", "Florida", 33130),
(30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "40 Rue du Colisée", "Paris", "Île-de-France", 75008);

Select * from customer;


DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(
	id_number int auto_increment,
    Invoice_number int,
	Date_invoice varchar(225),
    Car_number int,
    Customer int,
	Sales_person int,
    PRIMARY KEY(id_number)
);

INSERT INTO invoices (Invoice_number, Date_invoice, Car_number, Customer, Sales_person) values
("852399038","22-08-2018", 0, 1, 3),
("731166526","31-12-2018", 3, 0, 5),
("271135104","22-01-2019", 2, 2, 7);

Select * from invoices;