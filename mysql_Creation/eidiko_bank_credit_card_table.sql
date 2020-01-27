use eidiko;
DROP TABLE IF EXISTS `credit_card_table`;
CREATE TABLE `credit_card_table` (
  `cardNumber` varchar(16) NOT NULL,
  `cvv` varchar(3) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `credit_card_family` varchar(15) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `cust_id` varchar(8) DEFAULT NULL,
  `mobile_number` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cardNumber`),
  UNIQUE KEY `credit_card_table_cardNumber_uindex` (`cardNumber`)
);
INSERT INTO `credit_card_table` VALUES ('4239707341964332','347','2024-10-15','tested','sarth Chandra','58104708','9440222551'),('4409014896308383','873','2024-10-13','tested','sarth Chandra','58104708','9440222551');