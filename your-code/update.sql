USE car_dealer;
SELECT * FROM salesperson;

UPDATE salesperson
SET Store = "Miami"
WHERE ID = 40001;

SELECT * FROM customers;

UPDATE customers
SET email = "ppicasso@gmail.com"
WHERE ID = 1;

UPDATE customers
SET email = "lincoln@us.gov"
WHERE ID = 10001;

UPDATE customers
SET email = "hello@napoleon.me"
WHERE ID = 20001;