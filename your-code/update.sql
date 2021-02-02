USE lab_mysql;

-- Change Mimia for Miami
SELECT * FROM sales_persons;
UPDATE sales_persons SET sales_persons.store = 'Miami' WHERE sales_persons.staff_id = 5;

-- Add email to customer tables
DROP TABLE IF EXISTS customers_email;
CREATE TABLE customers_email (name VARCHAR(30), email VARCHAR(50));
INSERT INTO customers_email VALUES
('Pablo Picasso', 'ppicasso@gmail.com'),
('Abraham Lincoln', 'lincoln@us.gov'),
('Napoléon Bonaparte', 'hello@napoleon.me');

SELECT * FROM customers;
SELECT * FROM customers_email;
UPDATE customers, customers_email SET customers.email = customers_email.email WHERE customers.name = customers_email.name;