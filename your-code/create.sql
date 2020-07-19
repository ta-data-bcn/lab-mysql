#we create the database
create database car_dealership;
#we create the table cars
use car_dealership;
CREATE TABLE cars (VIN VARCHAR(20), Manufacturer VARCHAR(20),
       Model VARCHAR(20), color VARCHAR(20), year DATE);

#I used this to change the type of the column VIN because I created it as int at first
use car_dealership;
alter table  cars
change column VIN VIN VARCHAR(20);
#customers
use car_dealership;
CREATE TABLE customers ( Customer_ID int, Name VARCHAR(20), Phone_Number int,
       Email VARCHAR(20), Adress VARCHAR(20), City VARCHAR(20), State VARCHAR(20), Country VARCHAR(20), Postal_Code int );
#sales person
use car_dealership;
CREATE TABLE sales_person ( Staff_ID int, Name VARCHAR(20), Store VARCHAR(20));
#invoice
use car_dealership;
CREATE TABLE invoice ( Invocie_Num int, Date date, VIN varchar(20), Customer_ID int, Staff_ID int);
