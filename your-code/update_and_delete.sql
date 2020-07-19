#Updating information

UPDATE Customers 
SET 
    Email = 'ppicasso@gmail.com'
WHERE
    `Customer_ID` = 10001;
    
UPDATE Customers 
SET 
    Email = 'lincoln@us.gov'
WHERE
    `Customer_ID` = 20001;
    
UPDATE Customers 
SET 
    Email = 'hello@napoleon.me'
WHERE
    `Customer_ID` = 30001;

SELECT *
FROM Salespersons;
UPDATE Salespersons 
SET 
    Store = 'Miami'
WHERE
    `Name_Staff` = "Paige Turner";
    
#deleting rows
DELETE FROM Cars WHERE ID = 4;