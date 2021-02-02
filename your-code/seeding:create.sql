CREATE DATABASE IF NOT EXISTS cars_lab;
USE cars_lab;


DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars (
    CAR_ID INT PRIMARY KEY,
    VIN VARCHAR(32),
    manufacturer VARCHAR(32),
    model VARCHAR(32),
    year INT,
    Color VARCHAR(32) );
    

INSERT INTO `cars` VALUES
(0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray')
;
     
    

    
DROP TABLE IF EXISTS Customers;

CREATE TABLE IF NOT EXISTS Customers (
	Customer_ID INT PRIMARY KEY,
    Customer_Iden INT,
    Name VARCHAR(64),
    Phone VARCHAR(64),
    Adress VARCHAR(64),
    City VARCHAR(64),
    State VARCHAR(64),
    Country  VARCHAR(64),
    ZIP INT );
    
    
    
INSERT INTO `Customers` VALUES
(0, 10001, 'Pablo Picasso', '34636176382', ' Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(1, 20001, 'Abraham Lincoln', '13059077086', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(2, 30001, 'Napoléon Bonaparte', '33179754000', '40 Rue du Colisée ', 'Paris', 'Île-de-France', 'France', 75008)
;


    
DROP TABLE IF EXISTS sales_person;

CREATE TABLE IF NOT EXISTS sales_person (
	Sales_person_id INT PRIMARY KEY,
    Staff_id INT,
    Name VARCHAR(32),
    Store VARCHAR(32) );
    
 

INSERT INTO `sales_person` VALUES
(0, '00001', 'Petey Cruiser', 'Madrid'),
(1, '00002', 'Anna Sthesia', 'Barcelona'), 
(2, '00003', 'Paul Molive', 'Berlin'), 
(3, '00004', 'Gail Forcewind', 'Paris'), 
(4, '00005', 'Paige Turner', 'Mimia'), 
(5, '00006', 'Bob Frapples', 'Mexico City'), 
(6, '00007', 'Walter Melon', 'Amsterdam'), 
(7, '00008', 'Shonda Leer', 'São Paulo');
 
    
    
    
DROP TABLE IF EXISTS Invoice;

CREATE TABLE IF NOT EXISTS Invoice (
    ID INT PRIMARY KEY,
    Invoice_n INT,
    Date DATE,
    CAR_ID  INT,
    Customer_ID INT,
    Sales_person_id INT
    );
    
 
 INSERT INTO `Invoice` VALUES
(0, 852399038, '2018-08-22', 0, 1, 3),
(1, 731166526, '2018-12-31', 3, 0, 5),
(2, 271135104, '2019-01-22', 2, 2, 7);
 
 
 
 
 
 

    
    
    
    