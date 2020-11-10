create database lab_MySQL_cars;
use  lab_MySQL_cars;
/*Create table for cars*/
DROP TABLE cars;
CREATE TABLE cars (id_number int auto_increment,
    VIN VARCHAR(255),
    manufacterer VARCHAR(255),
    model VARCHAR(255),
    car_year INT,
    color VARCHAR(255),
    PRIMARY KEY (id_number)
);

/*Create table for customers*/
DROP TABLE customers;
CREATE TABLE customers (id_number int auto_increment,
    customer_id VARCHAR(255),
    customer_name VARCHAR(255),
    phonenumber VARCHAR(255),
    email VARCHAR(255),
    adress VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    postal_code VARCHAR(255),
    PRIMARY KEY (id_number)
);

/*Create table for Salesperson*/
DROP TABLE Salesperson;
CREATE TABLE Salesperson (id_number int auto_increment,
    staff_id VARCHAR(255),
    salesperson_name VARCHAR(255),
    store VARCHAR(255),
    PRIMARY KEY (id_number)
);

/*Create table for Invoices*/
DROP TABLE invoices;
CREATE TABLE invoices (id_number int auto_increment,
    invoice_number VARCHAR(255),
    invoice_date VARCHAR(255),
    model VARCHAR(255),
    customer_name VARCHAR(255),
    salesperson_name VARCHAR(255),
    PRIMARY KEY (id_number)
);

