
CREATE DATABASE lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
	id INT AUTO_INCREMENT,
    VIN VARCHAR(255) NOT NULL,
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    fabrication_year YEAR,
    color VARCHAR(255),
    PRIMARY KEY (id)
);

SELECT * FROM cars;

CREATE TABLE customers (
	id INT AUTO_INCREMENT,
    customer_id INT NOT NULL,
    name VARCHAR(255),
    phone_number VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    zip INT,
    PRIMARY KEY (id)
);

SELECT * FROM customers;

DROP TABLE IF EXISTS salesperson;

CREATE TABLE salesperson (
	id INT AUTO_INCREMENT,
	staff_id INT NOT NULL,
	name VARCHAR(255),
	store VARCHAR(255),
	PRIMARY KEY (id)
);

SELECT * FROM salesperson;

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
	id INT AUTO_INCREMENT,
    invoice_number INT NOT NULL UNIQUE,
    date DATETIME,
    car INT,
    customer INT,
    sales_person INT,
    PRIMARY KEY (id),
    FOREIGN KEY (car) REFERENCES cars (id),
    FOREIGN KEY (customer) REFERENCES customers (id),
    FOREIGN KEY (sales_person) REFERENCES salesperson (id)
);

