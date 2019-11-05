create table Alex_Navarro.cars
 (car_ID int,
VIN varchar(40),
Manufactor varchar(40),
Model varchar(40),
year_car YEAR,
color varchar(40),
primary key (VIN))
;



create table Alex_Navarro.customers
(customer_num int,
customer_id varchar(40),
name_custom varchar(40),
phone_number varchar(40),
email varchar(40),
address varchar(20),
city varchar(40),
state varchar(40),
country varchar(40),
costal_post varchar(40),
primary key (customer_id))
;

create table Alex_Navarro.invoice
(invoice_ID varchar(40) ,
date_inv DATE,
VIN varchar(40),
customer_id varchar(40),
staff_id varchar(40),
primary key(invoice_ID),
foreign key(VIN) references cars(VIN),
foreign key(customer_id) references customers(customer_id),
foreign key(staff_id) references salespersons(staff_id)
);

 
create table salespersons
(salesperson_num int,
staff_id char(10),
name_staff varchar(14),
store_id char(5),
company varchar(9),
primary key (staff_id)); 



 
 