USE lab_mysql;

INSERT INTO `car_type` (`manufacturer`, `model`) VALUES ('Volkswagen', 'Tiguan');
INSERT INTO `car_type` (`manufacturer`, `model`) VALUES ('Ford', 'Fusion');
INSERT INTO `car_type` (`manufacturer`, `model`) VALUES ('Toyota', 'RAV4');
INSERT INTO `car_type` (`manufacturer`, `model`) VALUES ('Volvo', 'V60');
INSERT INTO `car_type` (`manufacturer`, `model`) VALUES ('Volvo', 'V60 Cross Country');
INSERT INTO `car_type` (`manufacturer`, `model`) VALUES ('Peugeot', 'Rifter');

INSERT INTO `cars` (`vin`, `year`, `color`, `car_type_id`) VALUES ('3K096I98581DHSNUP', 2019, 'Blue', 1);
INSERT INTO `cars` (`vin`, `year`, `color`, `car_type_id`) VALUES ('ZM8G7BEUQZ97IH46V', 2019, 'Red', 6);
INSERT INTO `cars` (`vin`, `year`, `color`, `car_type_id`) VALUES ('RKXVNNIHLVVZOUB4M', 2018, 'White', 2);
INSERT INTO `cars` (`vin`, `year`, `color`, `car_type_id`) VALUES ('HKNDGS7CU31E9Z7JW', 2018, 'Silver', 3);
INSERT INTO `cars` (`vin`, `year`, `color`, `car_type_id`) VALUES ('DAM41UDN3CHU2WVF6', 2019, 'Gray', 4);
INSERT INTO `cars` (`vin`, `year`, `color`, `car_type_id`) VALUES ('DAM41UDN3CHU2WVF6', 2019, 'Gray', 5);

INSERT INTO `city_state_country` (`city`, `state`, `country`) VALUES ('Madrid', 'Madrid', 'Spain');
INSERT INTO `city_state_country` (`city`, `state`, `country`) VALUES ('Miami', 'Florida', 'United States');
INSERT INTO `city_state_country` (`city`, `state`, `country`) VALUES ('Paris', 'Île-de-France', 'France');
INSERT INTO `city_state_country` (`city`, `state`, `country`) VALUES ('Barcelona', 'Catalunya', 'Spain');
INSERT INTO `city_state_country` (`city`, `state`, `country`) VALUES ('Berlin', '', 'Germany');
INSERT INTO `city_state_country` (`city`, `state`, `country`) VALUES ('Barcelona', 'Catalunya', 'Spain');
INSERT INTO `city_state_country` (`city`, `state`, `country`) VALUES ('Mexico City', 'Mexico DF', 'Mexico');
INSERT INTO `city_state_country` (`city`, `state`, `country`) VALUES ('Amsterdam', '', 'Netherlands');
INSERT INTO `city_state_country` (`city`, `state`, `country`) VALUES ('São Paulo', '', 'Brasil');

INSERT INTO `customers` (`customer_id`, `name`, `phone`, `email`, `address`, `zip_code`, `city_state_country_id`) VALUES (10001, 'Pablo Picasso', '+34636176382', '', 'Paseo de la Chopera, 14', '28045', 1);
INSERT INTO `customers` (`customer_id`, `name`, `phone`, `email`, `address`, `zip_code`, `city_state_country_id`) VALUES (20001, 'Abraham Lincoln', '+13059077086', '',  '120 SW 8th St', '33130', 2);
INSERT INTO `customers` (`customer_id`, `name`, `phone`, `email`, `address`, `zip_code`, `city_state_country_id`) VALUES (30001, 'Napoléon Bonaparte', '+33179754000', '', '40 Rue du Colisée', '75008', 3);

INSERT INTO `stores` (`name`, `city_state_country_id`) VALUES ('Madrid', 1);
INSERT INTO `stores` (`name`, `city_state_country_id`) VALUES ('Barcelona', 4);
INSERT INTO `stores` (`name`, `city_state_country_id`) VALUES ('Berlin', 5);
INSERT INTO `stores` (`name`, `city_state_country_id`) VALUES ('Paris', 3);
INSERT INTO `stores` (`name`, `city_state_country_id`) VALUES ('Miami', 2);
INSERT INTO `stores` (`name`, `city_state_country_id`) VALUES ('Mexico City', 7);
INSERT INTO `stores` (`name`, `city_state_country_id`) VALUES ('Amsterdam', 8);
INSERT INTO `stores` (`name`, `city_state_country_id`) VALUES ('São Paulo', 9);

INSERT INTO `salesperson` (`staff_id`, `name`, `store_id`) VALUES (00001, 'Petey Cruiser', 1);
INSERT INTO `salesperson` (`staff_id`, `name`, `store_id`) VALUES (00002, 'Anna Sthesia', 2);
INSERT INTO `salesperson` (`staff_id`, `name`, `store_id`) VALUES (00003, 'Paul Molive', 3);
INSERT INTO `salesperson` (`staff_id`, `name`, `store_id`) VALUES (00004, 'Gail Forcewind', 4);
INSERT INTO `salesperson` (`staff_id`, `name`, `store_id`) VALUES (00005, 'Paige Turner', 5);
INSERT INTO `salesperson` (`staff_id`, `name`, `store_id`) VALUES (00006, 'Bob Frapples', 6);
INSERT INTO `salesperson` (`staff_id`, `name`, `store_id`) VALUES (00007, 'Walter Melon', 7);
INSERT INTO `salesperson` (`staff_id`, `name`, `store_id`) VALUES (00008, 'Shonda Leer', 8);

INSERT INTO `invoice` (`invoice_number`, `date`, `car_id`, `customer_id`, `salesperson_id`) VALUES (852399038, '2018-08-22', 7, 1, 4);
INSERT INTO `invoice` (`invoice_number`, `date`, `car_id`, `customer_id`, `salesperson_id`) VALUES (731166526, '2018-12-31', 10, 2, 6);
INSERT INTO `invoice` (`invoice_number`, `date`, `car_id`, `customer_id`, `salesperson_id`) VALUES (271135104, '2019-01-22', 9, 3, 8);

