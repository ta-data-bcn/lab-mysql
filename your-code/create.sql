USE lab_mysql;

DROP TABLE Invoices;
CREATE TABLE Invoices (
    invoice_num INT AUTO_INCREMENT NOT NULL UNIQUE,
    date DATE NOT NULL,
    car_vin INT NOT NULL UNIQUE,
    customer_id INT NOT NULL,
    staff_id INT NOT NULL,
    PRIMARY KEY (invoice_num)
);

DROP TABLE Customers;
CREATE TABLE Customers (
    customer_id VARCHAR(30) NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(255),
    address VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255),
    country VARCHAR(255) NOT NULL,
    zip VARCHAR(10),
    PRIMARY KEY (customer_id)
);

DROP TABLE Cars;
CREATE TABLE Cars (
    car_vin VARCHAR(30) NOT NULL UNIQUE,
    manufacturer VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(50),
    PRIMARY KEY (car_vin)
);

DROP TABLE Salesperson;
CREATE TABLE Salesperson (
    staff_id VARCHAR(10) NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    store VARCHAR(255) NOT NULL,
    PRIMARY KEY (staff_id)
);