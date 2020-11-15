-- Creating the database based on design

CREATE DATABASE lab_mysql;

USE lab_mysql;


-- Creating each table
drop table cars;
CREATE TABLE cars ( 
id int auto_increment not null unique,
VIN varchar(255),
manufacturer varchar(255),
model varchar(255),
year int,
color varchar(255),
primary key (id)
);


CREATE TABLE customers (
id int auto_increment,
customer_id int,
name varchar(255),
phone_number varchar(255),
email varchar(255),
address varchar(255),
city varchar(255),
state_province varchar(255),
country varchar(255),
postal_code int,
primary key (id)
);

CREATE TABLE salesperson (
id int auto_increment,
staff_id int,
name varchar(255),
store varchar(255),
primary key (id)
);

CREATE TABLE invoices (
id int auto_increment,
date datetime,
cars_ID varchar(255),
customer int,
salesperson int,
primary key (id)
);

