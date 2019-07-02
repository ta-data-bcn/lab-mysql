-- Creating table sales_person with staff_id as primary key and store_id as foreign key
CREATE TABLE sales_person (
	staff_id INT AUTO_INCREMENT,
	name VARCHAR(50),
	store_id INT,
    
	PRIMARY KEY (staff_id),
	FOREIGN KEY(store_id) REFERENCES stores(store_id)
);

-- Creating table cars with vin_id as the primary key and store_id as a foreign key.
CREATE TABLE cars (
	vin_id VARCHAR(17),
	manufacturer VARCHAR(30),
	model VARCHAR(30),
    year YEAR,
    color VARCHAR(20),
    store_id INT,
    
	PRIMARY KEY (vin_id)
);
-- ----------- Adding the foreign key store_id to the table cars
ALTER TABLE cars
ADD FOREIGN KEY(store_id) REFERENCES stores(store_id)
;



-- -- Creating table invoices with inv_id as primary key and store_id, vin_id, cust_id and staff_id as foreign keys
CREATE TABLE invoices (
	inv_id INT AUTO_INCREMENT,
	date DATE,
	amount FLOAT,
	vin_id VARCHAR(17),
	cust_id INT,
	staff_id INT,
	store_id INT,
	
	PRIMARY KEY (inv_id),
	FOREIGN KEY(store_id) REFERENCES stores(store_id),
	FOREIGN KEY(staff_id) REFERENCES sales_person(staff_id),
	FOREIGN KEY(cust_id) REFERENCES customers(cust_id),
	FOREIGN KEY(vin_id) REFERENCES cars(vin_id)
);

-- Creating table stores with store_id as primary key
CREATE TABLE stores (
	store_id INT AUTO_INCREMENT,
	store_name VARCHAR(50),
	address VARCHAR(500),
    city VARCHAR(300),
    state VARCHAR(300),
    zipcode INT(10)   
    
	PRIMARY KEY (store_id),
);

-- Creating customers stores with cust_id as primary key.
CREATE TABLE stores (
	cust_id INT AUTO_INCREMENT,
	name VARCHAR(50),
    phone VARCHAR(30),
    email VARCHAR(80),
	address VARCHAR(500),
    city VARCHAR(300),
    state VARCHAR(300),
    zipcode INT(10)   
    
	PRIMARY KEY (cust_id),
);





