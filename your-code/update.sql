use lab_mysql;

select * from customers;

UPDATE customers
SET email= 'ppicasso@gmail.com'
WHERE id_no = 1;

UPDATE customers
SET email= 'hello@napoleon.me'
WHERE id_no = 3;

UPDATE customers
SET email= 'lincoln@us.gov'
WHERE id_no = 2;
