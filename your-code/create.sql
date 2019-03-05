USE lab_mysql;
CREATE TABLE salesperson 
(record_id BIGINT(20), staff_id VARCHAR(20), name VARCHAR(50), store VARCHAR(20));
CREATE TABLE cars 
(record_id BIGINT(20), vin VARCHAR(20), manufacturer VARCHAR(20), model VARCHAR(40), year YEAR(4), color VARCHAR(20));
CREATE TABLE customers 
(record_id BIGINT(20), customer_id VARCHAR(20), name VARCHAR(50), phone_number VARCHAR(20), email VARCHAR(40), address VARCHAR(100), city VARCHAR(50), state_province VARCHAR(50), country VARCHAR(30), zip_postal VARCHAR(20));
CREATE TABLE invoices 
(record_id BIGINT(20), invoice_number VARCHAR(20), date_sale DATE, car VARCHAR(20), customer VARCHAR(20), salesperson VARCHAR(20));
