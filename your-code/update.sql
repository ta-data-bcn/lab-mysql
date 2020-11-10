USE mysql_lab;

SELECT * FROM salesperson;

UPDATE salesperson
SET City = "Miami"
WHERE ID_number = 5;

SELECT * FROM customers;

UPDATE customers
SET Email = "ppicasso@gmail.com"
WHERE ID_number = 1;

UPDATE customers
SET Email = "lincoln@us.gov"
WHERE ID_number = 2;

UPDATE customers
SET Email = "hello@napoleon.me"
WHERE ID_number = 3;