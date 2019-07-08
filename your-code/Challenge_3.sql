INSERT INTO salespersons (Salespersons_id, staff_ID, name_staff, store) VALUES
(1, 12, "Edi", 'Munich'),
(2, 3, "Frank", 'Barcelona');

INSERT INTO cars (Cars_id, VIN, manufacturer, model, cars.year) VALUES
(2,	'qwerqwer12345135', 'BMW', '315', 1995), 
(1, '12341235qefsadf', 'AUDI', 'TT', 2019);

INSERT INTO invoices (Invoices_id, inocoice_ID, VIN, invoices.date, staff_ID, customer_ID) VALUES
(123, 123, 'qwerqwer12345135', '2019', '1234', "12341234"), 
(432, 321, '12341235qefsadf', '2019', '4321', "12341234");

INSERT INTO customers (Customers_id, customer_ID, customers.name, phone, adress, city, state, zip)
VALUES
(1, 34123,	'Hans', '12341324', 'Cachimbastreet 12' , 'Munich' , 'Germany', 1234), 
(2, 23423,	'Hasan', '43124312', 'Cachimbastreet 21', 'Barcelona', 'Spain', 4321);
