USE lab_mysql;

-- UPDATE TABLES

SELECT * FROM salespersons;

UPDATE salespersons
SET store = "Miami"
WHERE id_nr = 5;

SELECT * FROM customers;

UPDATE customers
SET email = "ppicasso@gmail.com"
WHERE id_nr = 1;

UPDATE customers
SET email = "lincoln@us.gov"
WHERE id_nr = 2;

UPDATE customers
SET email = "hello@napoleon.me"
WHERE id_nr = 3;

SELECT * FROM customers;