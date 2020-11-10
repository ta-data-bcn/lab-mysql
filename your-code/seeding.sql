
use  lab_MySQL_cars;

/* Seeding cars table*/
INSERT INTO cars 
(VIN, manufacterer, model, car_year, color) VALUES
("3K096I98581DHSNUP", "Volkswagen","Tiguan","2019","Blue"),
("ZM8G7BEUQZ97IH46V", "Peugeot","Rifter","2019","Red"),
("RKXVNNIHLVVZOUB4M", "Ford","Fusion","2018","White"),
("HKNDGS7CU31E9Z7JW", "Toyota","RAV 4","2018","Silver"),
("DAM41UDN3CHU2WVF6", "Volvo","V60","2019","Gray"),
("DAM41UDN3CHU2WVF6", "Volvo","V60 Cross Country","2019","Gray");

/* Seeding customers table*/
INSERT INTO customers 
(customer_id, customer_name, phonenumber, email, adress, city, state, country, postal_code) VALUES
("10001", "Pablo Picasso","+34 636 17 63 82	","-","Paseo de la Chopera, 14","Madrid","Madrid","Spain","28045"),
("20001", "Abraham Lincoln","+1 305 907 7086","-","120 SW 8th St","Miami","Florida","USA","33130"),
("30001", "Napoléon Bonaparte","+33 1 79 75 40 00","-","40 Rue du Colisée","Paris","Île-de-France","France","75008");
delete  from customers where id_number= 3;
select * from customers;

/* Seeding Salesperson table*/
INSERT INTO Salesperson 
(staff_id, salesperson_name, store) VALUES
("00001", "Petey Cruiser","Madrid"),
("00002", "Anna Sthesia","Barcelona"),
("00003", "Paul Molive","Berlin"),
("00004", "Gail Forcewind","Paris"),
("00005", "Paige Turner","Mimia"),
("00006", "Bob Frapples","Mexico City"),
("00007", "Walter Melon	","Amsterdam"),
("00008", "Shonda Leer","Sao Paulo");

/* Seeding invoices table*/
INSERT INTO invoices 
(invoice_number, invoice_date, model, customer_name, salesperson_name) VALUES
("852399038", "22-08-2018","0","1","3"),
("731166526", "31-12-2018","3","0","5"),
("271135104", "22-01-2019","2","2","7");

/* Update values in Salesperson table*/
update Salesperson
set store = "Miami"
where id_number=5;
select * from Salesperson;

/* Update values in customers table*/
update  customers 
set email = "ppicasso@gmail.com"
where id_number = 4;
update  customers 
set email="lincoln@us.gov"
where id_number = 5;
update  customers 
set email="hello@napoleon.me" 
where id_number=6;
select * from customers;

/* Delete duplicate values in cars table*/
delete  from cars where id_number= 5;
select * from cars;