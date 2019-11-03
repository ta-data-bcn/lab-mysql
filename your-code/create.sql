create database lab_mysql;
use lab_mysql;
create table car( VIN INT PRIMARY KEY, manufacturer VARCHAR(60), model VARCHAR(60), year INT, color VARCHAR(60), cost INT(60));

create table customer(id INT PRIMARY KEY, c_id INT , name VARCHAR(60), phone VARCHAR(60), email VARCHAR(60), address VARCHAR(60), city VARCHAR(60), state VARCHAR(60), country VARCHAR(60), postal_code INT);

create table sales(id INT primary key, name varchar(60), storeid varchar(60));

create table invoice(id INT primary key, date datetime, VIN VARCHAR(60), customer INT, sales_id INT, price INT);

create table divisions (id INT primary key, country VARCHAR(60), area VARCHAR(60));