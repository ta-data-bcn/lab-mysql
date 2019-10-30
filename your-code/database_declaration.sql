create database lab_mysql;

DROP TABLE cars;
DROP TABLE salespersons;

DROP TABLE invoices;
DROP TABLE customers;

create table salespersons
(id int,
staff_id int,
name varchar(30),
store varchar(30)
)
;



create table cars
(id int, 
VIN varchar(20),
manufacturer varchar(15),
model varchar(30),
year int(15),
color varchar(15)
)
;



create table invoices
(id int, 
invoice_number int,
date varchar(16),
car int,
customer int,
sales_person int
)
;



create table customers
(id int, 
customer_id varchar(12),
name varchar(15),
phone_number varchar(20),
mail varchar (30),
address varchar (30),
city varchar(30),
state varchar(30),
country varchar(30),
zip char(15)
)
;