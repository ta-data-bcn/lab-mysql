USE lab_mysql;
INSERT INTO cars (model, Yr, Color, City, City_ID, Car_ID, ECO)
VALUES ('Peugeot', '2018', 'Silver', 'Cartagena', '00212999', '123456789', '0');

INSERT INTO customer (Customer_l_name, Customer_f_name, Customer_ID, Age, Phone, Email, Address, City, City_ID, State_Province, ZIP_Postal_Code, Number_visits, Last_visit, ECO, Store_ID)
VALUES ('Palho Grandes', 'Pepito', '124456434', '35', '676589234', 'pepitoph@gmail.com', 'Calle Almudena, 345', 'Cartagena', '00212999', 'Murcia', '30201', '1', '2019-06-26', '0', '1496949459');

INSERT INTO invoice (Invoice_ID, Salesperson_l_name, Salesperson_f_name, Salesperson_ID, Store, Store_ID, Day_inv, City, City_ID, Car_ID, Customer_ID)
VALUES ('000024734', 'Fernandez Alonso', 'Enrique', '111145624', '001', '1496949459', '2019-06-29', 'Cartagena', '00212999', '123456789', '124456434');

INSERT INTO salesperson (Salesperson_ID, Salesperson_l_name, Salesperson_f_name, Store, Store_ID, Num_sales, City, City_ID, Job_position)
VALUES ('111145624', 'Fernandez Alonso', 'Enrique', '001', '1496949459', '103', 'Cartagena', '00212999', 'Sales Director');

SELECT * FROM salesperson;