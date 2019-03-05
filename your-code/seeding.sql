
INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (0, 945292, 'Volkswagen', 'Tiguan', 2019, 'Blue');

INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (1, 8735343, 'Peugeot', 'Rifter', 2019,	'Red');

INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (2, 62384662, 'Ford', 'Fusion', 2019,	'White');

INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (3, 178236152, 'Toyota', 'RAV4', 2019,	'Silver');

INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (4, 92938428763, 'Volvo', 'V60', 2019, 'Grey');

INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (5, 1672537612, 'Volvo', 'V60-Cross Country', 2019, 'Grey');

INSERT INTO customers (cus_id, name, phone_num, email, address, province, postal_code, country)
VALUES (10001,	'Pablo Picasso', 34636176382, '-', 'Paseo de la Chopera, 14', 'Madrid', 28045,	'Spain');	

INSERT INTO customers (cus_id, name, phone_num, email, address, province, postal_code, country)
VALUES (1002,	'Pablo Escobar',34646676, '-', 'Champs Elysee, 1', 'Paris', 75002,	'France');	

INSERT INTO customers (cus_id, name, phone_num, email, address, province, postal_code, country)
VALUES (1003, 'Emmanuel Macron',34662835, '-', 'Rue de Paris, 1', 'Paris', 75000,	'France');	

INSERT INTO customers (cus_id, name, phone_num, email, address, province, postal_code, country)
VALUES (1004, 'Jordi Pujol ',34690146, '-', 'Le jail, 1', 'Barcelona', 08001, 'Spain');	

INSERT INTO customers (cus_id, name, phone_num, email, address, province, postal_code, country)
VALUES (1005, 'Eva Panizo ',34663451, '-', 'Calle false , 123',	'Barcelona', 08002,	'Spain');	

INSERT INTO salespersons (staff_id, name, store)
VALUES (0001,	'Petey Cruiser ', 'Nice');	

INSERT INTO salespersons (staff_id, name, store)
VALUES (0002,	'El Chapo ', 'Colombia');	

INSERT INTO salespersons (staff_id, name, store)
VALUES (0003,	'Michael Jackson ', 'LA');	

INSERT INTO salespersons (staff_id, name, store)
VALUES (0004,	'Homer Simpson ', 'Springfield');

INSERT INTO salespersons (staff_id, name, store)
VALUES (0005,	'Bob Chao ', 'New York');	

INSERT INTO salespersons (staff_id, name, store)
VALUES (0006,	'William Brace ', 'Chicago');

INSERT INTO salespersons (staff_id, name, store)
VALUES (0007,	'Shrek ', 'Swamp');

INSERT INTO invoices (inv_id, date, ID, cus_id, staff_id)
VALUES (0, 20041004, 0, 1002, 1);

INSERT INTO invoices (inv_id, date, ID, cus_id, staff_id)
VALUES (1, 20041006, 1, 1002, 2);		

INSERT INTO invoices (inv_id, date, ID, cus_id, staff_id)
VALUES (2, 20041009, 2, 1004, 3);