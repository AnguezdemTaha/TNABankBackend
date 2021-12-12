-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: tnabank
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `account`
--

use heroku_df7ba0dce776827;

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `movement_amount` float NOT NULL,
  `movement_date` datetime(6) DEFAULT NULL,
  `sold` float NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7m8ru44m93ukyb61dfxw0apf6` (`user_id`),
  CONSTRAINT `FK7m8ru44m93ukyb61dfxw0apf6` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'11',1,NULL,2,1),(2,'22',2,NULL,1,1),(3,'33',3,NULL,-1,2);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (37);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer` (
  `id` int NOT NULL,
  `amount` float NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `from_id` int DEFAULT NULL,
  `to_id` int DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo7j1pf8km87isibnub26wbrfp` (`from_id`),
  KEY `FKt9tuqn6jftek3gomrimsowr7g` (`to_id`),
  CONSTRAINT `FKo7j1pf8km87isibnub26wbrfp` FOREIGN KEY (`from_id`) REFERENCES `account` (`id`),
  CONSTRAINT `FKt9tuqn6jftek3gomrimsowr7g` FOREIGN KEY (`to_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer`
--

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
INSERT INTO `transfer` VALUES (1,0.5,'A',1,3,NULL),(2,3,'B',1,3,NULL),(3,30,'test',1,3,NULL),(4,0,'a',1,3,NULL),(5,0.1,'a',1,3,NULL),(14,0,'a',1,3,NULL),(15,0,'b',2,3,'2021-12-11 21:04:44.593000'),(16,0,'1',1,3,'2021-12-11 21:11:23.598000'),(18,0,'a',2,3,'2021-12-11 21:16:11.089000'),(21,0,'a',1,3,'2021-12-11 21:20:30.011000'),(22,0,'a',1,3,'2021-12-11 21:24:36.359000'),(25,0,'a',1,3,'2021-12-11 21:28:06.143000'),(26,0,'s',1,3,'2021-12-11 21:33:57.058000'),(27,0,'t',1,3,'2021-12-11 21:39:33.913000'),(28,1,'zzz',1,3,'2021-12-11 21:45:16.495000'),(29,0,'q',1,3,'2021-12-11 21:50:18.271000'),(32,0,'a',1,3,'2021-12-11 21:59:45.131000'),(33,0,'www',1,3,'2021-12-11 22:21:04.007000'),(34,-1,'mmm',1,3,'2021-12-11 22:54:07.858000'),(35,1,'lll',2,1,'2021-12-11 23:15:51.674000'),(36,1.5,'zz',1,1,'2021-12-12 00:15:58.491000');
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'test1'),(2,'test2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-12  2:24:51
