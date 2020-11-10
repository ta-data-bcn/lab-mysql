CREATE SCHEMA lab_mysql;
-- DROP DATABASE lab_mysql;
use lab_mysql;

DROP TABLE IF exists cars;
DROP TABLE IF exists customers;
DROP TABLE IF exists invoices;
DROP TABLE IF exists salesperson;

CREATE TABLE cars (
	id_no int auto_increment,
	vin_no varchar(255),
    manufacter varchar(255),
    model varchar(255),
    year_rg int,
    color varchar(255),
    primary key (id_no)
);

CREATE TABLE customers (
	id_no int auto_increment,
	customer_ID int,
    cust_name varchar(255),
    phone_number varchar(255),
    email varchar(255),
	city varchar (255),
    country varchar (255),
    primary key (id_no)
);

CREATE TABLE salesperson (
	id_no int auto_increment,
	staff_id int,
    staff_name varchar(255),
    store varchar(255),
    primary key (id_no)
);

CREATE TABLE invoices (
	id_no int auto_increment,
	invoice_no int,
    date_inv varchar(255),
    car varchar(255),
    customer int,
    salesperson int,
    primary key (id_no)
);
