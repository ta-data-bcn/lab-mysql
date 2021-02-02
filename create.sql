CREATE DATABASE IF NOT EXISTS LAB_MYSQL_Cars;
USE LAB_MYSQL_Cars;

DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars (
    id_cars INT AUTO_INCREMENT,
    VIN VARCHAR(255),
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    c_year YEAR,
    color VARCHAR(255),
    PRIMARY KEY (id_cars)
)  ENGINE=INNODB;


DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers (
    ID INT AUTO_INCREMENT,
    c_id INT,
    c_name VARCHAR(255),
    phone VARCHAR(255),
    c_email VARCHAR(255),
    c_addres VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(15),
    country VARCHAR(255),
    categ_id INT,
    PRIMARY KEY (ID)
)ENGINE=INNODB;

DROP TABLE IF EXISTS salespersons;
CREATE TABLE IF NOT EXISTS salespersons (
    ID INT AUTO_INCREMENT,
    s_id INT,
    s_name VARCHAR(255),
    store VARCHAR(255),
     PRIMARY KEY (ID)
)ENGINE=INNODB;

DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS invoices (
	ID INT AUTO_INCREMENT,
    i_num INT,
    i_date DATE,
    car_id INT,
    custom_id INT,
    sales_id INT,
    PRIMARY KEY (ID)
)ENGINE=INNODB;