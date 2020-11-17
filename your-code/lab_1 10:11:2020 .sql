
-- CHALLENGE 1:
create database company_tables;
use company_tables;



CREATE TABLE  Cars (
    ID int auto_increment,
    VIN varchar(255),
    Manufacturer varchar(255),
    Model varchar(255),
    Year_  varchar(255),
    Color varchar(255),
    PRIMARY KEY (ID));
    
    
create table Customers ( 
    ID int auto_increment,
    customer_ID int,
    Name_ varchar(255),
    phone int,
    Email varchar(255),
    Address varchar(255),
    City varchar(255),
    State_Province varchar(255),
    Country varchar(255),
    Postal int,
    primary key (ID));
    
create table Salespersons ( 
	ID int auto_increment , 
	Staff_id int ,
    Name_ varchar(255),
    Store varchar(255),
    primary key (ID));
    
create table Invoices (
    ID int auto_increment , 
    Invoice_number int,
    Data_ date,
    Car int,
    Customer int,
    Sales_person int,
    primary key (ID));
    


-- CHALLENGE 2:
drop database lab_mysql;
create database lab_mysql;
use lab_mysql;

drop table Cars;
CREATE TABLE  Cars (
    ID int ,
    VIN varchar(255),
    Manufacturer varchar(255),
    Model varchar(255),
    Year_  varchar(255),
    Color varchar(255));
    
drop table Customers;
create table Customers ( 
    ID int ,
    customer_ID int,
    Name_ varchar(255),
    phone varchar(15),
    Email varchar(255),
    Address varchar(255),
    City varchar(255),
    State_Province varchar(255),
    Country varchar(255),
    Postal int);
    
drop table Salespersons;
create table Salespersons ( 
	ID int  , 
	Staff_id int ,
    Name_ varchar(255),
    Store varchar(255));

drop table Invoices;    
create table Invoices (
    ID int , 
    Invoice_number int,
    Data_ date,
    Car int,
    Customer int,
    Sales_person int);

-- Challenge 3:
INSERT INTO Cars VALUES
(0,	'3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(1,	'ZM8G7BEUQZ97IH46V', 'Peugeot','Rifter' ,	2019, 'Red'),
(2,	'RKXVNNIHLVVZOUB4M', 'Ford' ,  'Fusion' ,	2018, 'White'),
(3,	'HKNDGS7CU31E9Z7JW', 'Toyota',	'RAV4',	2018, 'Silver'),
(4,	'DAM41UDN3CHU2WVF6', 'Volvo' , 'V60',	2019,	'Gray'),
(5,	'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019,'Gray');

select * from Cars;

insert into Customers values 
(0,10001, 'Pablo Picasso', 34636176382, '-', 'Paseo de la Chopera 14',  'Madrid', 'Madrid', 'Spain', 28045),
(1,20001, 'Abraham Lincoln', 13059077086,	'-' ,'120 SW 8th St' , 'Miami', 'Florida',	'United States',33130),
(2,30001, 'Napoléon Bonaparte',	33179754000,'-' , '40 Rue du Colisée',	'Paris','Île-de-France','France',75008);

select * from Customers;

insert into Salespersons values
(0, 00001, 'Petey Cruiser', 'Madrid'),
(1, 00002, 'Anna Sthesia', 'Barcelona'),
(2, 00003, 'Paul Molive', 'Berlin'),
(3, 00004, 'Gail Forcewind', 'Paris'),
(4, 00005, 'Paige Turner', 'Mimia'),
(5, 00006, 'Bob Frapples', 'Mexico City'),
(6, 00007, 'Walter Melon', 'Amsterdam'),
(7, 00008, 'Shonda Leer', 'São Paulo');
select * from Salespersons;

insert into Invoices values
(0, 852399038,	'2018-08-22',	0,	1,	3),
(1,	731166526,	'2018-12-31',	3,	0,	5),
(2,	271135104,	'2019-01-22',	2,	2,	7);

select * from Invoices;

-- Bonus Challenge:



    
    
        