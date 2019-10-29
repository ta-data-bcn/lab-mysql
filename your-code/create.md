create database lab_mysql;

create table salespersons
(id int,
staff_id char(12) PRIMARY KEY,
name varchar(15),
store varchar(30)
)
;

create table cars
(id int, 
VIN char(12) PRIMARY KEY,
manufacturer char(15),
model varchar(30),
year int(15),
color varchar(15)
)
;


create table invoices
(id int, 
invoice_number char(12),
date char(8),
car varchar(15),
customer char(30),
salesperson char(30)
)
;

create table customers
(id int, 
customer_id char(12),
name varchar(15),
phone_number char(9),
mail varchar (30),
address varchar (30),
city varchar(30),
state varchar(30),
country varchar(30),
zip char(15)
)
;