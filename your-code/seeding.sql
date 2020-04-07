USE Ironhack;
INSERT INTO `Cars` (`ID`, `VIN`, `Manufacturer`, `Model`, `Year`, `Color`)
VALUES (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
       (1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
       (2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
       (3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
       (4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
       (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');

INSERT INTO `Customers` (`ID`, `Customer ID`, `Name`, `Phone`, `Email`, `Address`, `City`, `State`, `Country`, `Postal`)
VALUES (0, 10001, 'Pablo Picasso', '+34636176382', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
       (1, 20001, 'Abraham Lincoln', '+13059077086', NULL, '123 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
       (2, 30001, 'Napoleón Bonaparte', '+33179754000', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France',
        75008);

INSERT INTO `Invoices` (`ID`, `Invoice Number`, `Date`, `Car`, `Customer`, `Salesperson`)
VALUES (0, 852399038, '2018-08-02', 0, 1, 3),
       (1, 731166526, '2018-12-31', 3, 0, 5),
       (5, 271135104, '2019-01-22', 2, 2, 7);
