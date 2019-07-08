-- Dont have email in list so will update adress instead
Use world;
Update customers
set customers.adress = 'moneystreet 15'
where customer_ID = 34123;

Update customers
set customers.name = 'Heinrich', 'Peter'
where customer_ID = "23423", "34123";

Delete from cars
where VIN = "DAM41UDN3CHU2WVF6";