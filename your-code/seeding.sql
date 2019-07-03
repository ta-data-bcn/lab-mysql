INSERT INTO cars (VIN_ID, MANUFACTURER, MODEL, YEAR, COLOUR)
VALUES 
("3K096I98581DHSNUP", "Volkswagen", "Tiguan",  2019, "Blue")
; 

INSERT INTO customer (C_ID, NAME, PHONE_NUM, EMAIL, ADRESS, CITY, STATE, COUNTRY, ZIP)
VALUES
(10001, "Pablo Picasso", "+34636176382", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045")
; 

INSERT INTO invoices (IN_ID, DATE, CAR_VIN, C_ID, ST_ID)
VALUES
("852399038", 02/08/2018, "0", "1", "3")
; 

INSERT INTO sales_pers (ST_ID, NAME, STORE)
VALUES
("00001", "Petey Cruiser", "Madrid")
; 

Select * from cars;
Select * from customer;
Select * from inovices;
Select * from sales_pers;


