USE lab_mysql;

CREATE TABLE `cars`(
	`ID` INT(5) AUTO_INCREMENT, PRIMARY KEY (ID),
    `vin` VARCHAR(20),
    `year` INT(5),
    `color` VARCHAR(10),
    `car_type_id`INT (5)
    );
	
CREATE TABLE `car_type`(
    `ID` INT(5) AUTO_INCREMENT, PRIMARY KEY (ID),
    `manufacturer` VARCHAR(30),
    `model` VARCHAR(30)
    );
	
CREATE TABLE `customers`(
    `ID` INT(5) AUTO_INCREMENT, PRIMARY KEY (ID),
    `customer_id` INT(5),
    `name` VARCHAR(100),
    `phone` VARCHAR(15),
    `email` VARCHAR(254),
    `address` VARCHAR(150),
    `zip_code` VARCHAR(12),
    `city` VARCHAR(60),
    `city_state_country_id` INT(5)
    );

CREATE TABLE `city_state_country`(
    `ID` INT(5) AUTO_INCREMENT, PRIMARY KEY (ID),
    `city` VARCHAR(60),
    `state` VARCHAR(50),
    `country` VARCHAR(55)
    );

CREATE TABLE `salesperson`(
    `ID` INT(5) AUTO_INCREMENT, PRIMARY KEY (ID),
    `staff_ID` INT(5),
    `name` VARCHAR(100),
    `store_id` INT(5)
    );

CREATE TABLE `stores`(
    `ID` INT(5) AUTO_INCREMENT, PRIMARY KEY (ID),
    `name` VARCHAR(100),
    `city_state_country_id` INT(5)
    );

CREATE TABLE `invoice`(
    `ID` INT(5) AUTO_INCREMENT, PRIMARY KEY (ID),
    `invoice_number` INT(10),
    `date` DATE,
    `car_id` INT(5),
    `customer_id` INT(5),
    `salesperson_id` INT(5)
    );

ALTER TABLE `cars` ADD FOREIGN KEY (`car_type_id`) REFERENCES `car_type`(`ID`);
ALTER TABLE `customers` ADD FOREIGN KEY (`city_state_country_id`) REFERENCES `city_state_country`(`ID`);
ALTER TABLE `stores` ADD FOREIGN KEY (`city_state_country_id`) REFERENCES `city_state_country`(`ID`);
ALTER TABLE `salesperson` ADD FOREIGN KEY (`store_id`) REFERENCES `stores`(`ID`);
ALTER TABLE `invoice` ADD FOREIGN KEY (`car_id`) REFERENCES `cars`(`ID`);
ALTER TABLE `invoice` ADD FOREIGN KEY (`customer_id`) REFERENCES `customers`(`ID`);
ALTER TABLE `invoice` ADD FOREIGN KEY (`salesperson_id`) REFERENCES `salesperson`(`ID`);