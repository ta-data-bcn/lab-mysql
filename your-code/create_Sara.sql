CREATE DATABASE cars_company; 
USE cars_company;


DROP TABLE IF EXISTS cars;
CREATE TABLE cars(
	car_id int auto_increment,
    VIN varchar(255),
    manufacturer varchar(255),
    model varchar(255),
    year int,
    color varchar(255),
    PRIMARY KEY (car_id)
    );


DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
	internal_id int auto_increment,
    customer_id int,
    name varchar(255),
    phone varchar(255),
    email varchar(255),
    adress varchar(255),
    city varchar(255),
    state varchar(255),
    country varchar(255),
    zip_code int,
    PRIMARY KEY (internal_id)
    );
    
    
DROP TABLE IF EXISTS sales_people;
CREATE TABLE sales_people (
	internal_id int auto_increment,
    staff_id int,
    name varchar(255),
    store varchar(255),
    PRIMARY KEY (internal_id)
    );
    
    
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(
	id int auto_increment,
    invoice_number int,
    date date,
    car int,
    customer int,
    sales_person int,
    PRIMARY KEY (id),
    FOREIGN KEY (car) REFERENCES cars(car_id),
    FOREIGN KEY (customer) REFERENCES customers(internal_id),
    FOREIGN KEY (sales_person) REFERENCES sales_people(internal_id)
    );