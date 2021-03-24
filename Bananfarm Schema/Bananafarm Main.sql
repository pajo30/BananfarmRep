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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bananafield`
--

LOCK TABLES `bananafield` WRITE;
/*!40000 ALTER TABLE `bananafield` DISABLE KEYS */;
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
  `banana_dateofplant` datetime DEFAULT NULL,
  PRIMARY KEY (`bananasort_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bananasort`
--

LOCK TABLES `bananasort` WRITE;
/*!40000 ALTER TABLE `bananasort` DISABLE KEYS */;
INSERT INTO `bananasort` VALUES (1,'Yellow Ladie','2021-03-24 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
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
  PRIMARY KEY (`maturity_id`,`bananasort_bananasort_id`),
  KEY `fk_bananasort_idx` (`bananasort_bananasort_id`),
  CONSTRAINT `fk_banansort` FOREIGN KEY (`bananasort_bananasort_id`) REFERENCES `bananasort` (`bananasort_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maturity`
--

LOCK TABLES `maturity` WRITE;
/*!40000 ALTER TABLE `maturity` DISABLE KEYS */;
INSERT INTO `maturity` VALUES (1,'Green',1,0,1),(2,'Green',3,0,1),(3,'Green',4,0,1),(4,'Green/Yellow',5,0,1),(5,'Green/Yellow',6,1,1);
/*!40000 ALTER TABLE `maturity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-24 11:26:41
