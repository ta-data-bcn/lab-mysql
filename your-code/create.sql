# MYSQL lab

CREATE DATABASE lab_mysql;

USE lab_mysql;

create table invoices (invoices_count INT NOT NULL AUTO_increment,
  invoice_id CHAR(9) , date_p DATETIME,
 VIN VARCHAR(17), customer_id INT(1), staff_id CHAR(5),
  PRIMARY KEY (invoices_count)
 )
;

create table cars (cars_count INT NOT NULL AUTO_increment, 
VIN VARCHAR(17) , manu VARCHAR(14),
 model VARCHAR(14), year_c CHAR(4), color VARCHAR(8),
 PRIMARY KEY (cars_count)
);

create table customers (customer_count INT NOT NULL AUTO_increment,
customer_id INT(1) , flname VARCHAR(20),
 phone CHAR(12), email VARCHAR(21), address VARCHAR(8),
 city VARCHAR(15), state VARCHAR(15) , country VARCHAR(15) ,
 zip CHAR(5), PRIMARY KEY (customer_count)
 );

create table salesperson (salesperson_count INT NOT NULL AUTO_increment,
staff_id CHAR(5) , flname VARCHAR(20),
 store VARCHAR(11), PRIMARY KEY (salesperson_count)
 )
;



