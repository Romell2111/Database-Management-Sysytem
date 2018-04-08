-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: aircraft_management_system
-- ------------------------------------------------------
-- Server version	5.6.37-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aircraft_company`
--

DROP TABLE IF EXISTS `aircraft_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aircraft_company` (
  `Aircraft_comapny_Id` int(11) NOT NULL,
  `Aircraft_Company_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Aircraft_comapny_Id`),
  UNIQUE KEY `Aircraft comapny Id_UNIQUE` (`Aircraft_comapny_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aircraft_company`
--

LOCK TABLES `aircraft_company` WRITE;
/*!40000 ALTER TABLE `aircraft_company` DISABLE KEYS */;
INSERT INTO `aircraft_company` VALUES (1,'EMIRATES'),(2,'LUFTHANSA'),(3,'TURKISH'),(4,'DELTA'),(5,'AIRINDIA'),(6,'QUATAR AIRWAYS'),(7,'ETHIAD'),(8,'BRITISH'),(9,'CHINA AIRLINES'),(10,'KINGFISHER');
/*!40000 ALTER TABLE `aircraft_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airport` (
  `Airport_Id` int(11) NOT NULL,
  `Airport_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Airport_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES (1,'LOGAN'),(2,'NEWARK'),(3,'SAN DIEDGO'),(4,'SAN FRANSISCO'),(5,'TEXAS'),(6,'FLORIDA'),(7,'CALIFORNIA'),(8,'CONNCECTICUT'),(9,'KANSAS'),(10,'JFK');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup`
--

DROP TABLE IF EXISTS `backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup` (
  `BookingTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BookingNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`BookingTime`),
  KEY `bookingNofk_idx` (`BookingNo`),
  CONSTRAINT `bookingNofk` FOREIGN KEY (`BookingNo`) REFERENCES `booking` (`Booking_No`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup`
--

LOCK TABLES `backup` WRITE;
/*!40000 ALTER TABLE `backup` DISABLE KEYS */;
INSERT INTO `backup` VALUES ('2017-12-10 00:00:00',NULL),('2017-12-10 17:28:01',NULL),('2017-12-11 20:27:07',NULL),('2017-12-11 20:30:05',NULL),('2017-12-11 20:31:40',NULL),('2017-12-11 21:00:25',NULL),('2017-12-11 22:05:01',NULL),('2017-12-11 22:21:14',NULL),('2017-12-11 22:33:45',NULL),('2017-12-13 18:55:23',NULL),('2017-12-13 18:57:16',NULL),('2017-12-13 23:16:13',NULL),('2017-12-13 23:39:07',29),('2017-12-13 23:39:25',30),('2017-12-13 23:39:40',31),('2017-12-13 23:40:34',32);
/*!40000 ALTER TABLE `backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `Booking_No` int(11) NOT NULL AUTO_INCREMENT,
  `Flight_id` int(11) DEFAULT NULL,
  `Seat_id` int(11) DEFAULT NULL,
  `Passenger_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Booking_No`),
  UNIQUE KEY `Booking_No_UNIQUE` (`Booking_No`),
  KEY `Booking_Flight_idx` (`Flight_id`),
  KEY `Booking_Seat_idx` (`Seat_id`),
  KEY `Booking_Passenger_idx` (`Passenger_id`),
  CONSTRAINT `Booking_Flight` FOREIGN KEY (`Flight_id`) REFERENCES `flight` (`Flight_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Booking_Passenger` FOREIGN KEY (`Passenger_id`) REFERENCES `passenger` (`Passenger_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Booking_Seat` FOREIGN KEY (`Seat_id`) REFERENCES `seat` (`Seat_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (29,701,201,2),(30,701,203,3),(31,702,205,5),(32,702,206,5);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger check_validity before insert on booking 
for each row 
 BEGIN
        IF NEW.Seat_id  in (
            select booking.Seat_id
            From booking 
            where (NEW.Seat_id = booking.Seat_id)
        ) THEN 
          SIGNAL SQLSTATE '45000'
          SET MESSAGE_TEXT='BOOKING ALREADY EXISTS';
          END IF;
          END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger backup_record after insert on booking 
for each row
begin
insert into backup values (now(),new.Booking_No);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `duty_free_shops`
--

DROP TABLE IF EXISTS `duty_free_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duty_free_shops` (
  `ShopId` int(11) NOT NULL,
  `Airport_Id` int(11) DEFAULT NULL,
  `Shop_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ShopId`),
  KEY `Airport_Id_idx` (`Airport_Id`),
  CONSTRAINT `ShopAirportId` FOREIGN KEY (`Airport_Id`) REFERENCES `logan_airport` (`Airport _id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duty_free_shops`
--

LOCK TABLES `duty_free_shops` WRITE;
/*!40000 ALTER TABLE `duty_free_shops` DISABLE KEYS */;
INSERT INTO `duty_free_shops` VALUES (700,1,'Boutique'),(701,1,'Restaurant'),(702,1,'General');
/*!40000 ALTER TABLE `duty_free_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `AirportId` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Salary` varchar(45) DEFAULT NULL,
  `Location` int(11) DEFAULT NULL,
  `EmployeeId` int(11) NOT NULL,
  `Employee_type` int(11) NOT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`EmployeeId`),
  KEY `Airport_Id_idx` (`AirportId`),
  KEY `Employee_Type_idx` (`Employee_type`),
  KEY `Location_idx` (`Location`),
  CONSTRAINT `AirportId` FOREIGN KEY (`AirportId`) REFERENCES `logan_airport` (`Airport _id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `EmployeeType` FOREIGN KEY (`Employee_type`) REFERENCES `employee_type` (`Employee_Type_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Location` FOREIGN KEY (`Location`) REFERENCES `location` (`Location_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'SURESH','5000',3,123,2,'suresh','*A2BA06AA265ACD981BCF25A161AE3FB963E95CBA'),(1,'MAHESH','2000',4,124,1,'MAHESH','*88F181F582F39ED912AF2B7850B1FBE5CE0C6514'),(1,'RAMESH','4000',2,125,3,'RAMESH','*223FBE195E066B76D64EE34E84A55B8F4CA71CAB'),(1,'SUMUKESH','8000',1,126,1,'SUMUKESH','*42E9E73AE6F1B0685BC348A175CC7B3ECCFC73A9'),(1,'MANGESH','9000',5,127,2,'MANGESH','*77347E886CF4B4846E78A8B4FE6F11E20EA69FBD');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_type`
--

DROP TABLE IF EXISTS `employee_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_type` (
  `Employee_Type_Id` int(11) NOT NULL,
  `Employee_Type_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Employee_Type_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_type`
--

LOCK TABLES `employee_type` WRITE;
/*!40000 ALTER TABLE `employee_type` DISABLE KEYS */;
INSERT INTO `employee_type` VALUES (1,'ADMIN'),(2,'CLERICAL'),(3,'SECURITY'),(4,'MAINTENANCE');
/*!40000 ALTER TABLE `employee_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight` (
  `Flight_Id` int(11) NOT NULL,
  `Flight_time` date NOT NULL,
  `Source_Airport` int(11) NOT NULL,
  `Destination_Airport` int(11) NOT NULL,
  `Manufacturer` int(11) NOT NULL,
  `Aircraft_company` int(11) NOT NULL,
  `Flight_Type` int(11) NOT NULL,
  `Layover` int(11) DEFAULT NULL,
  `flight_revenue` int(11) DEFAULT NULL,
  PRIMARY KEY (`Flight_Id`),
  KEY `Destination Airport Id_idx` (`Destination_Airport`),
  KEY `Manufacturer Id_idx` (`Manufacturer`),
  KEY `Aoircraft Comapny Id_idx` (`Aircraft_company`),
  KEY `Source Airport Id_idx` (`Source_Airport`),
  KEY `Flight_Type_idx` (`Flight_Type`),
  KEY `Lay_over_idx` (`Layover`),
  CONSTRAINT `Aoircraft Comapny Id` FOREIGN KEY (`Aircraft_company`) REFERENCES `aircraft_company` (`Aircraft_comapny_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Destination Airport Id` FOREIGN KEY (`Destination_Airport`) REFERENCES `airport` (`Airport_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Flight_Type` FOREIGN KEY (`Flight_Type`) REFERENCES `flight_type` (`Type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Lay_over` FOREIGN KEY (`Layover`) REFERENCES `airport` (`Airport_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Manufacturer Id` FOREIGN KEY (`Manufacturer`) REFERENCES `manufacturer` (`Manufacturer_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Source Airport Id` FOREIGN KEY (`Source_Airport`) REFERENCES `logan_airport` (`Airport _id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES (700,'2017-12-22',1,6,2,3,1,NULL,NULL),(701,'2017-12-23',1,3,1,2,1,NULL,NULL),(702,'2017-12-24',1,4,1,1,2,6,NULL),(703,'2017-12-25',1,6,2,4,1,NULL,NULL),(704,'2017-12-26',1,7,1,3,2,5,NULL);
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `flight_details`
--

DROP TABLE IF EXISTS `flight_details`;
/*!50001 DROP VIEW IF EXISTS `flight_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `flight_details` AS SELECT 
 1 AS `Flight_Id`,
 1 AS `Seat_Id`,
 1 AS `SeatPrice`,
 1 AS `Aircraft_Company_Name`,
 1 AS `Flight_time`,
 1 AS `Status`,
 1 AS `Manufacturer_Name`,
 1 AS `Type_Name`,
 1 AS `Destination`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `flight_hihest_ticket_price`
--

DROP TABLE IF EXISTS `flight_hihest_ticket_price`;
/*!50001 DROP VIEW IF EXISTS `flight_hihest_ticket_price`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `flight_hihest_ticket_price` AS SELECT 
 1 AS `Most_Expensive_ticket`,
 1 AS `Flight_Id`,
 1 AS `Flight_time`,
 1 AS `Aircraft_Company_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `flight_type`
--

DROP TABLE IF EXISTS `flight_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight_type` (
  `Type_id` int(11) NOT NULL AUTO_INCREMENT,
  `Type_Name` varchar(45) DEFAULT 'DIRECT',
  PRIMARY KEY (`Type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_type`
--

LOCK TABLES `flight_type` WRITE;
/*!40000 ALTER TABLE `flight_type` DISABLE KEYS */;
INSERT INTO `flight_type` VALUES (1,'DIRECT'),(2,'CONNECTING');
/*!40000 ALTER TABLE `flight_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `Location_Id` int(11) NOT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Street` varchar(45) DEFAULT NULL,
  `ZipCode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Location_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'USA','BOSTON','PARKER','02116'),(2,'USA','BOSTON','TREMONT','02776'),(3,'USA','NEW YORK','WESTLAND','01191'),(4,'USA','NEW YORK','GERMAIN','02118'),(5,'USA','KANSAS','PARKSTREET','08891');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logan_airport`
--

DROP TABLE IF EXISTS `logan_airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logan_airport` (
  `Airport _id` int(11) NOT NULL,
  PRIMARY KEY (`Airport _id`),
  CONSTRAINT `airportidfk` FOREIGN KEY (`Airport _id`) REFERENCES `airport` (`Airport_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logan_airport`
--

LOCK TABLES `logan_airport` WRITE;
/*!40000 ALTER TABLE `logan_airport` DISABLE KEYS */;
INSERT INTO `logan_airport` VALUES (1);
/*!40000 ALTER TABLE `logan_airport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `Manufacturer_Id` int(11) NOT NULL,
  `Manufacturer_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Manufacturer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'BOEING'),(2,'AIRBUS');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passenger` (
  `Passenger_id` int(11) NOT NULL,
  `Passenger_Seat_Id` int(11) DEFAULT NULL,
  `Passenger_Flight_Id` int(11) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Location_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Passenger_id`),
  KEY `Passenger_Seat_Id_idx` (`Passenger_Seat_Id`),
  KEY `Passenger_Flight_Id_idx` (`Passenger_Flight_Id`),
  KEY `Location_Id_idx` (`Location_Id`),
  CONSTRAINT `Location_Id` FOREIGN KEY (`Location_Id`) REFERENCES `location` (`Location_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Passenger_Flight_Id` FOREIGN KEY (`Passenger_Flight_Id`) REFERENCES `flight` (`Flight_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Passenger_Seat_Id` FOREIGN KEY (`Passenger_Seat_Id`) REFERENCES `seat` (`Seat_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (1,NULL,NULL,'ROMELL','r@yahoo.com',1),(2,201,701,'AKSHAY','a@gmail.com',3),(3,203,701,'BOBBY','b@hotmail.com',2),(4,NULL,NULL,'SUSHANT','s@icloud.com',4),(5,206,702,'ERIC','e@rediff.com',3);
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat` (
  `Seat_Id` int(11) NOT NULL,
  `Flight_Id` int(11) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `SeatPrice` int(11) DEFAULT NULL,
  PRIMARY KEY (`Seat_Id`),
  UNIQUE KEY `Seat Id_UNIQUE` (`Seat_Id`),
  KEY `Seat Flight ID_idx` (`Flight_Id`),
  CONSTRAINT `Seat Flight ID` FOREIGN KEY (`Flight_Id`) REFERENCES `flight` (`Flight_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Seat_Type` FOREIGN KEY (`Seat_Id`) REFERENCES `seat_type` (`Seat_Type_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (200,701,'Available',1,200),(201,701,'Booked',2,400),(203,701,'Booked',1,200),(204,701,'Available',2,400),(205,701,'Booked',1,200),(206,702,'Booked',1,250),(207,702,'Available',2,500),(208,703,'Available',1,300),(209,703,'Reserved',2,500),(210,704,'Available',1,100),(211,704,'Available',2,300),(213,700,'Available',1,250),(214,700,'Available',2,500);
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat_type`
--

DROP TABLE IF EXISTS `seat_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat_type` (
  `Seat_Type_Id` int(11) NOT NULL,
  `Seat_Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Seat_Type_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_type`
--

LOCK TABLES `seat_type` WRITE;
/*!40000 ALTER TABLE `seat_type` DISABLE KEYS */;
INSERT INTO `seat_type` VALUES (1,'economy'),(2,'business');
/*!40000 ALTER TABLE `seat_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'aircraft_management_system'
--

--
-- Dumping routines for database 'aircraft_management_system'
--
/*!50003 DROP PROCEDURE IF EXISTS `book_ticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `book_ticket`(inout passenger_id int,inout flight_id int,inout seat_id int)
BEGIN
insert into booking(Flight_id,Seat_id,Passenger_id) values (@flight_id,@seat_id,@passenger_id);

update seat set seat.Status='Booked' where seat.Seat_Id=@seat_id;
update passenger set passenger.Passenger_Flight_Id=@flight_id where passenger.Passenger_id=passenger_id;
update passenger set passenger.Passenger_Seat_Id=@seat_id where passenger.Passenger_id=passenger_id;
select * from booking;
select * from seat;
select * from passenger;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_seat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_seat`(inout passenger_id int,inout flight_id int,inout seat_id int)
BEGIN
delete from booking where booking.Flight_id=@flight_id and booking.Seat_id=@seat_id and booking.Passenger_id=@passenger_id ;
update seat set seat.Status='Available' where seat.Seat_Id=@seat_id;
update passenger set passenger.Passenger_Flight_Id=null  where passenger.Passenger_id=passenger_id;
update passenger set passenger.Passenger_Seat_Id=null where passenger.Passenger_id=passenger_id;
select * from booking;
select * from seat;
select * from passenger;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `discount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `discount`(inout flightid int,inout discount_price int)
BEGIN
update  seat set seat.SeatPrice=seat.SeatPrice-@discount_price
where seat.Flight_Id=@flightid and seat.Status='Available';
select *from seat;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `price_increase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `price_increase`(inout flightid int,inout price_hike int)
BEGIN
update  seat set seat.SeatPrice=seat.SeatPrice+@price_hike
where seat.Flight_Id=@flightid and seat.Status='Available';
select *from seat;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Reserve_Seat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Reserve_Seat`(inout passenger_id int,inout flight_id int,inout seat_id int)
BEGIN
update seat set seat.Status='Reserved' where seat.Seat_Id=@seat_id;
select * from seat;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `resetemployee_password` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetemployee_password`(inout employee_id int, inout password_user varchar(50))
BEGIN
update employee set employee.password=password(@password_user) where employee.EmployeeId=@employee_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `revenue_per_flight` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `revenue_per_flight`()
BEGIN


select seat.Flight_Id,sum(SeatPrice) as revenue_per_flight from seat 

where seat.Status='Booked'
group by seat.Flight_Id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_flight` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_flight`(inout source_airport int , inout destination_airport int)
BEGIN
select flight.Flight_Id ,flight.Flight_time as date , aircraft_company.Aircraft_Company_Name as Airlines from flight
inner join aircraft_company on flight.Aircraft_company=aircraft_company.Aircraft_comapny_Id 
where flight.Source_Airport=@source_airport and flight.Destination_Airport=@destination_airport;
select * from airport;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `flight_details`
--

/*!50001 DROP VIEW IF EXISTS `flight_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `flight_details` AS select `flight`.`Flight_Id` AS `Flight_Id`,`seat`.`Seat_Id` AS `Seat_Id`,`seat`.`SeatPrice` AS `SeatPrice`,`aircraft_company`.`Aircraft_Company_Name` AS `Aircraft_Company_Name`,`flight`.`Flight_time` AS `Flight_time`,`seat`.`Status` AS `Status`,`manufacturer`.`Manufacturer_Name` AS `Manufacturer_Name`,`flight_type`.`Type_Name` AS `Type_Name`,`airport`.`Airport_Name` AS `Destination` from (((((`flight` join `seat` on((`seat`.`Flight_Id` = `flight`.`Flight_Id`))) join `aircraft_company` on((`flight`.`Aircraft_company` = `aircraft_company`.`Aircraft_comapny_Id`))) join `manufacturer` on((`flight`.`Manufacturer` = `manufacturer`.`Manufacturer_Id`))) join `flight_type` on((`flight`.`Flight_Type` = `flight_type`.`Type_id`))) join `airport` on((`flight`.`Destination_Airport` = `airport`.`Airport_Id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `flight_hihest_ticket_price`
--

/*!50001 DROP VIEW IF EXISTS `flight_hihest_ticket_price`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `flight_hihest_ticket_price` AS select max(`seat`.`SeatPrice`) AS `Most_Expensive_ticket`,`flight`.`Flight_Id` AS `Flight_Id`,`flight`.`Flight_time` AS `Flight_time`,`aircraft_company`.`Aircraft_Company_Name` AS `Aircraft_Company_Name` from ((`flight` join `seat` on((`seat`.`Flight_Id` = `flight`.`Flight_Id`))) join `aircraft_company` on((`flight`.`Aircraft_company` = `aircraft_company`.`Aircraft_comapny_Id`))) group by `flight`.`Flight_Id` order by `Most_Expensive_ticket` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-14  2:28:05
