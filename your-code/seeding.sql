-- Let' add values to the tables created in the file create.sql

USE lab_mysql;


INSERT INTO cars (VIN, manufacturer, model, year, color) VALUES
("3K096I98581DHSNUP", "Chevrolet", "Camaro", "2008", "Orange"),
("ZM8G7BEUQZ97IH46V", "Nissan", "GTR Skyline", "1991", "Grey"),
("RKXVNNIHLVVZOUB4M", "Shelby", "Cobra", "1972", "Black"),
("HKNDGS7CU31E9Z7JW", "Toyota", "Supra", "1994", "Red"),
("DAM41UDN3CHU2WVF6", "Dodge", "Charger", "2018", "Blue"),
("SEK41NSE7KTR2RBA64", "Ford", "Mustang", "1969", "Black");

INSERT INTO customers (customer_id, name, phone_number, email, address, city, state_province, country, postal_code) VALUES
("2344", "Randall Ramos", "+34 678 234 459", "randallramos@gmail.com", "Calle Trafalgar 18", "Barcelona", "Catalonia", "Spain", "08035"),
("3677", "Juan Roig", "+34 654 478 675", "juanroig@gmail.com", "Avenida Blasco Ibañez 77", "Valencia", "Valencia", "Spain", "46010"),
("6779", "Jorge Gómez", "+34 679 467 792", "jorgegomez@gmail.com", "Calle Gral. Vara de Rey 55", "Logroño", "La Rioja", "Spain", "26003"),
("7832", "Eneko Urrikoetxea", "+34 634 590 249", "e.urriko@gmail.com", "Calle Matxiategi 2", "Bergara", "Gipuzkoa", "Spain", "20570"),
("9012", "Mariano Rajoy", "+34 687 973 921", "m.rajoy@gmail.com", "Calle Jose Ortega y Gasset 18", "Madrid", "Madrid", "Spain", "28006"),
("9643", "Gonzalo Bermúdez", "+34 666 229 876", "gonzalobermudez@gmail.com", "Calle Albeniz 11", "Dos Hermanas", "Sevilla", "Spain", "41704");


INSERT INTO salesperson (staff_id, name, store) VALUES
("00001", "Ana Franco", "Madrid"),
("00002", "Joaquín Putamo", "Valencia"),
("00003", "Clàudia Vila", "Barcelona"),
("00004", "Andoni Aguirre", "Bilbao");

select * from invoices;

INSERT INTO invoices (date, cars_ID, customer, salesperson) VALUES
("2020-09-08 17:51:04", "3K096I98581DHSNUP", "3677", "00002"),
("2020-09-23 10:21:16", "DAM41UDN3CHU2WVF6", "2344", "00003");



