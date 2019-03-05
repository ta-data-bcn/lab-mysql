CREATE TABLE `Cars` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `VIN` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'Vehicle Identificacion Number',
  `Manufacturer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Year` year(4) DEFAULT NULL,
  `Color` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `Customers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Customer ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `City` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `State` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Country` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Postal` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Customer ID` (`Customer ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `Invoices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Invoice Number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Date` date NOT NULL,
  `Car` int(11) unsigned NOT NULL,
  `Customer` int(11) unsigned NOT NULL,
  `Sales Person` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Car` (`Car`),
  KEY `Customer` (`Customer`),
  KEY `Sales Person` (`Sales Person`),
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`Car`) REFERENCES `cars` (`id`),
  CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`Customer`) REFERENCES `customers` (`id`),
  CONSTRAINT `invoices_ibfk_3` FOREIGN KEY (`Sales Person`) REFERENCES `salespersons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `Salespersons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Staff ID` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Store` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
