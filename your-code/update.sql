USE lab_mysql;

UPDATE salespersons
SET store = "Miami"
WHERE store = "Mimia";

SELECT *
FROM salespersons;

UPDATE customers SET email = "ppicasso@gmail.com" WHERE name = "Pablo Picasso";
UPDATE customers SET email = "lincoln@us.gov" WHERE name = "Abraham Lincoln";
UPDATE customers SET email = "hello@napoleon.me" WHERE name = "Napoléon Bonaparte";

