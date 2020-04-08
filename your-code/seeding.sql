
use lab_mysql;

# challenge 3

insert into cars (vehicle_in,manufacturer,model,model_year,color)
values ('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'white'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'gray'),
('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'gray');

insert into customers (customer_id,cus_name,phone,email,address,city,province,country,zip_code)
values (10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14',
'Madrid','Madrid','Spain',28045),
(20001,'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St',
'Miami','Florida','United States',33130),
(30001,'Napoleon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisee',
'Paris','Ilhe-de-France','France',75008);

insert into salesperson (staff_id,sal_name,store)
values ('00001','Petey Cruiser','Madrid'),
('00002','Anna Sthesia','Barcelona'),
('00003','Paul Molive','Berlin'),
('00004','Gail Forcewind','Paris'),
('00005','Paige Turner','Mimia'),
('00006','Bob Frapples','Mexico City'),
('00007','Walter Melon','Amsterdam'),
('00008','Shonda Leer','Sao Paulo');

insert into invoices (invoice_id,in_date,car_id,cus_id,sta_id)
values (852399038,'2018-08-22',1,2,4),
(731166526,'2018-12-31',4,1,6),
(271135104,'2019-01-22',3,3,8);

#insert

# select * from salesperson;
