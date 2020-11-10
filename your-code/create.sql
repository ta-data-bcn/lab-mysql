-- Create the Database and Tables and seeding the Darabase
DROP DATABASE lab_database;
CREATE DATABASE lab_database;

USE lab_database;

drop table if exists cars_table;
create table cars_table (
	id_number int auto_increment,
    VIN varchar(255),
    Manufacturer varchar(255),
    Model varchar(255),
    Year int,
    Color varchar(255),
    PRIMARY KEY (id_number)
    );
    INSERT INTO cars_table (VIN, Manufacturer, Model, Year, Color)
VALUES
("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
("M8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
("RKXVNNIHLVVZOUB4M", "Ford","Fusion", 2018,"White");
    
    select * from cars_table;
    
    drop table if exists customers_table;
create table customers_table (
	id_number int auto_increment,
	Customer_ID int,
    Name varchar(255),
    Phone bigint,
    Email varchar(255),
    Adress varchar(255),
    City varchar(255),
    State_Province varchar(255),
    Country varchar(255),
    Postal int,
    PRIMARY KEY (id_number)
    );
    INSERT INTO customers_table (Customer_ID, Name, Phone, Email, Adress, City, State_Province, Country, Postal)
VALUES
(10001, "Pablo Picasso", 0034636176382, NULL, "Paseo de la Chopera, 14", "Madrid","Madrid", "Spain", 28100),
(10002, "Abraham Lincoln", 0013059077086, NULL, "120 SW 8th St", "Miami","Florida", "United States", 13130),
(10003, "Napoléon Bonaparte", 0033179754000, NULL, "40 Rue du Colisée", "Paris","France", "Île-de-France",75100);

    select * from customers_table;
    
       drop table if exists salespersons_table;
create table salespersons_table (
	id_number int auto_increment,
    Staff_ID int,
    Name varchar(255),
    Store varchar(255),
    PRIMARY KEY (id_number)
    );
    INSERT INTO salespersons_table (Staff_ID, Name, Store)
VALUES
(0001, "Petey Cruiser", "Madrid"),
(0002, "Anna Sthesia", "Barcelona"),
(0003, "Paul Molive", "Berlin");
  
    select * from salespersons_table;
    
    drop table if exists invoices_table;
create table invoices_table (
	id_number int auto_increment,
    Invoice_Number bigint,
    Date varchar(255),
	Car int,
    Customer int,
    Sales_Person int,
    PRIMARY KEY (id_number),
    FOREIGN KEY (Customer) REFERENCES customers_table(id_number),
    FOREIGN KEY (Car) REFERENCES cars_table(id_number),
    FOREIGN KEY (Sales_Person) REFERENCES salespersons_table(id_number)
    );
    
  INSERT INTO invoices_table (Invoice_Number, Date, Car, Customer, Sales_Person)
VALUES
(852399038, "22-08-2018", 1, 1, 1),
(731166526, "31-12-2018", 1, 2, 2),
(271135104, "22-01-2019", 2, 1, 2);

select * from invoices_table;