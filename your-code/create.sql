create table Cars (id int auto_increment, vin integer(30), manufacturers text(20), model text(50), year year, color text(10), Primary key(id));

create table Sales_person (id int auto_increment, staff_id int(100), staff_name text(10), store text(10), Primary key(id));

create table Invoices (id int auto_increment, invoice_number int, invoice_date datetime, vehicle_id text(20), customer_id int, staff_id int, Primary key(id));

create table Customers (id int auto_increment, customer_name text(15), phone_number integer(15),
email text(15), address text(12), city text(12), state text(10), country text(10), postal_code int(5), Primary key(id));
 

 
