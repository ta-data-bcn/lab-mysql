USE lab_mysql;

CREATE TABLE salespersons (auto_sp_id int NOT NULL AUTO_INCREMENT UNIQUE, salesperson_id int NOT NULL UNIQUE,
       store_id int NOT NULL, name varchar(25), lname varchar(50), sex CHAR(1), birth DATE, hire_date DATE, end_contract DATE, release_reason varchar(20));

CREATE TABLE stores (auto_store_id int NOT NULL AUTO_INCREMENT UNIQUE, store_id int NOT NULL UNIQUE,
       city varchar(30), country varchar(25), address varchar(90), state_prov varchar(25));

CREATE TABLE invoices (auto_inv_id int NOT NULL AUTO_INCREMENT UNIQUE, invoice_id int NOT NULL UNIQUE,
       car_id int, date date, customer_id int, salesperson_id int);

CREATE TABLE customers (auto_cust_id int NOT NULL AUTO_INCREMENT UNIQUE, customer_id int NOT NULL UNIQUE,
      name varchar(30), lname varchar(30), phone varchar(20), email varchar(50), address varchar(50), city varchar(25), zip_post_code varchar(25), country varchar(30), state_prov varchar(30));


CREATE TABLE cars (auto_car_id int NOT NULL AUTO_INCREMENT UNIQUE, car_id int NOT NULL UNIQUE,
      VIN varchar(25), year int, color varchar(15), manufacturer varchar(25), model varchar(25));