USE lab_mysql1;
-- CREATE TABLES
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (VIN varchar(255), manufacturer varchar(255), model varchar(255), year int, color varchar(255), car_id  int NOT NULL auto_increment, PRIMARY KEY (car_id) );

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (cust_id  int NOT NULL auto_increment, name VARCHAR(255), phone VARCHAR(255), email VARCHAR(255), address VARCHAR(255),city VARCHAR(255) ,state_province VARCHAR(255), country VARCHAR(255),zip_postal INT, PRIMARY KEY (cust_id) );

DROP TABLE IF EXISTS sales_person;
CREATE TABLE  sales_person (staff_id  int NOT NULL auto_increment, name VARCHAR(255), store_id VARCHAR(255), PRIMARY KEY (staff_id) );

DROP TABLE IF EXISTS invoices;
CREATE TABLE  invoices (invoice_num int NOT NULL auto_increment, date DATE, car_id int, cust_id int, staff_id int, PRIMARY KEY (invoice_num) );