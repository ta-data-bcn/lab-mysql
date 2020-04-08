
use lab_mysql;

select * from salesperson;
SET SQL_SAFE_UPDATES = 0;
update salesperson set store = 'Miami' where sal_name = 'Paige Turner';

select * from customers;
update customers set email = case when cus_name = 'Pablo Picasso' then 'ppicasso@gmail.com'
when cus_name = 'Abraham Lincoln' then 'lincoln@us.gov'
when cus_name = 'Napoleon Bonaparte' then 'hello@napoleon.me' end
where cus_name in ('Pablo Picasso','Abraham Lincoln','Napoleon Bonaparte');

