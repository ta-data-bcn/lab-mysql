-- CHALLENGE 3: SEEDING THE DATABASE

USE lab_mysql;

-- Seeding the cars table
INSERT INTO cars (VIN, manufacturer, model, yr, color) VALUES
(39339643, "Mercedes-Benz", "Class A", 2019, "Blue"),
(37462984, "Volkswagen", "Golf", 2014, "Yellow"),
(97576939, "Peugeot", "206", 2002, "White"),
(89465493, "Volvo", "V60", 2015, "Blue"),
(97364384, "Porsche", "Carrera", 2018, "Black"),
(73642332, "Porsche", "Cayenne", 2017, "White");
SELECT * from cars;

-- Seeding the customers table
INSERT INTO customers (customer_id, customer_name, phone, email, adress, city, state, country, ZIP) VALUES
(78634, "Erik Termes", "+34 612345673", "eriktermes@gmail.com", "C/Universitat, 12", "Rubi", "Barcelona", "Spain", "06521"),
(73864, "Arnau Angerri", "+34 686453786", "arnaueldiable@gmail.com", "C/del Diable, 20", "Sant Cugat", "Barcelona", "Spain", "07323"),
(98348, "Aine Gates", "+1 73439238023", "ainegates@gmail.com", "American St. 12", "Newcastle", "CA", "United States", "8239"),
(27173, "Miguel Chachon", "+34 690765235", "miguelchachon@gmail.com", "C/Barcelona, 89", "Barcelona", "Barcelona", "Spain", "08343"),
(27327, "Oscar Tomas", "+34 662132191", "oscartomas@gmail.com", "C/Marina, 236", "Gavà", "Barcelona", "Spain", "08734");
SELECT * from customers;

-- Seeding the salespersons table
INSERT INTO salespersons (staff_id, staff_name, store) VALUES
(0634, "Andre Santaclara", "Barcelona"),
(0745, "Sergio Monge", "Madrid"),
(0426, "Anna Fonte", "Porto"),
(0343, "Pol Serramalera", "Barcelona"),
(0309, "Raul Castrillo", "Viladecans");
SELECT * FROM salespersons;

-- Seeding the invoices table (I'm not seeding the customer and 
-- salesperson columns as they depend on foreign key and raises error).
INSERT INTO invoices (invoice_number, invoice_date) VALUES
(21363, 20200901),
(84392, 20190203),
(21483, 20150119),
(23285, 20180421);
SELECT * FROM invoices;

