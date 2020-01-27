DROP DATABASE IF EXISTS eidiko;
create database eidiko;
use eidiko;
DROP TABLE IF EXISTS `customer_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_details` (
                                    `customer_id` varchar(8) NOT NULL,
                                    `customer_name` varchar(45) NOT NULL,
                                    `contact_number` varchar(10) NOT NULL
);
INSERT INTO `customer_details` VALUES ('40271908','P SATYA SRI BALA','9100460807'),('41770775','T.RAJA SEKHAR','9959763773'),
                                      ('42006651','M AISHWARYA','7093812025'),('48065669','M.MANISH KUMAR','9963305024'),
                                      ('49901351','THIMMANI ROJA','9100656755'),('50884258','PUTTA SAI KUMAR','7989115052'),
                                      ('51276681','R DEEKSHITHA','7013665856'),('51496154','NONWAR ANIL SIN H','9966122932'),
                                      ('51853106','N ANURADHA','9542721356'),('52887215','NALLA ASHIKA','8187816923'),
                                      ('54422811','T NISHMA','7995032058'),('57956522','YOGESH BHUTIA','9030366591'),
                                      ('58104708','O SARATH CHANDRA','9440222551'),('58325890','VAKETY SRILATHA','9581048802'),
                                      ('60924388','TERUPALLY AMULYA','9676019163'),('61815267','TALLA VRISHAB','8099941001'),
                                      ('63901903','RAJAN JADAV','9542340008'),('64300678','SANA MANJULA','7680949414'),
                                      ('65268297','SRIRAM SRAVANTHI','9908162809'),('66245730','SAI NIHAL AKKALI','8179041585'),
                                      ('66710404','RAMAVATH JYOTHI','9581046224'),('67199369','PALADUGU NAVYA','9666778326'),
                                      ('67888557','NARAM GOPAL','8466968242'),('68023335','SUBHASH REDDY','8686688068'),
                                      ('70250379','SYED JUNAID NISHAT','7032399174'),('70763168','UDAY SURAJ K','8801083579'),
                                      ('70814589','J REBECCA','7093707816'),('75491101','S PALNITKAR','8639193821'),
                                      ('75763371','N RISHIDHAR REDDY','9100517267'),('77304322','T SRAVANI','7995689467'),
                                      ('78562866','SUCHIT GURRAM','7702756366'),('82721154','SHATARAJI VINEETH','7731060098'),
                                      ('82831528','S KRISHNA KETAN ','9808993333'),('82863960','PANTHANGI MANISHA','9603705700'),
                                      ('83220523','VANGA MOUNA','7396964898'),('87007504','P VAISHNAVI','8185930817'),('87372487','G SUMAN','9963560218');
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