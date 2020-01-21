USE lab_mysql;

DROP TABLE IF EXISTS Invoice;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Salesperson;
DROP TABLE IF EXISTS Car;

CREATE TABLE Car (
    car_ID INT(4) AUTO_INCREMENT,
    VIN VARCHAR(18) NOT NULL,
    manufactureR VARCHAR(128),
    model VARCHAR(32),
    year INT(4) DEFAULT 1989,
    color VARCHAR(16),
    PRIMARY KEY(car_ID)
);

CREATE TABLE Customer (
    customer_ID INT(6) AUTO_INCREMENT,
    name VARCHAR(64) NOT NULL,
    phone VARCHAR(16),
    address VARCHAR(128),
    city VARCHAR(64),
    zip_code VARCHAR(8),
    state VARCHAR(64),
    country VARCHAR(32),
    PRIMARY KEY (customer_ID)
);

CREATE TABLE Salesperson (
    staff_ID INT(4) AUTO_INCREMENT,
    name VARCHAR(64) NOT NULL,
    store VARCHAR(32),
    PRIMARY KEY (staff_ID)
);

CREATE TABLE Invoice (
    invoice_ID INT(6) AUTO_INCREMENT,
    date DATETIME NOT NULL,
    car_ID INT(4),
    customer_ID INT(6),
    staff_ID INT(4),
    PRIMARY KEY (invoice_ID),
    CONSTRAINT fk_car FOREIGN KEY (car_ID)
        REFERENCES Car(car_ID),
    CONSTRAINT fk_customer FOREIGN KEY (customer_ID)
        REFERENCES Customer(customer_ID),
    CONSTRAINT fk_salesperson FOREIGN KEY (staff_ID)
        REFERENCES Salesperson(staff_ID)
);


commit;