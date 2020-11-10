DROP DATABASE lab_sql_cars;

CREATE DATABASE lab_sql_cars; 
USE lab_sql_cars; 

-- Cars - e.g. the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.

DROP Table if exists cars;				
Create Table cars (
    ID int auto_increment,
    VIN varchar(255),
    manufacturer varchar(255),
    model varchar(255),
    year_release int,
    color varchar(255),
    primary key (ID)
    );

Insert into cars (VIN,manufacturer,model,year_release,color)
Values
("3K096I98581DHSNUP","Volkswagen","Tiguan",2019,"Blue"),
("ZM8G7BEUQZ97IH46V","Peugeot","Rifter",2019,"Red"),
("RKXVNNIHLVVZOUB4M","Ford","Fusion",2018,"White"),
("HKNDGS7CU31E9Z7JW","Toyota","RAV4",2018,"Silver"),
("DAM41UDN3CHU2WVF6","Volvo","V60",2019,"Gray"),
("DAM41UDN3CHU2WVF6","Volvo","V60_Cross_Country",2019,"Gray");

-- customers - e.g. the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.

DROP Table if exists customers;				
Create Table customers  (
    ID int auto_increment,
    customer_ID int,
    Name_customer varchar(255),
    phone_number varchar(255),
    email varchar(255),
    address varchar(255),
    city varchar(255),
    state_province varchar(255),
    country varchar(255),
    zip_code int,
    primary key (ID)
    );

Insert into customers (customer_ID,Name_customer,phone_number,email,address,city,state_province,country,zip_code)
Values
(10001,"Pablo Picasso","+34 636 17 63 82","-","Paseo de la Chopera, 14","Madrid","Madrid","Spain",28045),
(20001,"Abraham Lincoln","+1 305 907 7086","-","120 SW 8th St","Miami","Florida","United States",33130),
(30001,"Napoléon Bonaparte","+33 1 79 75 40 00","-","40 Rue du Colisée","Paris","Île-de-France","France",75008);

-- Salespersons - e.g. staff ID, name, and the store at your company.

DROP Table if exists salespersons;				
Create Table salespersons (
    ID int NOT NULL auto_increment,
    staff_ID int,
    Name_sales_person varchar(255),
    store varchar(255),
    primary key (ID)
    );

Insert into salespersons (staff_ID,Name_sales_person,store)
Values
(00001,"Petey Cruiser","Madrid"),
(00002,"Anna Sthesia","Barcelona"),
(00003,"Paul Molive","Berlin"),
(00004,"Gail Forcewind","Paris"),
(00005,"Paige Turner","Mimia"),
(00006,"Bob Frapples","Mexico City"),
(00007,"Walter Melon","Amsterdam"),
(00008,"Shonda Leer","São Paulo");

-- Invoices - e.g. the invoice number, date, car, customer, and salesperson related to each car sale.

DROP Table if exists invoices;				
Create Table invoices (
    ID int auto_increment,
    invoice_number int,
    date_invoice date,
    car int,
    customer int,
    salesperson int,
    primary key (ID),
    Foreign key(car) References cars(ID),
    Foreign key(customer) References customers(ID),
    Foreign key(salesperson) References salespersons(ID)
    );

Insert into invoices (invoice_number,date_invoice,car,customer,salesperson)
Values
(852399038,20180822,1,1,3),
(731166526,20181231,3,2,5),
(271135104,20190122,2,2,7);

Update salespersons
Set store = "Miami"
Where ID = 4;

Update customers
Set email = "ppicasso@gmail.com"
Where ID = 1;

Update customers
Set email = "lincoln@us.gov"
Where ID = 2;

Update customers
Set email = "hello@napoleon.me"
Where ID = 3;


DELETE from cars 
WHERE ID = 6;


Select * from cars;
Select * from customers;
Select * from salespersons;
Select * from invoices;

