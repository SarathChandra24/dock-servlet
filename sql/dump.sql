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
INSERT INTO `customer_details` VALUES ('40271908','P SATYA SRI BALA','91004'),('41770775','T.RAJA SEKHAR','9963773'),
                                      ('42006651','M AISHWARYA','709381'),('48065669','M.MANISH KUMAR','996334'),
                                      ('49901351','THIMMANI ROJA','9100655'),('50884258','PUTTA SAI KUMAR','798912'),
                                      ('51276681','R DEEKSHITHA','70136656'),('51496154','NONWAR ANIL SIN H','9122932'),
                                      ('51853106','N ANURADHA','954272'),('52887215','NALLA ASHIKA','81878923'),
                                      ('54422811','T NISHMA','7995058'),('57956522','YOGESH BHUTIA','9066591'),
                                      ('58104708','O SARATH CHANDRA','9440222551'),('58325890','VAKETY SRILATHA','958802'),
                                      ('60924388','TERUPALLY AMULYA','9019163'),('61815267','TALLA VRISHAB','8941001'),
                                      ('63901903','RAJAN JADAV','9542348'),('64300678','SANA MANJULA','7680914'),
                                      ('65268297','SRIRAM SRAVANTHI','9901809'),('66245730','SAI NIHAL AKKALI','8190585'),
                                      ('66710404','RAMAVATH JYOTHI','9586224'),('67199369','PALADUGU NAVYA','968326'),
                                      ('67888557','NARAM GOPAL','846642'),('68023335','SUBHASH REDDY','8686068'),
                                      ('70250379','SYED JUNAID NISHAT','70174'),('70763168','UDAY SURAJ K','880579'),
                                      ('70814589','J REBECCA','70816'),('75491101','S PALNITKAR','8639321'),
                                      ('75763371','N RISHIDHAR REDDY','910067'),('77304322','T SRAVANI','799567'),
                                      ('78562866','SUCHIT GURRAM','770766'),('82721154','SHATARAJI VINEETH','773098'),
                                      ('82831528','S KRISHNA KETAN ','98089'),('82863960','PANTHANGI MANISHA','965700'),
                                      ('83220523','VANGA MOUNA','73898'),('87007504','P VAISHNAVI','8185817'),('87372487','G SUMAN','99618');
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