-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: bananfarm
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bananafield`
--

DROP TABLE IF EXISTS `bananafield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bananafield` (
  `bananafield_id` int NOT NULL AUTO_INCREMENT,
  `bananafield_m2` int NOT NULL,
  `bananafield_treecount` int DEFAULT NULL,
  `bananasort_bananasort_id` int NOT NULL,
  `maturity_maturity_id` int NOT NULL,
  `Boss_boss_id` int NOT NULL,
  `country_country_id` int NOT NULL,
  PRIMARY KEY (`bananafield_id`,`bananasort_bananasort_id`,`maturity_maturity_id`,`Boss_boss_id`,`country_country_id`),
  KEY `fk_Bananafield_bananasort1_idx` (`bananasort_bananasort_id`),
  KEY `fk_Bananafield_maturity1_idx` (`maturity_maturity_id`),
  KEY `fk_Bananafield_Boss1_idx` (`Boss_boss_id`),
  KEY `fk_Bananafield_country1_idx` (`country_country_id`),
  CONSTRAINT `fk_Bananafield_bananasort1` FOREIGN KEY (`bananasort_bananasort_id`) REFERENCES `bananasort` (`bananasort_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_Bananafield_Boss1` FOREIGN KEY (`Boss_boss_id`) REFERENCES `boss` (`boss_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_Bananafield_country1` FOREIGN KEY (`country_country_id`) REFERENCES `country` (`country_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_Bananafield_maturity1` FOREIGN KEY (`maturity_maturity_id`) REFERENCES `maturity` (`maturity_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bananafield`
--

LOCK TABLES `bananafield` WRITE;
/*!40000 ALTER TABLE `bananafield` DISABLE KEYS */;
INSERT INTO `bananafield` VALUES (1,18655,1,1,1,13,6),(2,29526,1,1,2,4,11),(3,24608,1,1,3,3,6),(4,26957,1,1,4,2,1),(5,26938,1,1,5,11,3),(6,29783,1,1,6,9,8),(7,27620,1,1,7,8,10),(8,21579,1,1,8,3,4),(9,22559,1,1,9,12,3),(10,15302,1,1,10,12,1),(11,23170,1,1,11,14,7),(12,17372,1,1,12,7,13),(13,23270,1,1,13,9,7),(14,20185,1,1,14,13,13),(15,20603,1,1,15,12,13),(16,15521,1,1,16,6,9),(17,22846,1,1,17,6,14),(18,16056,1,1,18,6,12),(19,21487,1,1,19,9,12),(20,15824,1,1,20,5,11),(21,15678,1,1,21,4,11),(22,24888,1,1,22,10,5),(23,19647,1,1,23,1,8),(24,19433,1,1,24,14,10),(25,21626,1,1,25,4,12),(26,24464,1,1,26,4,11),(27,15113,1,1,27,1,2),(28,16191,1,1,28,4,11),(29,28031,1,1,29,14,6),(30,28720,1,1,30,11,11);
/*!40000 ALTER TABLE `bananafield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bananasort`
--

DROP TABLE IF EXISTS `bananasort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bananasort` (
  `bananasort_id` int NOT NULL AUTO_INCREMENT,
  `banana_name` varchar(45) NOT NULL,
  PRIMARY KEY (`bananasort_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bananasort`
--

LOCK TABLES `bananasort` WRITE;
/*!40000 ALTER TABLE `bananasort` DISABLE KEYS */;
INSERT INTO `bananasort` VALUES (1,'Yellow Ladie'),(2,'Sweet Steve'),(3,'Tiny Tim'),(4,'Long John Vegas'),(5,'Skinny Muppet'),(6,'Musa Bakeri'),(7,'Musa Boman'),(8,'Musa Hirta'),(9,'Musa Voonii'),(10,'Musa Rubra'),(11,'Musa Zaifu');
/*!40000 ALTER TABLE `bananasort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boss`
--

DROP TABLE IF EXISTS `boss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boss` (
  `boss_id` int NOT NULL AUTO_INCREMENT,
  `boss_name` varchar(45) NOT NULL,
  `boss_wage` int DEFAULT NULL,
  `boss_title` varchar(45) DEFAULT NULL,
  `country_country_id` int NOT NULL,
  PRIMARY KEY (`boss_id`,`country_country_id`),
  KEY `fk_Boss_country1_idx` (`country_country_id`),
  CONSTRAINT `fk_Boss_country1` FOREIGN KEY (`country_country_id`) REFERENCES `country` (`country_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boss`
--

LOCK TABLES `boss` WRITE;
/*!40000 ALTER TABLE `boss` DISABLE KEYS */;
INSERT INTO `boss` VALUES (1,'Claire X. Medina',43000,'VD',1),(2,'Gloria R. Gomez',40000,'VD',2),(3,'Alec J. Oneal',43000,'VD',4),(4,'Dominic L. Hess',47000,'VD',3),(5,'Sawyer N. Romero',40000,'VD',7),(6,'Beau D. Meadows',45000,'VD',11),(7,'Noelle M. Lawrence',40000,'VD',6),(8,'Emerald F. Stanley',42000,'VD',10),(9,'Aiko F. Webster',40000,'VD',13),(10,'Aristotle T. Rogers',43000,'VD',5),(11,'Claire X. Medina',43000,'VD',9),(12,'Gloria R. Gomez',40000,'VD',12),(13,'Alec J. Oneal',43000,'VD',8),(14,'Dominic L. Hess',47000,'VD',14);
/*!40000 ALTER TABLE `boss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `boss and employees`
--

