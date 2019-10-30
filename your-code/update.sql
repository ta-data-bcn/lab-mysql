use lab_mysql;
#################

update lab_mysql.salespersons
set store='Miami'
where store='Mimia'
;

###################

insert into customers
(id, customer_id, name, mail, phone_number, address, city, state, country, zip)
values
(0, 10001,'Pablo Picasso', 'ppicasso@gmail.com','+34 636 17 63 82','Paseo de la Chopera, 14','Madrid', 'Madrid', 'Spain', 28045),
(1, 2002, 'Abraham Lincoln','lincoln@us.gov', '+1 305 907 7086','120 SW 8th St', 'Miami', 'Florida', 'Unites States', 33130)


delete from customers
where mail = '-';

