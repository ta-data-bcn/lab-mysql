-- CHALLENGE 1: DESIGN DATABASE

-- CHALLENGE 2: CREATE DATABASE AND TABLES
CREATE DATABASE lab_mysql;
USE lab_mysql;

drop table if exists cars;
CREATE TABLE cars(
id INT AUTO_INCREMENT,
VIN INT,
manufacturer VARCHAR(255),
model VARCHAR(255),
yr INT,
color VARCHAR(255),
PRIMARY KEY (id)
);

drop table if exists customers;
CREATE TABLE customers(
id INT AUTO_INCREMENT,
customer_id INT,
customer_name VARCHAR(255),
phone VARCHAR(255),
email VARCHAR(255),
adress VARCHAR(255),
city VARCHAR(255),
state VARCHAR(255),
country VARCHAR(255),
ZIP INT,
PRIMARY KEY (id)
);

drop table if exists salespersons;
CREATE TABLE salespersons(
id INT AUTO_INCREMENT,
staff_id INT,
staff_name VARCHAR(255),
store VARCHAR(255),
PRIMARY KEY (id)
);

drop table if exists invoices;
CREATE TABLE invoices(
id INT AUTO_INCREMENT,
invoice_number INT,
invoice_date DATE,
customer INT,
salesperson INT,
FOREIGN KEY (customer) REFERENCES customers(id),
FOREIGN KEY (salesperson) REFERENCES salespersons(id),
PRIMARY KEY (id)
);