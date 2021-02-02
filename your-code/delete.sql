USE lab_mysql;

SELECT * FROM cars;

-- Remove VIN duplicate
DELETE vin FROM cars c
WHERE
    c.vin = 'DAM41UDN3CHU2WVF6'  
ORDER BY c.name LIMIT 1;

-- Delete car ID#4
