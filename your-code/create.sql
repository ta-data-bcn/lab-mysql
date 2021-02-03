CREATE DATABASE lab_mysql;
use lab_mysql;
CREATE TABLE car(
VIN VARCHAR(225),
manufacturer VARCHAR(225),
model VARCHAR(225),
year VARCHAR(225),
color VARCHAR(225));
CREATE TABLE customers(
customer_ID VARCHAR(225),
name_customer VARCHAR(225),
phone_number VARCHAR(225),
email VARCHAR(225),
address VARCHAR(225),
city VARCHAR(225),
state_province VARCHAR(225),
country VARCHAR(225),
zip_postal VARCHAR(225));
CREATE TABLE salespersons(
staff_ID VARCHAR(225),
name_person VARCHAR(225),
store VARCHAR(225));
CREATE TABLE invoices(
invoice_number VARCHAR(225),
date_sale date, 
car VARCHAR(225),
customer VARCHAR(225),
salesperson VARCHAR(225));
