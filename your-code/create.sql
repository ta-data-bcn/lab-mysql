CREATE TABLE Customers (
	customers_ID INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (customers_ID),
	first_name VARCHAR(60),
	last_name VARCHAR(60),
	phone VARCHAR(14),
	email VARCHAR (80),
	address VARCHAR(40),
	city VARCHAR (30),
	state VARCHAR(30),
	country VARCHAR (30),
	zip VARCHAR(20)            
	);
	
	DROP TABLE Customers;
	
	CREATE TABLE Manufacturers (
	manufacturer_ID INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (manufacturer_ID),
	name VARCHAR(40)
	);
	
	DROP TABLE Manufacturers;
	
	CREATE TABLE Cars (
	VIN INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (VIN),
	manufacturer_ID INT NOT NULL,
	model VARCHAR(50),
	year INT,
	color VARCHAR(20),
	price DECIMAL(7) NOT NULL,
	FOREIGN KEY (manufacturer_ID) REFERENCES Manufacturers (manufacturer_ID)
	);
	
	DROP TABLE Cars;
	
	CREATE TABLE Stores (
	store_ID INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (store_ID),
	name VARCHAR (30),
	phone VARCHAR(14),
	city VARCHAR (30),
	state VARCHAR(30),
	country VARCHAR (30),
	zip VARCHAR(20)            
	);
	
	DROP TABLE Stores;
	
	CREATE TABLE Salesperson (
	staff_ID INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (staff_ID),
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	phone VARCHAR(14),
	store_ID INT NOT NULL,
	FOREIGN KEY (store_ID) REFERENCES Stores (store_ID)
	);
	
	
	DROP TABLE Salesperson;
	
	CREATE TABLE Orders (
	orders_ID INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (orders_ID),
	VIN INT NOT NULL, 
	customers_ID INT NOT NULL,
	store_ID INT NOT NULL,
	staff_ID INT NOT NULL,
	quantities INT,
	FOREIGN KEY (VIN) REFERENCES Cars (VIN),
	FOREIGN KEY (customers_ID) REFERENCES Customers (customers_ID),
	FOREIGN KEY (store_ID) REFERENCES Stores (store_ID),
	FOREIGN KEY (staff_ID) REFERENCES Salesperson (staff_ID)
	);
	
	DROP TABLE Orders;
	
	CREATE TABLE Invoices (
	invoice_ID INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (invoice_ID),
	date DATETIME,
	VIN INT NOT NULL, 
	staff_ID INT NOT NULL,
	FOREIGN KEY (VIN) REFERENCES Cars (VIN),
	FOREIGN KEY (staff_ID) REFERENCES Salesperson (staff_ID)
	);

	