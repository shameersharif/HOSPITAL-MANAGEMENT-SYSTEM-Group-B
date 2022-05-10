CREATE DATABASE  IF NOT EXISTS `vmedico` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vmedico`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: vmedico
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `app`
--

DROP TABLE IF EXISTS `app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app` (
  `id` int NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `doctor` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `regtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_88vfgccvckwwip06k7tpf8uk3` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app`
--

LOCK TABLES `app` WRITE;
/*!40000 ALTER TABLE `app` DISABLE KEYS */;
INSERT INTO `app` VALUES (9,'2022-04-27','Alzheimer',NULL,'junaidab20@gmail.com','Junaid Ahmed','09:30',NULL),(26,'5/5/2022','Neurology Department',NULL,'shekjava@gmail.com','Shekar Sir','2:00pm',NULL);
/*!40000 ALTER TABLE `app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (29),(29),(29);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `lastseen` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (5,'4c78ad87-b51c-4784-b684-133b505ab9a0','junaidab20@gmail.com',_binary '','Junaid','Male','Ahmed','Thu May 05 11:03:15 IST 2022','iyaazj@123','ROLE_USER'),(7,'2313325b-6e81-49c1-8e8a-571d77307daa','junaidab22@gmail.com',_binary '','Junaid ','Male','Ahmed ','Thu May 05 11:15:35 IST 2022','junaidab','ROLE_ADMIN'),(8,'57eee60e-56bb-47e6-936f-cd55880d914e','rockonjuns@gmail.com',_binary '','Junaid','Male','AB','Thu May 05 11:20:32 IST 2022','junaid','ROLE_DOCTOR'),(10,'a0e63017-15a4-4d49-812c-7d86d2e2630a','junaidab20@gmailc.om',_binary '','Junaid','Male','Ahmed','Thu Apr 28 12:50:58 IST 2022','iyaazj@123','ROLE_USER'),(11,'ByAdmin-Panel','admin@gmail.com',_binary '','admin','Male','abc','Thu Apr 28 18:10:04 IST 2022','admin','ROLE_ADMIN'),(12,'ByAdmin-Panel','fk@gmail.com',_binary '','Firdose','Female','Khan','Thu Apr 28 14:58:14 IST 2022','default','ROLE_DOCTOR'),(14,'ByAdmin-Panel','samarpan@gmail.com',_binary '','Samarpan','Male','Pedapudi',NULL,'default','ROLE_ADMIN'),(15,'4f8165fd-1b45-4457-a54c-c25d790eae63','junaid7996613016@gmail.com',_binary '\0','Daniel','Male','Sams',NULL,NULL,'ROLE_USER'),(16,'71515683-dd48-42af-8f1f-363194ff8e82','abcdeg@gmail.com',_binary '','Sai','Male','Kiran',NULL,'Junaid@123','ROLE_USER'),(18,'ByAdmin-Panel','shameer@gmail.com',_binary '','Shameer','Male','Sharrif',NULL,'default','ROLE_DOCTOR'),(19,'ByAdmin-Panel','saiharini@gmail.com',_binary '','Sai','Female','Harini',NULL,'default','ROLE_DOCTOR'),(22,'ByAdmin-Panel','abchiadjiovs@gmail.com',_binary '','Junaid','Male','B',NULL,'default','ROLE_DOCTOR'),(23,'ByAdmin-Panel','sk@gmail.com',_binary '','Someone','Female','Unknown',NULL,'default','ROLE_ADMIN'),(25,'08058b65-7719-4edb-bba8-94bcfd238de3','shekjava@gmail.com',_binary '','Shekar','Male','Sir','Tue May 03 11:51:15 IST 2022','Shekhar@123','ROLE_USER'),(27,'b34b609f-ee9a-4ef9-9421-ffb47a90c718','shameersharif@gmail.com',_binary '\0','Shameer','Male','Sharif',NULL,NULL,'ROLE_USER'),(28,'13754eb9-226a-4327-abc8-e2b862b23c94','shameersharif123@gmail.com',_binary '','Shameer','Male','Sharif','Thu May 05 11:31:29 IST 2022','shameer@1234','ROLE_USER');
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

-- Dump completed on 2022-05-05 11:51:11
