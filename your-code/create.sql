CREATE DATABASE lab_mysql;
USE lab_mysql;

-- CREATE TABLES
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	id_nr int auto_increment,
    vin varchar(255),
    manufacturor varchar(255),
    model varchar(255),
    year year,
    color varchar(255),
    PRIMARY KEY (id_nr)
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
	id_nr int auto_increment,
    staff_id int,
    name varchar(255),
    store varchar(255),
    PRIMARY KEY (id_nr)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	id_nr int auto_increment,
    customer_id int,
    name varchar(255),
    phone_number varchar(255),
    email varchar(255),
    adress varchar(255),
    city varchar(255),
    state varchar(255),
    country varchar(255),
    zip varchar(255),
    PRIMARY KEY (id_nr)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
	id_nr int auto_increment,
    invoice_nr int,
    datum date,
    car int,
    customer int,
    salesperson int,
    PRIMARY KEY (id_nr),
    FOREIGN KEY (car) REFERENCES cars(id_nr),
    FOREIGN KEY (customer) REFERENCES customers(id_nr),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id_nr)
);
    
    SELECT * FROM cars;
