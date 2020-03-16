-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: elvis_store
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
-- Table structure for table `email_list`
--

DROP TABLE IF EXISTS `email_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_list`
--

LOCK TABLES `email_list` WRITE;
/*!40000 ALTER TABLE `email_list` DISABLE KEYS */;
INSERT INTO `email_list` VALUES (1,'Julian','Oates','julian@breakneckpizza.com'),(2,'Suparin','Fhlug','suparin.fhlug@gmail.com'),(3,'Dorothy','Woods','doro@gmail.com'),(4,'Dan','Robert','dan@gmail.com'),(10,'Kathleen','Winkel','kathleen@gmail.com'),(11,'sdf','sdf','abc@gmail.com');
/*!40000 ALTER TABLE `email_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guitarwars`
--

DROP TABLE IF EXISTS `guitarwars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guitarwars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(32) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `screenshot` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guitarwars`
--

LOCK TABLES `guitarwars` WRITE;
/*!40000 ALTER TABLE `guitarwars` DISABLE KEYS */;
INSERT INTO `guitarwars` VALUES (1,'2008-04-22 14:37:34','Paco Jastorius',127650,NULL),(2,'2008-04-22 21:27:54','Nevil Johansson',98430,NULL),(3,'2008-04-23 09:06:35','Eddie Vanilli',345900,NULL),(4,'2008-04-23 09:12:53','Belita Chevy',282470,NULL),(5,'2008-04-23 09:13:34','Ashton Simpson',368420,NULL),(6,'2008-04-23 14:09:50','Kenny Lavitz',64930,NULL),(7,'2019-02-20 22:16:53','A',12345,''),(9,'2019-02-22 06:05:33','I got it',720000,'nevilsscore.gif'),(10,'2019-02-23 01:45:04','apar',89000,'jeanpaulsscore.gif'),(11,'2019-02-23 02:02:07','Jacob',78000,'jacobsscore.gif');
/*!40000 ALTER TABLE `guitarwars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-26 19:49:36
