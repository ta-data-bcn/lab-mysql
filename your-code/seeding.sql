-- CHALLENGE 3: SEEDING THE DATABASE

USE lab_mysql;

-- Seeding the cars table
INSERT INTO Cars (VIN, Manufacturer, Model, Yr, Color) VALUES
(67339654, "Audi", "e-Tron", 2019, "Grey"),
(89462948, "BMW", "Serie-3", 2019, "Blue"),
(44576993, "Ford", "Focus", 2019, "Blue"),
(65465439, "Volvo", "Genesis", "2019", "G70", "Black"),
(24364348, "Jaguar", "I-Pace", 2019, "Black"),
(55642323, "Mercedes", "Clase-A", 2019, "White");
SELECT * from cars;

-- Seeding the customers table
INSERT INTO Customers (Customer_id, Customer_name, Phone, Email, Adress, City, State, Country, ZIP) VALUES
(78634, "Oriol Tallada", "+34 64893450", "ocell@gmail.com", "C/Origy, 14", "Sant Cugat", "Barcelona", "Spain", "08172"),
(73864, "Arnau Angerri", "+34 654789233", "arnie@gmail.com", "C/Leo Messi, 10", "Sant Cugat", "Barcelona", "Spain", "08172"),
(98348, "David B. Johnson", "+1 73992320832", "deivid@gmail.com", "Trump St. 12", "Richmond", "VA", "United States", "23173"),
(27173, "Ricard Creixell", "+34 653892209", "riqui@gmail.com", "C/Patins, 69", "Badalona", "Barcelona", "Spain", "08343"),
(27327, "Cristian de Smedt", "+34 653782299", "cristian@gmail.com", "C/Ben Sims, 165", "Sant Cugat", "Barcelona", "Spain", "08172");
SELECT * from customers;

-- Seeding the salespersons table
INSERT INTO Salespersons (Staff_id, Staff_name, Store) VALUES
(0634, "Andre Santaclara", "Lisboa"),
(0745, "Miguel Simón", "Valencia"),
(0426, "Anna Fonte", "Andorra La Vella"),
(0343, "Pol Serramalera", "Barcelona"),
(0309, "Raul Castrillo", "Viladecans");
SELECT * FROM Salespersons;

-- Seeding the invoices table (I'm not seeding the customer and 
-- salesperson columns as they depend on foreign key and raises error).
INSERT INTO Invoices (Invoice_number, Invoice_date) VALUES
(12345, 20190901),
(48329, 20190203),
(12438, 20190119),
(32258, 20190421);
SELECT * FROM Invoices;