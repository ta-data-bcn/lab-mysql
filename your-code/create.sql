mysql> CREATE DATABASE lab_mysql;
Query OK, 1 row affected (0.04 sec)

mysql> USE lab_mysql;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> CREATE TABLE Car (car_id INT PRIMARY KEY AUTO_INCREMENT, VIN INT(20), manufacturer VARCHAR(20), model VARCHAR(20), year INT(4), color VARCHAR(10));
Query OK, 0 rows affected, 2 warnings (0.02 sec)

mysql> CREATE TABLE Customer (customer_id INT PRIMARY KEY AUTO_INCREMENT, phone INT(20), name VARCHAR(20), email VARCHAR(20), adress VARCHAR(40), city VARCHAR(10), state_province VARCHAR(15), country VARCHAR(10), zip_postal INT(6));
Query OK, 0 rows affected, 2 warnings (0.01 sec)

mysql> CREATE TABLE Salesperson (staff_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20), store VARCHAR(20));
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE Invoices (invoice_nr INT PRIMARY KEY AUTO_INCREMENT, date DATE, car_id INT REFERENCES car(car_id), customer_id INT REFERENCES customer(customer_id), salesperson INT REFERENCES Salesperson(staff_id));
Query OK, 0 rows affected (0.01 sec)

mysql> show tables;
+---------------------+
| Tables_in_lab_mysql |
+---------------------+
| Car                 |
| Customer            |
| Invoices            |
| Salesperson         |
+---------------------+
4 rows in set (0.00 sec)
