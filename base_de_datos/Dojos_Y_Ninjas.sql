CREATE DATABASE  IF NOT EXISTS `esquema_dojos_y_ninjas` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `esquema_dojos_y_ninjas`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: esquema_dojos_y_ninjas
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `dojos`
--

DROP TABLE IF EXISTS `dojos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dojos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dojos`
--

LOCK TABLES `dojos` WRITE;
/*!40000 ALTER TABLE `dojos` DISABLE KEYS */;
INSERT INTO `dojos` VALUES (1,'Seattle','2022-03-09 18:38:19','2022-03-09 18:38:19'),(2,'San Jose','2022-03-09 18:38:25','2022-03-09 18:38:25'),(3,'Burbank','2022-03-09 18:38:32','2022-03-09 18:38:32'),(4,'OC','2022-03-09 18:38:35','2022-03-09 18:38:35'),(5,'Dallas','2022-03-09 18:38:40','2022-03-09 18:38:40'),(6,'Boise','2022-03-09 18:38:49','2022-03-09 18:38:49'),(7,'Chicago','2022-03-09 18:39:00','2022-03-09 18:39:00'),(8,'DC','2022-03-09 18:39:05','2022-03-09 18:39:05');
/*!40000 ALTER TABLE `dojos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ninjas`
--

DROP TABLE IF EXISTS `ninjas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ninjas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `dojo_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ninja_dojo_idx` (`dojo_id`),
  CONSTRAINT `fk_ninja_dojo` FOREIGN KEY (`dojo_id`) REFERENCES `dojos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ninjas`
--

LOCK TABLES `ninjas` WRITE;
/*!40000 ALTER TABLE `ninjas` DISABLE KEYS */;
INSERT INTO `ninjas` VALUES (1,'Todd','Enders',26,1,'2022-03-09 19:35:45','2022-03-09 19:35:45'),(2,'Speros','Misirlakis',28,1,'2022-03-09 19:36:14','2022-03-09 19:36:14'),(3,'Donovan','An',27,1,'2022-03-09 19:36:30','2022-03-09 19:36:30'),(4,'Phill','Krull',31,1,'2022-03-09 19:36:49','2022-03-09 19:36:49');
/*!40000 ALTER TABLE `ninjas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-09 19:38:11
