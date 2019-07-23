USE auto_shop;
CREATE TABLE car (
VIN VARCHAR(20),
manufacturer TEXT(10),
model VARCHAR(50),
model_year INT(4),
color TEXT(15),
car_ID INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (car_ID)
);

CREATE TABLE customers (
ID INT NOT NULL AUTO_INCREMENT,
customer_ID INT,
customer_name TEXT,
phone_nr VARCHAR(20),
email VARCHAR(30),
address TEXT,
city TEXT,
state TEXT,
country TEXT,
zip INT,
PRIMARY KEY(ID)
);

CREATE TABLE salespersons (
ID INT NOT NULL AUTO_INCREMENT,
staff_ID INT,
staff_name TEXT,
store TEXT,
PRIMARY KEY (ID)
);

CREATE TABLE invoices (
ID INT NOT NULL AUTO_INCREMENT,
invoice_nr INT,
invoice_date VARCHAR(15),
car TEXT,
customer TEXT,
salesperson TEXT,
PRIMARY KEY (ID)
);



