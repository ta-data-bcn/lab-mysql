USE lab_mysql;

CREATE TABLE Cars (
	VIN VARCHAR(100),
    Manufacturer VARCHAR(25),
    Car_Model VARCHAR(95),
    Year_Manufactured YEAR,
    TotalRatings FLOAT,
    Car_color VARCHAR(50)
);

CREATE TABLE Customers (
	Customer_ID INT,
    Name_Customer VARCHAR(25),
    Phone VARCHAR(10),
    Email VARCHAR(25),
    Address VARCHAR(60),
    City VARCHAR(20),
    State VARCHAR(60),
    Country VARCHAR(20),
    ZIP_Code INT
);

CREATE TABLE Salespersons (
	Staf_ID INT,
    Name_Staff VARCHAR(50),
    Store VARCHAR(95)
);

CREATE TABLE INVOICES (
	Invoice_Number INT,
	Invoice_Date DATE,
	Car_Model VARCHAR(95),
    Customer_ID INT,
    Salesperson INT
);
