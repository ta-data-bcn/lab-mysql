-- Create Database
CREATE DATABASE lab_mysql;
USE lab_mysql;

-- Create tables
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS sales_persons;
DROP TABLE IF EXISTS invoices;

CREATE TABLE cars (vin VARCHAR(20), manufacturer VARCHAR(20), model VARCHAR(20), year INT, color VARCHAR(20));
CREATE TABLE customers (customer_id INT, name VARCHAR(20), phone_number VARCHAR(20), email VARCHAR(20), address VARCHAR(30), city VARCHAR(20), state VARCHAR(20), country VARCHAR(20), zip_code INT);
CREATE TABLE sales_persons (staff_id INT, name VARCHAR(20), store VARCHAR(20));
CREATE TABLE invoices (invoice_number INT, date DATE, car INT, customer INT, sales_person INT);

DESCRIBE cars;
DESCRIBE customers;
DESCRIBE sales_persons;
DESCRIBE invoices;