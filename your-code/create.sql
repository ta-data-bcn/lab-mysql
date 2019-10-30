USE sql_lab;

CREATE TABLE cars (
    id INT AUTO_INCREMENT,
	vin VARCHAR(30),
	manufacturer VARCHAR(30),
	model VARCHAR(30),
	year SMALLINT,
	color VARCHAR(30),
    PRIMARY KEY (id))
    ;

CREATE TABLE customers (
	id INT AUTO_INCREMENT,
    cust_id VARCHAR(30),
	name VARCHAR(30),
	phone VARCHAR(30),
	email VARCHAR(30),
	address VARCHAR(30),
	city VARCHAR(30),
	province VARCHAR(30),
	country VARCHAR(30),
	zip VARCHAR(30),
    PRIMARY KEY (id));

CREATE TABLE salesperson (
	id INT AUTO_INCREMENT,
    staff_id VARCHAR(30),
	name VARCHAR(30),
	store VARCHAR(30),
    PRIMARY KEY (id));

CREATE TABLE invoice (
    id INT AUTO_INCREMENT,
	inv_num VARCHAR(30),
	date DATE,
    cars_id INT,
    cust_id INT,
    staff_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (cars_id) REFERENCES cars(id),
    FOREIGN KEY (cust_id) REFERENCES customers(id),
    FOREIGN KEY (staff_id) REFERENCES salesperson(id))
    ;
    
SELECT *
From Cars;

