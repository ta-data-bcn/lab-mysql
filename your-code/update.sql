SET SQL_SAFE_UPDATES = 0;
UPDATE `Car` SET `model`='V60 Cross Country' WHERE `VIN`= 'DAM41UDN3CHU2WVF6'; #repeated VIN

UPDATE `Salesperson` SET `store`='Miami' WHERE `name`= 'Paige Turner'; #Misspelled Miami

UPDATE `Customer` SET `email`='ppicasso@gmail.com' WHERE `name`= 'Pablo Picasso'; #received email
UPDATE `Customer` SET `email`='lincoln@us.gov' WHERE `name`= 'Abraham Lincoln'; #received email
UPDATE `Customer` SET `email`='hello@napoleon.me' WHERE `name`= 'Napoléon Bonaparte'; #received email