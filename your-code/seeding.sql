USE lab_mysql;

DROP TABLE cars;
CREATE TABLE cars (
	id int primary key auto_increment,
    vin varchar(255),
    manufacturer varchar(255),
    model varchar(255),
    year int,
    color varchar(255)
);

INSERT INTO cars (vin, manufacturer, model, year, color) VALUES 
("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
("ZM8G7BEUQZ97IH46V", "Peugeot",	"Rifter", 2019, "Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

select * from cars;

DROP TABLE customers;
CREATE TABLE customers (
	id int primary key AUTO_INCREMENT,
    customer_id int,
    name varchar(255),
    phone varchar(255),
    email varchar(255),
    address varchar(255),
    city varchar(255),
    stateprovince varchar(255),
    country varchar(255),
    postal int
    );
    
INSERT INTO customers (customer_id, name, phone, email, address, city, stateprovince, country, postal) VALUES
	(10001,	"Pablo Picasso",	"+34 636 17 63 82",	NULL,	"Paseo de la Chopera, 14",	"Madrid",	"Madrid",	"Spain",	28045),
	(20001,	"Abraham Lincoln",	"+1 305 907 7086",	NULL,	"120 SW 8th St",	"Miami",	"Florida",	"United States",	33130),
	(30001,	"Napoléon Bonaparte",	"+33 1 79 75 40 00",	NULL,	"40 Rue du Colisée",	"Paris",	"Île-de-France",	"France",	75008);
    
SELECT * FROM customers;

DROP TABLE salespersons;
CREATE TABLE salespersons (
	id int primary key AUTO_INCREMENT,
    staff_id VARCHAR(255),
    name varchar(255),
    store varchar(255)
    );
    
INSERT INTO salespersons (staff_id, name, store) VALUES
	("00001",	"Petey Cruiser", "Madrid"),
	("00002",	"Anna Sthesia",	"Barcelona"),
	("00003",	"Paul Molive",	"Berlin"),
	("00004",	"Gail Forcewind", "Paris"),
	("00005",	"Paige Turner",	"Mimia"),
	("00006",	"Bob Frapples",	"Mexico City"),
	("00007",	"Walter Melon",	"Amsterdam"),
	("00008",	"Shonda Leer",	"São Paulo");
    
SELECT * FROM salespersons;


drop table invoices;
CREATE TABLE invoices(
	id int PRIMARY KEY AUTO_INCREMENT,
    invoice_no int,
    date varchar(255),
    car_id int,
    customer int,
    salesperson_id int,
	FOREIGN KEY (car_id) REFERENCES cars(id) ON DELETE SET NULL,
    FOREIGN KEY (customer) REFERENCES customers(id) ON DELETE SET NULL,
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id) ON DELETE SET NULL
);

INSERT INTO invoices (invoice_no, date, car_id, customer, salesperson_id) VALUES 
(852399038,	"22-08-2018",	1,	2,	4),
(731166526,	"31-12-2018",	4,	1,	6),
(271135104,	"22-01-2019",	3,	3,	8)
;

SELECT * FROM invoices;