DROP TABLE IF EXISTS `boss and employees`;
/*!50001 DROP VIEW IF EXISTS `boss and employees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `boss and employees` AS SELECT 
 1 AS `Employee_id`,
 1 AS `Employee_name`,
 1 AS `Employee_wage`,
 1 AS `Employee_title`,
 1 AS `Boss_boss_id`,
 1 AS `Boss_country_country_id`,
 1 AS `boss_id`,
 1 AS `boss_name`,
 1 AS `boss_wage`,
 1 AS `boss_title`,
 1 AS `country_country_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(45) NOT NULL,
  `country_temp` int DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'India',25),(2,'Spain',13),(3,'China',20),(4,'Egypten',19),(5,'Morocco',16),(6,'Brazil',22),(7,'Ecuador',8),(8,'Philippines',31),(9,'Guatemala',17),(10,'Costa Rica',17),(11,'Mexico',14),(12,'Cuba',18),(13,'Iran',24),(14,'South Korea',13);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_id` int NOT NULL AUTO_INCREMENT,
  `Employee_name` varchar(45) NOT NULL,
  `Employee_wage` int DEFAULT NULL,
  `Employee_title` varchar(45) DEFAULT NULL,
  `Boss_boss_id` int NOT NULL,
  `Boss_country_country_id` int NOT NULL,
  PRIMARY KEY (`Employee_id`,`Boss_boss_id`,`Boss_country_country_id`),
  KEY `fk_Employee_Boss1_idx` (`Boss_boss_id`,`Boss_country_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Timofei Sharrem',24313,'Banana Picker',11,3),(2,'Isaak Vampouille',27644,'Banana Picker',6,11),(3,'Daffy Antonin',27284,'Banana Picker',14,1),(4,'Maddie Bowering',21435,'Banana Picker',6,1),(5,'Gerri Culligan',21390,'Banana Picker',5,4),(6,'Gabriela Naden',20398,'Banana Picker',2,2),(7,'Gunner Fishbourne',25833,'Banana Picker',14,6),(8,'Barde Elliot',22941,'Operations Manager',3,12),(9,'Gillian Conew',22438,'Group Manager',7,5),(10,'Katee Whieldon',28813,'Banana Picker',5,9),(11,'Terese Breukelman',29231,'Banana Picker',13,5),(12,'Mahalia Lockie',21195,'Banana Picker',1,3),(13,'Orlan Whitta',23435,'Banana Picker',11,6),(14,'Ernest Parrin',29355,'Banana Picker',12,2),(15,'Curtice Rousby',22767,'Banana Picker',10,3),(16,'Wendy Prazor',23146,'Banana Picker',11,1),(17,'Lila Sybe',25664,'Operations Manager',11,7),(18,'Peyton Rose',24457,'Group Manager',8,10),(19,'Alwin Kalb',28252,'Banana Picker',7,7),(20,'Care MacFie',28833,'Banana Picker',2,2),(21,'Dari Robertis',21710,'Banana Picker',5,11),(22,'Tiphanie Normanville',24587,'Banana Picker',3,14),(23,'Clevey Readman',26354,'Banana Picker',4,10),(24,'Minne Eckersley',26874,'Banana Picker',3,9),(25,'Cathi Dinis',20552,'Banana Picker',10,8),(26,'Tandi Bensen',28241,'Operations Manager',2,2),(27,'Torie Heaseman',23745,'Group Manager',4,10),(28,'Galven Hunston',27726,'Banana Picker',5,11),(29,'Hatty Howler',24495,'Banana Picker',12,1),(30,'Tiffani Dumberrill',28354,'Banana Picker',4,10),(31,'Nikolaus Exall',29587,'Banana Picker',4,14),(32,'Justine De Luna',21525,'Banana Picker',13,3),(33,'Jackquelin Maisey',23009,'Banana Picker',9,8),(34,'Consuela Loudian',20867,'Banana Picker',2,6),(35,'Madlin Filmer',29716,'Operations Manager',1,10),(36,'Archibold Pechell',22213,'Group Manager',5,6),(37,'Myrlene Brightman',24523,'Banana Picker',7,7),(38,'Eolanda Hannigan',24285,'Banana Picker',7,3),(39,'Frankie Tenpenny',26177,'Banana Picker',11,6),(40,'Rachel Spreull',23314,'Banana Picker',1,3),(41,'Kerry Currey',22619,'Banana Picker',9,5),(42,'Horton Gorgler',20370,'Banana Picker',7,3),(43,'Marcellina Halfhyde',23192,'Banana Picker',9,9),(44,'Marlow Perillo',27641,'Operations Manager',13,7),(45,'Brod Camplejohn',29907,'Group Manager',11,8),(46,'Stu Dabney',28863,'Banana Picker',4,7),(47,'Gerladina Semper',21133,'Banana Picker',13,1),(48,'Rubin Scroxton',20716,'Banana Picker',5,3),(49,'Kristan Whitford',24916,'Banana Picker',11,10),(50,'Creight Kirtland',23092,'Banana Picker',14,8),(51,'Zandra Ponnsett',29214,'Banana Picker',12,13),(52,'Justine Crayke',29571,'Banana Picker',8,12),(53,'Cob Drewet',27679,'Operations Manager',7,6),(54,'Teddie Sallarie',27677,'Group Manager',1,7),(55,'Rivalee Gerritzen',26864,'Banana Picker',10,6),(56,'Valdemar Kinvan',25972,'Banana Picker',9,12),(57,'Boigie Dhennin',26178,'Banana Picker',4,2),(58,'Kristoforo Asher',24694,'Banana Picker',4,4),(59,'Zia Egle of Germany',28205,'Banana Picker',14,5),(60,'Reggis Reddihough',22231,'Banana Picker',10,7),(61,'Garret Daveridge',24355,'Banana Picker',10,7),(62,'Fern de Merida',22682,'Operations Manager',10,7),(63,'Lorenza Crickmer',24996,'Group Manager',7,13),(64,'Cathi Cerie',20529,'Banana Picker',10,10),(65,'Joice Pinniger',22455,'Banana Picker',13,8),(66,'Lefty McKelloch',22543,'Banana Picker',7,9),(67,'Chrysler Peskin',24747,'Banana Picker',2,8),(68,'Philbert Carncross',23541,'Banana Picker',10,13),(69,'Danette Paffitt',25883,'Banana Picker',12,9),(70,'Granthem Murrock',25512,'Banana Picker',7,14),(71,'Elmer Nore',27835,'Operations Manager',11,1),(72,'Valery Foord',22950,'Group Manager',12,7),(73,'Hyatt Attwoull',25115,'Banana Picker',3,9),(74,'Prudi Beardmore',25085,'Banana Picker',14,5),(75,'Deirdre MacPeice',20957,'Banana Picker',11,9),(76,'Annalise Pren',29950,'Banana Picker',12,4),(77,'Alta Ianiello',20089,'Banana Picker',3,12),(78,'Mirella Catcherside',25012,'Banana Picker',1,10),(79,'Basia Olfert',24299,'Banana Picker',14,8),(80,'Minerva Girardet',28425,'Operations Manager',4,14),(81,'Daphna Gayle',29073,'Group Manager',9,10),(82,'Wells Cubbinelli',29843,'Banana Picker',2,9),(83,'Harman Marcham',23708,'Banana Picker',8,13),(84,'Jsandye Cully',25954,'Banana Picker',4,5),(85,'Currie Benettolo',25701,'Banana Picker',3,2),(86,'Charisse Gendricke',24434,'Banana Picker',14,6),(87,'Corny Morphet',25883,'Banana Picker',7,9),(88,'Beitris Fernant',26363,'Banana Picker',7,5),(89,'Randy Iacovelli',26714,'Operations Manager',10,13),(90,'Darsey Slocum',20932,'Group Manager',12,7),(91,'Taddeusz Gullifant',26916,'Banana Picker',12,13),(92,'Benny Yair',25878,'Banana Picker',14,9),(93,'Maggee Blewitt',25934,'Banana Picker',4,4),(94,'Shannen Cicculini',25656,'Banana Picker',2,7),(95,'Lorraine Godrich',21373,'Banana Picker',10,13),(96,'Wolfgang Dunster',28567,'Banana Picker',10,10),(97,'Lowrance Bulloch',25654,'Banana Picker',12,9),(98,'Leigh Jenman',20028,'Operations Manager',5,4),(99,'Bron Launder',28684,'Group Manager',9,6),(100,'Baily Annear',27995,'Banana Picker',11,7);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maturity`
--

DROP TABLE IF EXISTS `maturity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maturity` (
  `maturity_id` int NOT NULL AUTO_INCREMENT,
  `maturity_colour` varchar(45) NOT NULL,
  `maturity_avaragelength_inch` int NOT NULL,
  `maturity_export_y/n` tinyint NOT NULL,
  `bananasort_bananasort_id` int NOT NULL,
  `maturity_bananadateofplant` date DEFAULT NULL,
  PRIMARY KEY (`maturity_id`,`bananasort_bananasort_id`),
  KEY `fk_bananasort_idx` (`bananasort_bananasort_id`),
  CONSTRAINT `fk_banansort` FOREIGN KEY (`bananasort_bananasort_id`) REFERENCES `bananasort` (`bananasort_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maturity`
--

LOCK TABLES `maturity` WRITE;
/*!40000 ALTER TABLE `maturity` DISABLE KEYS */;
INSERT INTO `maturity` VALUES (1,'Green',1,0,1,'2021-02-15'),(2,'Green',3,0,1,'2021-02-22'),(3,'Green',4,0,1,'2021-02-05'),(4,'Green/Yellow',5,1,2,'2021-01-15'),(5,'Green/Yellow',6,1,2,'2021-01-20'),(6,'Green',4,0,2,'2021-02-22'),(7,'Green',3,0,2,'2021-02-19'),(8,'Green',3,0,3,'2021-02-25'),(9,'Green',2,0,3,'2021-02-05'),(10,'Green',3,0,3,'2021-02-10'),(11,'Green/Yellow',6,1,4,'2021-01-20'),(12,'Green/Yellow',6,1,4,'2021-01-25'),(13,'Green',3,0,4,'2021-02-25'),(14,'Green',4,0,5,'2021-02-28'),(15,'Green',2,0,5,'2021-02-27'),(16,'Green',3,0,5,'2021-02-17'),(17,'Green/Yellow',6,1,5,'2021-01-30'),(18,'Green',3,0,6,'2021-02-10'),(19,'Green',2,0,6,'2021-03-10'),(20,'Green',4,0,6,'2021-03-05'),(21,'Green',4,0,6,'2021-03-02'),(22,'Green/Yellow',5,1,7,'2020-12-31'),(23,'Green/Yellow',5,1,7,'2020-12-31'),(24,'Green/Yellow',6,1,7,'2020-12-31'),(25,'Green',3,0,8,'2021-03-10'),(26,'Green/Yellow',6,1,8,'2020-12-31'),(27,'Green',4,0,9,'2021-02-15'),(28,'Green/Yellow',6,1,10,'2021-01-10'),(29,'Green',3,0,10,'2021-03-12'),(30,'Green',4,0,11,'2021-03-24');
/*!40000 ALTER TABLE `maturity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sorts and fields`
--

DROP TABLE IF EXISTS `sorts and fields`;
/*!50001 DROP VIEW IF EXISTS `sorts and fields`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sorts and fields` AS SELECT 
 1 AS `bananasort_id`,
 1 AS `banana_name`,
 1 AS `bananafield_id`,
 1 AS `bananafield_m2`,
 1 AS `bananafield_treecount`,
 1 AS `bananasort_bananasort_id`,
 1 AS `maturity_maturity_id`,
 1 AS `Boss_boss_id`,
 1 AS `country_country_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `boss and employees`
--

/*!50001 DROP VIEW IF EXISTS `boss and employees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `boss and employees` AS select `employee`.`Employee_id` AS `Employee_id`,`employee`.`Employee_name` AS `Employee_name`,`employee`.`Employee_wage` AS `Employee_wage`,`employee`.`Employee_title` AS `Employee_title`,`employee`.`Boss_boss_id` AS `Boss_boss_id`,`employee`.`Boss_country_country_id` AS `Boss_country_country_id`,`boss`.`boss_id` AS `boss_id`,`boss`.`boss_name` AS `boss_name`,`boss`.`boss_wage` AS `boss_wage`,`boss`.`boss_title` AS `boss_title`,`boss`.`country_country_id` AS `country_country_id` from (`employee` join `boss` on((`boss`.`boss_id` = `employee`.`Boss_boss_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sorts and fields`
--

/*!50001 DROP VIEW IF EXISTS `sorts and fields`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sorts and fields` AS select `bananasort`.`bananasort_id` AS `bananasort_id`,`bananasort`.`banana_name` AS `banana_name`,`bananafield`.`bananafield_id` AS `bananafield_id`,`bananafield`.`bananafield_m2` AS `bananafield_m2`,`bananafield`.`bananafield_treecount` AS `bananafield_treecount`,`bananafield`.`bananasort_bananasort_id` AS `bananasort_bananasort_id`,`bananafield`.`maturity_maturity_id` AS `maturity_maturity_id`,`bananafield`.`Boss_boss_id` AS `Boss_boss_id`,`bananafield`.`country_country_id` AS `country_country_id` from (`bananasort` join `bananafield` on((`bananasort`.`bananasort_id` = `bananafield`.`bananasort_bananasort_id`))) */;
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

-- Dump completed on 2021-03-24 13:37:19
