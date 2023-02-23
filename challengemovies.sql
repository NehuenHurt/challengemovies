-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: challengemovies
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'john'),(2,'bryan castron'),(3,'leonardo di caprio'),(4,'brad pitt'),(5,'Jhonny deep');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor_movie`
--

DROP TABLE IF EXISTS `actor_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_actor` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_movie` (`id_movie`),
  KEY `id_actor` (`id_actor`),
  CONSTRAINT `actor_movie_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id`),
  CONSTRAINT `actor_movie_ibfk_2` FOREIGN KEY (`id_actor`) REFERENCES `actor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_movie`
--

LOCK TABLES `actor_movie` WRITE;
/*!40000 ALTER TABLE `actor_movie` DISABLE KEYS */;
INSERT INTO `actor_movie` VALUES (2,2,1),(3,2,3),(4,1,2);
/*!40000 ALTER TABLE `actor_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor_tv_show`
--

DROP TABLE IF EXISTS `actor_tv_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor_tv_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_actor` int(11) NOT NULL,
  `id_tv_show` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_actor` (`id_actor`),
  KEY `id_tv_show` (`id_tv_show`),
  CONSTRAINT `actor_tv_show_ibfk_1` FOREIGN KEY (`id_actor`) REFERENCES `actor` (`id`),
  CONSTRAINT `actor_tv_show_ibfk_2` FOREIGN KEY (`id_tv_show`) REFERENCES `tv_show` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_tv_show`
--

LOCK TABLES `actor_tv_show` WRITE;
/*!40000 ALTER TABLE `actor_tv_show` DISABLE KEYS */;
INSERT INTO `actor_tv_show` VALUES (7,4,1),(8,2,1),(9,5,4),(10,1,3),(11,3,3);
/*!40000 ALTER TABLE `actor_tv_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'nolan'),(2,'vicen gilligan');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `episodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_season` int(11) NOT NULL,
  `id_tv_show` int(11) NOT NULL,
  `id_episode` int(11) NOT NULL,
  `id_director` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_season` (`id_season`),
  KEY `id_director` (`id_director`),
  KEY `id_tv_show` (`id_tv_show`),
  CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`id_season`) REFERENCES `season` (`id`),
  CONSTRAINT `episodes_ibfk_2` FOREIGN KEY (`id_director`) REFERENCES `director` (`id`),
  CONSTRAINT `episodes_ibfk_3` FOREIGN KEY (`id_tv_show`) REFERENCES `tv_show` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodes`
--

LOCK TABLES `episodes` WRITE;
/*!40000 ALTER TABLE `episodes` DISABLE KEYS */;
INSERT INTO `episodes` VALUES (1,1,1,1,1,'first episode breaking bad first season'),(2,2,1,2,2,'second episode breaking bad second season'),(3,7,4,1,1,'first episode dark first season'),(4,8,4,2,2,'second episode breaking bad second season'),(5,3,2,1,1,'first episode strangher things first season'),(6,4,2,2,1,'second episode strangher things second season');
/*!40000 ALTER TABLE `episodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_director` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `genere` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_director` (`id_director`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`id_director`) REFERENCES `director` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,1,'caballero oscuro','drama'),(2,1,'memento','drama'),(3,2,'lost','suspense');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `season` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `season_number` int(11) NOT NULL,
  `id_tv_show` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`season_number`),
  KEY `id_tv_show` (`id_tv_show`),
  CONSTRAINT `season_ibfk_1` FOREIGN KEY (`id_tv_show`) REFERENCES `tv_show` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (1,1,1,'first season breaking bad'),(2,2,1,'second season breaking bad'),(3,1,2,'first season stranger things'),(4,2,2,'second season strangher things'),(5,1,3,'first season narcos'),(6,2,3,'second season narcos'),(7,1,4,'first season dark'),(8,2,4,'second season dark');
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_show`
--

DROP TABLE IF EXISTS `tv_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `genere` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show`
--

LOCK TABLES `tv_show` WRITE;
/*!40000 ALTER TABLE `tv_show` DISABLE KEYS */;
INSERT INTO `tv_show` VALUES (1,'breeaking bad','criminal'),(2,'stranger things','drama'),(3,'narcos','police'),(4,'dark','suspense');
/*!40000 ALTER TABLE `tv_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test','test@hotmail.com',NULL,'$2y$10$qaErzDo5nCASHAUwsddmAe98CzvS9X/.kHJ9TYJYeSymM7JejIkaW',NULL,NULL,NULL),(2,'larainfo','larainfo@gmail.com',NULL,'$2y$10$h8iHefGgdTRN7MWKbzu2q.AOsmjSw0oWt8gwekBAHSAl5ly1J7U3u',NULL,'2023-02-21 22:06:40','2023-02-21 22:06:40'),(3,'sarasa','asd1@gmail.com',NULL,'$2y$10$h7ChissfHeQKdVJwMK.0vu8l/fHBNay4M1aYklGLJk.6QF1awTlnG',NULL,'2023-02-21 23:33:33','2023-02-21 23:33:33'),(4,'GW0Cp6Y4UO','iJ0AQhIar9@gmail.com',NULL,'$2y$10$uvgs8fISW.1RVTGjgQVxPuQDU4CKU308/X3KeVMXOQJ4RTY6J.2v2',NULL,NULL,NULL),(5,'8tOtousphe','P1kZRLHr5Y@gmail.com',NULL,'$2y$10$Np59WTIouvnZaioob72P3OKtN1qaUo3/zaEkYLBIizlUgCdZDkEEi',NULL,NULL,NULL),(6,'sarasa','asasdd1@gmail.com',NULL,'$2y$10$B1daPn0IooLv8Uvu71hYXu2xxSNQZdX61mM20qOg11CHh60iMpvrG',NULL,'2023-02-22 02:59:16','2023-02-22 02:59:16'),(7,'grisesina','larain234234fo@gmail.com',NULL,'$2y$10$sY0s2Dd6pKvyriWxTqbQXOKkphqC5WmRMvk4YhlpeMu42JgPLgcKa',NULL,'2023-02-23 03:09:18','2023-02-23 03:09:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-23 12:26:06
