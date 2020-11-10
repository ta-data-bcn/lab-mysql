CREATE SCHEMA lab_sql;
USE lab_sql;


DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	id INT AUTO_INCREMENT,
	VIN VARCHAR(255),
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    car_year YEAR,
    color VARCHAR(255),
    PRIMARY KEY (id)
    );

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	id INT AUTO_INCREMENT,
	customer_id INT,
    customer_name VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state_province VARCHAR(255),
    country VARCHAR(255),
    postal INT,
    PRIMARY KEY (id)
    );

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
	id INT AUTO_INCREMENT,
	staff_id INT,
    staff_name VARCHAR(255),
    store VARCHAR(255),
    PRIMARY KEY (id)
    );
    
    

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
	id INT AUTO_INCREMENT,
	invoice_num INT,
    in_date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY(car_id) REFERENCES cars(id),
    FOREIGN KEY(customer_id) REFERENCES customers(id),
    FOREIGN KEY(salesperson_id) REFERENCES salespersons(id)
    );