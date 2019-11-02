USE lab_mysql;

CREATE TABLE cars (
	VIN varchar(50), 
	manufacturer varchar(30),
	model varchar(30),
	year_a int, 
	color varchar(20),
	cn_id varchar(50)  
);

CREATE TABLE customers (
	customer_id VARCHAR(40),
	name_ VARCHAR(40),
	phone_num VARCHAR(40),
	email VARCHAR(40),
	address VARCHAR(50),
	city VARCHAR(20),
	state_prov VARCHAR(30),
	country VARCHAR(25),
	zip_code VARCHAR(15),
	cun_id varchar(5)
);

CREATE TABLE salesperson (
	staff_id VARCHAR(25), 
	name_salesperson VARCHAR(100),
	store_id VARCHAR(30),
	sn_id VARCHAR(50)
);

CREATE TABLE invoices (
	invoice_number varchar(50),
	date_inv date,
	VIN varchar(50),
	customer_id varchar(50),
	staff_id varchar(50)
);