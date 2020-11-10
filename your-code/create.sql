create database 10_nov_lab;
use 10_nov_lab;
drop table Cars;
create table Cars (
	ID mediumint not null auto_increment,
    VIN varchar(255),
    manufacturer varchar(255),
    model varchar(255),
    year varchar(255),
    color varchar(255),
    primary key (ID)
    );
drop table Invoices;
create table Invoices (
	ID mediumint not null auto_increment,
	invoice_ID varchar(255),
    saledate date,
    VIN varchar(255),
    customer_ID varchar(255),
    staff_ID varchar(255),
    invoice_amount float,
    primary key (ID)
    );
create table salespeople (
	ID mediumint not null auto_increment,
    staff_ID varchar(255),
	name varchar(255),
	store_ID varchar(255),
    primary key (ID)
    );
create table Customers (
	ID mediumint not null auto_increment,
    customer_id varchar(255),
    f_name varchar(255),
    l_name varchar(255),
    phone varchar(255),
    email varchar(255),
    address varchar(255),
    city varchar(255),
    state varchar(255),
    country varchar(255),
    zip varchar(255),
    primary key (ID)
    );



