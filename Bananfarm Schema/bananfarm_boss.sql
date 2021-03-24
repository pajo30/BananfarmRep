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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-24 11:19:44
