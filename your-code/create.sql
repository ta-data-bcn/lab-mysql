CREATE DATABASE lab_mysql;

use lab_mysql;

drop table cars;
CREATE TABLE cars (
	ID int not null auto_increment,
    VIN varchar(20),
    car_manufacturer VARCHAR(20),
    car_model VARCHAR(20),
    car_year YEAR,
    car_color VARCHAR(20),
    primary key (ID)
);

drop table customers;
CREATE TABLE customers (
    ID int not null auto_increment,
    cust_id INT,
    cust_name VARCHAR(20),
    cust_phone VARCHAR(20),
    cust_email VARCHAR(20),
    cust_address VARCHAR(50),
    cust_city VARCHAR(20),
    cust_state_province VARCHAR(20),
    cust_country VARCHAR(20),
    cust_zip VARCHAR(20),
    PRIMARY KEY (ID)
);

drop table salespersons;
CREATE TABLE salespersons (
    ID int not null auto_increment,
    staff_id INT,
    staff_name VARCHAR(20),
    staff_store VARCHAR(20),
    PRIMARY KEY (ID)
);

drop table invoices;
CREATE TABLE invoices (
	ID int not null auto_increment,
    inv_id INT,
    inv_date DATE,
    inv_car int,
    inv_cust INT,
    inv_staff INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (inv_car)
        REFERENCES cars (ID),
    FOREIGN KEY (inv_cust)
        REFERENCES customers (ID),
    FOREIGN KEY (inv_staff)
        REFERENCES salespersons (ID)
);
    
