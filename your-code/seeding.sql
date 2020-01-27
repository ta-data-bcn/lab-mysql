

Cars

INSERT INTO `Cars` (`vehicle_id`, `manufacturer`, `model`, `year`, `colour`) VALUES (	"3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue");
INSERT INTO `Cars` (`vehicle_id`, `manufacturer`, `model`, `year`, `colour`) VALUES (	"ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red");
INSERT INTO `Cars` (`vehicle_id`, `manufacturer`, `model`, `year`, `colour`) VALUES (	"RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White");
INSERT INTO `Cars` (`vehicle_id`, `manufacturer`, `model`, `year`, `colour`) VALUES (	"HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver");
INSERT INTO `Cars` (`vehicle_id`, `manufacturer`, `model`, `year`, `colour`) VALUES (	"DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray");
INSERT INTO `Cars` (`vehicle_id`, `manufacturer`, `model`, `year`, `colour`) VALUES (	"DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");



Customers

INSERT INTO `Customers` (`numeric_id`, `customer_id`, `customer_name`, `phone_number`, `email`, `address`, `city`, `country`, `zip_code`) VALUES (0,	"10001",	"Pablo Picasso",	"+34 636 17 63 82",	"-",	"Paseo de la Chopera, 14",	"Madrid",	"Spain",	"28045");
INSERT INTO `Customers` (`numeric_id`, `customer_id`, `customer_name`, `phone_number`, `email`, `address`, `city`, `country`, `zip_code`) VALUES (1,	"20001",	"Abraham Lincoln", "+1 305 907 7086",	"-",	"120 SW 8th St",	"Miami",	"United States",	"33130");
INSERT INTO `Customers` (`numeric_id`, `customer_id`, `customer_name`, `phone_number`, `email`, `address`, `city`, `country`, `zip_code`) VALUES (2,	"30001",	"Napoléon Bonaparte", "+33 1 79 75 40 00",	"-",	"40 Rue du Colisée",	"Paris",	"France",	"75008");


Salespersons

INSERT INTO `Salespersons` (`numeric_id`, `staff_id`, `staff_name`, `store`) VALUES (0,	"00001",	"Petey Cruiser",	"Madrid");
INSERT INTO `Salespersons` (`numeric_id`, `staff_id`, `staff_name`, `store`) VALUES (1,	"00002",	"Anna Sthesia",	"Barcelona");
INSERT INTO `Salespersons` (`numeric_id`, `staff_id`, `staff_name`, `store`) VALUES (2,	"00003",	"Paul Molive",	    "Berlin");
INSERT INTO `Salespersons` (`numeric_id`, `staff_id`, `staff_name`, `store`) VALUES (3,	"00004",	"Gail Forcewind",	"Paris");
INSERT INTO `Salespersons` (`numeric_id`, `staff_id`, `staff_name`, `store`) VALUES (4,	"00005",	"Paige Turner",	"Mimia");
INSERT INTO `Salespersons` (`numeric_id`, `staff_id`, `staff_name`, `store`) VALUES (5,	"00006",	"Bob Frapples",	"Mexico City");
INSERT INTO `Salespersons` (`numeric_id`, `staff_id`, `staff_name`, `store`) VALUES (6,	"00007",	"Walter Melon",	"Amsterdam");
INSERT INTO `Salespersons` (`numeric_id`, `staff_id`, `staff_name`, `store`) VALUES (7,	"00008",	"Shonda Leer",	    "São Paulo");


Invoices

INSERT INTO `Invoices` (`numeric_id`, `invoice_number`, `date`, `car`, `customer`, `salesperson`) VALUES (0,	"852399038",	20180822,	"0",	"1",	"3");
INSERT INTO `Invoices` (`numeric_id`, `invoice_number`, `date`, `car`, `customer`, `salesperson`) VALUES (1,	"731166526",	20181231,	"3",	"0",	"5");
INSERT INTO `Invoices` (`numeric_id`, `invoice_number`, `date`, `car`, `customer`, `salesperson`) VALUES (2,	"271135104",	20190122,	"2",	"2",	"7");




