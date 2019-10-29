create table Cars
(id int auto_increment, vehicle_id varchar(20), manufacturers varchar(20), model varchar(30), year year, color varchar(10), Primary key(id));

create table Customers
(id int auto_increment, customer_id int, customer_name varchar(30), phone_number varchar(15),
email varchar(50), address varchar(50), city varchar(20), state varchar(20), country varchar(30), postal_code int, Primary key(id));
 
 create table Sales_person
 (id int auto_increment, staff_id int, staff_name varchar(30), store varchar(20), Primary key(id));
 
 create table Invoices
 (id int auto_increment, invoice_number int, invoice_date datetime, vehicle_id varchar(20), customer_id int, staff_id int, Primary key(id));