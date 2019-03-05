
	
CREATE TABLE invoices (
	id BigInt(20) NOT NULL AUTO_INCREMENT,
	invoice_number VARCHAR(256) NOT NULL,
	date Date NOT NULL,
	car varchar(30) NOT NULL,
	costumer VARCHAR(30) NOT NULL,
	sales_person VARCHAR(30) NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT invoices_ibfk_1 FOREIGN KEY(car) REFERENCES cars(VIN),
	CONSTRAINT invoices_ibfk_2 FOREIGN KEY(costumer) REFERENCES costumers(costumer_id),
	CONSTRAINT invoices_ibfk_3 FOREIGN KEY(sales_person) REFERENCES sales_persons(staff_id));
	
	
	
	
CREATE TABLE cars (
	id BigInt(20) NOT NULL AUTO_INCREMENT,
	VIN VARCHAR(30) NOT NULL,
	manufacturer VARCHAR(256) NOT NULL,
	model varchar(256) NOT NULL,
	year date NOT NULL,
	color VARCHAR(30) NOT NULL,
	PRIMARY KEY (id));
	
	
	
CREATE TABLE costumers (
	id BigInt(20) NOT NULL AUTO_INCREMENT,
	costumer_id VARCHAR(30) NOT NULL,
	name VARCHAR(256) NOT NULL,
	phone INT(20) NOT NULL,
	email VARCHAR(256),
	address VARCHAR(256) NOT NULL,
	city VARCHAR(256) NOT NULL,
	state_province VARCHAR(256),
	country VARCHAR(256) NOT NULL,
	zip_postal INT(20) NOT NULL,
	PRIMARY KEY (id));
	
	

CREATE TABLE sales_persons (
	id BigInt(20) NOT NULL AUTO_INCREMENT,
	staff_id VARCHAR(30) NOT NULL,
	name VARCHAR(256) NOT NULL,
	store VARCHAR(256) NOT NULL,
	PRIMARY KEY (id));
