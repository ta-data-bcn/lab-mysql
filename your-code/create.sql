CREATE DATABASE lab_mysql;
USE lab_mysql;
CREATE TABLE cars (
	ID MEDIUMINT NOT NULL AUTO_INCREMENT,
	model VARCHAR(50),
    Yr YEAR,
    Color VARCHAR(20),
	City VARCHAR(30),
	City_ID INT(20),
	Car_ID INT(20),
	ECO BOOL,
    PRIMARY KEY (ID)
);

CREATE TABLE customer (
	ID MEDIUMINT NOT NULL AUTO_INCREMENT,
	Customer_l_name VARCHAR(30),
    Customer_f_name VARCHAR(20),
	Customer_ID INT(30),
    Age INT(3),
    Phone INT(20),
	Email VARCHAR(50),
    Address VARCHAR(50),
    City VARCHAR(50),
	City_ID INT(20),
    State_Province VARCHAR(30),
	ZIP_Postal_Code VARCHAR(30),
	Number_visits INT(4),
	Last_visit DATE,
	ECO BOOL,
	Store_ID INT(20),
    PRIMARY KEY (ID)
);

CREATE TABLE salesperson (
	ID MEDIUMINT NOT NULL AUTO_INCREMENT,
    Salesperson_ID INT(20),
	Salesperson_l_name VARCHAR(30),
    Salesperson_f_name VARCHAR(20),
	Store INT(30),
	Store_ID INT(20),
    Num_sales INT(5),
    City VARCHAR(50),
	City_ID INT(20),
    Job_position VARCHAR(30),
    PRIMARY KEY (ID)
);

CREATE TABLE invoice (
	ID MEDIUMINT NOT NULL AUTO_INCREMENT,
	Invoice_ID INT(20),
    Salesperson_l_name VARCHAR(30),
    Salesperson_f_name VARCHAR(20),
	Salesperson_ID INT(20),
    Store INT(30),
	Store_ID INT(20),
    Day_inv DATE,
    City VARCHAR(50),
	City_ID INT(20),
    Car_ID INT(20),
	Customer_ID INT(30),
    PRIMARY KEY (ID)
);
