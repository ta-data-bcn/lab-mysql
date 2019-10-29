use ironhack_lab;
select * from salespersons where name = 'Paige Turner';
update salespersons set store = "Miami" where id = 4;
select * from salespersons where name = 'Paige Turner';
select * from customers where name in ('Pablo Picasso',	-- ppicasso@gmail.com
'Abraham Lincoln'	-- lincoln@us.gov
'Napoléon Bonaparte');	-- hello@napoleon.me
update customers set email = "ppicasso@gmail.com" where id = 0;
select * from customers;