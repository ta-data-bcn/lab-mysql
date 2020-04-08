
CREATE DATABASE lab_mysql; # challenge 2 Q1

use lab_mysql;

# challenge 2 Q2

CREATE TABLE cars (car_id int auto_increment, vehicle_in varchar(17) not null,
primary key (car_id), manufacturer varchar(30), model varchar(30), model_year int(3),
color varchar(20));

CREATE TABLE customers (cus_id int auto_increment primary key, customer_id int(6) not null,
cus_name varchar(40), phone varchar(17), email varchar(50), address varchar(30),
city varchar(30), province varchar(30), country varchar(30), zip_code int(6));

CREATE TABLE salesperson (sta_id int auto_increment primary key, staff_id int(5) not null,
sal_name varchar(40), store varchar(30));

CREATE TABLE invoices (in_id int auto_increment primary key, invoice_id int(10) not null,
in_date date, car_id int, cus_id int, sta_id int,
foreign key(car_id) references cars(car_id),
foreign key(cus_id) references customers(cus_id),
foreign key(sta_id) references salesperson(sta_id));

/*
in_date date, vehicle_in int, customer_id int, staff_id int,
foreign key(vehicle_in) references cars(vehicle_in),
foreign key(customer_id) references customers(customer_id),
foreign key(staff_id) references salesperson(staff_id));
*/

# challenge 2 Q3

/*
select distinct prime_genre from data;

from data select *;
*/