UPDATE customers
SET first_name = 'Pablo'
WHERE customer_ID = 10001;

SELECT * FROM customers;

UPDATE customers
SET email = 'Pablo_er_picasso@gmail.com'
WHERE customer_ID = 10001;

UPDATE customers
SET email = 'abraham.lincoln@outlook.es'
WHERE customer_ID = 20001;

SELECT * FROM customers;

