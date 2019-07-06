CREATE DATABASE lab_mysql;
USE lab_mysql;
CREATE TABLE car (
	vin CHAR(7) NOT NULL,
    manufacturer VARCHAR(20) NOT NULL,
    model VARCHAR(20) NOT NULL,
    year_car YEAR NOT NULL,
    colour VARCHAR(20));

CREATE TABLE customer (
	cus_ID CHAR(10) NOT NULL,
    name_cus VARCHAR(20) NOT NULL,
    phone INT(12) NOT NULL,
    email VARCHAR(25) NOT NULL,
    address VARCHAR(35) NOT NULL,
    city VARCHAR(25) NOT NULL,
    state_province VARCHAR(35) NOT NULL,
    country VARCHAR(25) NOT NULL,
    zip_postcode CHAR(25));

CREATE TABLE salesperson (
	staff_ID CHAR(10) NOT NULL,
    staff_name VARCHAR(20) NOT NULL,
    store VARCHAR(20) NOT NULL);
    
CREATE TABLE invoice (
	invoice_number CHAR(15) NOT NULL,
	date_invoice DATE NOT NULL,
	car CHAR(7) NOT NULL,
	customer CHAR(10) NOT NULL,
	salestaff CHAR(10) NOT NULL);
