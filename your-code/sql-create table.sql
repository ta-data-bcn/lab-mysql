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

insert into Alex_Navarro.cars 
values(0,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(2,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White');

insert into customers
values(0,10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo Chopera, 14','Madrid','Madrid','Spain',28045),
(1,	20001,	'Abraham Lincoln',	'+1 305 907 7086','-','	120 SW 8th St','Miami','Florida',	'United States',33130),
(2,	30001,	'Napoléon Bonaparte','33 1 79 75 40 00','-','40 Rue du Colisée',	'Paris'	,'Île-de-France','France',75008);


 
 