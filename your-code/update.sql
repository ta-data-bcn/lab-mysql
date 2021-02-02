USE lab_mysql;

UPDATE customers
SET
	email = "ppicasso@gmail.com"
WHERE
	cname LIKE "Pablo Picasso";

UPDATE customers
SET
	email = "lincoln@us.gov"
WHERE
	cname LIKE "Abraham Lincoln";

UPDATE customers
SET
	email = "hello@napoleon.me"
WHERE
	cname LIKE "Napoléon Bonaparte";
