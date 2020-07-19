USE lab_mysql;

#CREATE DATABASE lab_mysql;

CREATE TABLE cars (VIN INT, manufacturer VARCHAR(20), model VARCHAR(20), year INT, color VARCHAR(20));

DESCRIBE CARS;
DROP TABLE cars;

CREATE TABLE customers (customer_id INT, NAME VARCHAR(20), phone_number INT, email VARCHAR(20), address VARCHAR(20), city VARCHAR(20), state_province VARCHAR(20), country VARCHAR(20), zip_postal INT);

DESCRIBE customers;
DROP TABLE customers;

CREATE TABLE salespersons (staff_id INT, NAME VARCHAR(20), store VARCHAR(20));

DESCRIBE SALESPERSONS;
DROP TABLE SALESPERSONS;

CREATE TABLE invoices (invoice_numb INT, date DATE, car VARCHAR(20), customer VARCHAR(20), salesperson VARCHAR(20));

DESCRIBE invoices;
DROP TABLE invoices;