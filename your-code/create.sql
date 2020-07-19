

#CREATE DATABASE lab_mysql;
USE lab_mysql;
CREATE TABLE cars (car_ID INT AUTO_INCREMENT PRIMARY KEY, VIN VARCHAR(30), manufacturer VARCHAR(30), model VARCHAR(30), year INT, color VARCHAR(30));
CREATE TABLE customers (ID INT AUTO_INCREMENT PRIMARY KEY, cust_ID INT, cust_name VARCHAR(60), phone INT, email VARCHAR(200), address VARCHAR(500), city VARCHAR(60), state VARCHAR(60), country VARCHAR(60), CP INT);
CREATE TABLE salespersons (ID INT AUTO_INCREMENT PRIMARY KEY, staff_ID INT, seller_name VARCHAR(60), store VARCHAR(60));
CREATE TABLE invoices (ID INT AUTO_INCREMENT PRIMARY KEY, inv_no INT, date_inv DATE, car_ID INT, cust_ID INT, staff_ID INT);
SHOW TABLES;
DESCRIBE cars;
DESCRIBE customers;
DESCRIBE salespersons;
DESCRIBE invoices;