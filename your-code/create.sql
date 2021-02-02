CREATE DATABASE lab_mysql;
USE DATABASE lab_mysql;
drop table cars;

CREATE TABLE cars (ID INT AUTO_INCREMENT PRIMARY KEY, VIN VARCHAR(20), manufacturer VARCHAR(20), model VARCHAR(20), M_year INT, Color VARCHAR(10));

CREATE TABLE customers (c_ID INT , cname VARCHAR(50), phone VARCHAR(20), email VARCHAR(50) address VARCHAR(150), city VARCHAR(10), state_or_prov VARCHAR(30), country VARCHAR(20), postal INT);

CREATE TABLE salespersons (ID INT AUTO_INCREMENT PRIMARY KEY, staff_id INT, sname VARCHAR(20), store VARCHAR(20));

CREATE TABLE invoices(ID INT AUTO_INCREMENT PRIMARY KEY, invoice_id INT, inv_date DATE, car INT, customer INT, sales_person INT)
