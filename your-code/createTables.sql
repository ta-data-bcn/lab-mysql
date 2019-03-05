CREATE TABLE `cars` (
  `ID` INT(11),
  `VIN` INT(17),
  `manufacturer` CHAR(25) DEFAULT NULL,
  `model` CHAR(20) DEFAULT NULL,
  `year` INT(4) DEFAULT NULL,
  `color` CHAR(10) DEFAULT NULL,
   PRIMARY KEY (ID)
);

CREATE TABLE `customers` (
  `cus_id` INT(11),
  `name` CHAR(25) DEFAULT NULL,
  `phone_num` INT(20) DEFAULT NULL,
  `email` CHAR(30) DEFAULT NULL,
  `address` CHAR(30) DEFAULT NULL,
  `city` CHAR(25) DEFAULT NULL,
  `province` CHAR(30) DEFAULT NULL,
  `postal_code` INT(10) DEFAULT NULL,
  `country` CHAR(20) DEFAULT NULL,
   PRIMARY KEY (cus_id)
);

CREATE TABLE `salespersons` (
  `staff_id` INT(11),
  `name` CHAR(25) DEFAULT NULL,
  `store` CHAR(20) DEFAULT NULL,
   PRIMARY KEY (staff_id)
);

CREATE TABLE `invoices` (
  `inv_id` INT(11),
  `date` DATE DEFAULT NULL,
  `ID` INT(11) DEFAULT NULL,
  `cus_id` INT(11) DEFAULT NULL,
  `staff_id` INT(11) DEFAULT NULL,
   PRIMARY KEY (inv_id),
   FOREIGN KEY(ID) REFERENCES cars(ID),
   FOREIGN KEY(cus_id) REFERENCES customers(cus_id),
   FOREIGN KEY(staff_id) REFERENCES salespersons(staff_id)
);

	
