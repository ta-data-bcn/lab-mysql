CREATE DATABASE lab_mysql;
use lab_mysql;

DROP TABLE IF exists cars;
CREATE TABLE cars (
	ID int NOT NULL AUTO_INCREMENT,
	VIN_no varchar(255),
    manufacturer varchar(255),
    model varchar(255),
    year int,
    color varchar(255),
    PRIMARY KEY (ID)
);
select * from cars;

Insert into cars (VIN_no, manufacturer, model, year, color)
values
("3K096I98581DHSNUP","Volkswagen","Tiguan","2019","Blue"),
("ZM8G7BEUQZ97IH46V","Peugeot","Rifter","2019","Red"),
("RKXVNNIHLVVZOUB4M","Ford","Fusion","2018","White"),
("HKNDGS7CU31E9Z7JW","Toyota","RAV4","2018","Silver"),
("DAM41UDN3CHU2WVF6","Volvo","V60","2019","Gray"),
("DAM41UDN3CHU2WVF6","Volvo","V60 Cross Country","2019","Gray");

select * from cars;


DROP TABLE IF exists customers;
CREATE TABLE customers (
	ID int NOT NULL AUTO_INCREMENT,
	customer_id int,
    name varchar(255),
    phone_number varchar(255),
    email varchar(255),
    address varchar(255),
    city varchar(255),
    state varchar(255),
    country varchar(255),
    postal_code int,
    PRIMARY KEY (ID)
);

insert into customers (customer_id, name, phone_number, email, address, city, state, country, postal_code)
values
(10001,"Pablo Picasso","+34 636 17 63 82","-","Paseo de la Chopera, 14","Madrid","Madrid", "Spain", 28045),
(20001,"Abraham Lincoln","+1 305 907 7086","-","120 SW 8th St","Miami","Florida", "United States", 33130),
(30001,"Napoléon Bonaparte","+33 1 79 75 40 00","-","40 Rue du Colisée","Paris","Île-de-France", "France", 75008);

select * from customers;

DROP TABLE IF exists salespersons;
CREATE TABLE salespersons (
	ID int NOT NULL AUTO_INCREMENT,
	staff_id int,
    staff_name varchar(255),
    store varchar(255),
    PRIMARY KEY (ID)
);

insert into salespersons(staff_id, staff_name, store)
values
(00001,"Petey Cruiser","Madrid"),
(00002,"Anna Sthesia","Barcelona"),
(00003,"Paul Molive","Berlin"),
(00004,"Gail Forcewind","Paris"),
(00005,"Paige Turner","Mimia"),
(00006,"Bob Frapples","Mexico City"),
(00007,"Walter Melon","Amsterdam"),
(00008,"Shonda Leer","São Paulo");

DROP TABLE IF exists invoices;
CREATE TABLE invoices (
	ID int NOT NULL AUTO_INCREMENT,
	invoice_no int,
    invoice_date varchar(255),
    car int,
    customer int,
    sales_person int,
    PRIMARY KEY (ID),
    FOREIGN KEY (car) REFERENCES cars(ID),
    FOREIGN KEY (customer) REFERENCES customers(ID),
    FOREIGN KEY (sales_person) REFERENCES salespersons(ID)
);

insert into invoices(invoice_no, invoice_date, car, customer, sales_person)
values
(852399038,"22-08-2018",0,1,3),
(731166526,"31-12-2018",3,0,5),
(271135104,"22-01-2019",2,2,7);
