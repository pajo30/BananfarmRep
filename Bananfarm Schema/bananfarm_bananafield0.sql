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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-24 11:15:05
