CREATE TABLE `pruductlines` (
  `productLine` int PRIMARY KEY,
  `textDescription` varchar(255),
  `htmlDescription` varchar(255),
  `image` varchar(255)
);

CREATE TABLE `product` (
  `productCode` int PRIMARY KEY,
  `productName` varchar(255),
  `productLine` varchar(255),
  `productScale` varchar(255),
  `productVendor` varchar(255),
  `productDescription` varchar(255),
  `quantityInStock` varchar(255),
  `buyPrice` int,
  `MSRP` varchar(255)
);

CREATE TABLE `orderDetails` (
  `orderNumber` int PRIMARY KEY,
  `productCode` int,
  `quantityOrdered` varchar(255),
  `priceEach` varchar(255),
  `orderLineNumber` varchar(255)
);

CREATE TABLE `employees` (
  `employeeNumber` int PRIMARY KEY,
  `lastName` varchar(255),
  `firstName` varchar(255),
  `extention` varchar(255),
  `email` varchar(255),
  `officeCode` int,
  `reportsTo` varchar(255),
  `jobTitle` varchar(255)
);

CREATE TABLE `costumers` (
  `customersNumber` int PRIMARY KEY,
  `customersName` varchar(255),
  `contactLastName` varchar(255),
  `contactFirstName` varchar(255),
  `phone` int,
  `addresLine1` varchar(255),
  `addresLine2` varchar(255),
  `city` varchar(255),
  `state` varchar(255),
  `postalCode` int,
  `country` varchar(255),
  `salesRepEmployeeNumber` int,
  `creditLImit` int
);

CREATE TABLE `orders` (
  `orderNumber` int PRIMARY KEY,
  `orderDate` int,
  `requiredDate` varchar(255),
  `shippedDate` varchar(255),
  `status` varchar(255),
  `comments` varchar(255),
  `customersNumber` int
);

CREATE TABLE `payments` (
  `customersNumber` int PRIMARY KEY,
  `checkNumber` int,
  `paymentDate` int,
  `amount` varchar(255)
);

CREATE TABLE `office` (
  `officeCode` int PRIMARY KEY,
  `city` varchar(255),
  `phone` int,
  `addresLine1` varchar(255),
  `addresLine2` varchar(255),
  `state` varchar(255),
  `country` varchar(255),
  `postalCode` int,
  `territory` varchar(255)
);

ALTER TABLE `product` ADD FOREIGN KEY (`productLine`) REFERENCES `pruductlines` (`productLine`);

ALTER TABLE `orderDetails` ADD FOREIGN KEY (`productCode`) REFERENCES `product` (`productCode`);

ALTER TABLE `orders` ADD FOREIGN KEY (`orderNumber`) REFERENCES `orderDetails` (`orderNumber`);

ALTER TABLE `orders` ADD FOREIGN KEY (`customersNumber`) REFERENCES `costumers` (`customersNumber`);

ALTER TABLE `payments` ADD FOREIGN KEY (`customersNumber`) REFERENCES `costumers` (`customersNumber`);

ALTER TABLE `employees` ADD FOREIGN KEY (`employeeNumber`) REFERENCES `office` (`addresLine2`);

ALTER TABLE `employees` ADD FOREIGN KEY (`firstName`) REFERENCES `employees` (`reportsTo`);

ALTER TABLE `costumers` ADD FOREIGN KEY (`customersName`) REFERENCES `employees` (`jobTitle`);
