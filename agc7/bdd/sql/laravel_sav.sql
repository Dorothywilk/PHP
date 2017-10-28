-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animal` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `sexe` char(1) DEFAULT NULL,
  `date_naissance` datetime NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `commentaires` text,
  `espece_id` smallint(6) unsigned NOT NULL,
  `race_id` smallint(6) unsigned DEFAULT NULL,
  `mere_id` smallint(6) unsigned DEFAULT NULL,
  `pere_id` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind_uni_nom_espece_id` (`nom`,`espece_id`),
  KEY `fk_pere_id` (`pere_id`),
  KEY `fk_espece_id` (`espece_id`),
  KEY `fk_mere_id` (`mere_id`),
  KEY `fk_race_id` (`race_id`),
  CONSTRAINT `fk_espece_id` FOREIGN KEY (`espece_id`) REFERENCES `espece` (`id`),
  CONSTRAINT `fk_mere_id` FOREIGN KEY (`mere_id`) REFERENCES `animal` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_pere_id` FOREIGN KEY (`pere_id`) REFERENCES `animal` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_race_id` FOREIGN KEY (`race_id`) REFERENCES `race` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'M','2010-04-05 13:43:00','Rox','Mordille beaucoup',1,1,18,22),(2,NULL,'2010-03-24 02:23:00','Roucky',NULL,2,NULL,40,30),(3,'F','2010-09-13 15:02:00','Schtroumpfette',NULL,2,4,41,31),(4,'F','2009-08-03 05:12:00',NULL,'Bestiole avec une carapace très dure',3,NULL,NULL,NULL),(5,NULL,'2010-10-03 16:44:00','Choupi','Né sans oreille gauche',2,NULL,NULL,NULL),(6,'F','2009-06-13 08:17:00','Bobosse','Carapace bizarre',3,NULL,NULL,NULL),(7,'F','2008-12-06 05:18:00','Caroline',NULL,1,2,NULL,NULL),(8,'M','2008-09-11 15:38:00','Bagherra',NULL,2,5,NULL,NULL),(9,NULL,'2010-08-23 05:18:00',NULL,'Bestiole avec une carapace très dure',3,NULL,NULL,NULL),(10,'M','2010-07-21 15:41:00','Bobo',NULL,1,NULL,7,21),(11,'F','2008-02-20 15:45:00','Canaille',NULL,1,NULL,NULL,NULL),(12,'F','2009-05-26 08:54:00','Cali',NULL,1,2,NULL,NULL),(13,'F','2007-04-24 12:54:00','Rouquine',NULL,1,1,NULL,NULL),(14,'F','2009-05-26 08:56:00','Fila',NULL,1,2,NULL,NULL),(15,'F','2008-02-20 15:47:00','Anya',NULL,1,NULL,NULL,NULL),(16,'F','2009-05-26 08:50:00','Louya',NULL,1,NULL,NULL,NULL),(17,'F','2008-03-10 13:45:00','Welva',NULL,1,NULL,NULL,NULL),(18,'F','2007-04-24 12:59:00','Zira',NULL,1,1,NULL,NULL),(19,'F','2009-05-26 09:02:00','Java',NULL,1,2,NULL,NULL),(20,'M','2007-04-24 12:45:00','Balou',NULL,1,1,NULL,NULL),(21,'F','2008-03-10 13:43:00','Pataude',NULL,1,NULL,NULL,NULL),(22,'M','2007-04-24 12:42:00','Bouli',NULL,1,1,NULL,NULL),(24,'M','2007-04-12 05:23:00','Cartouche',NULL,1,NULL,NULL,NULL),(25,'M','2006-05-14 15:50:00','Zambo',NULL,1,1,NULL,NULL),(26,'M','2006-05-14 15:48:00','Samba',NULL,1,1,NULL,NULL),(27,'M','2008-03-10 13:40:00','Moka',NULL,1,NULL,NULL,NULL),(28,'M','2006-05-14 15:40:00','Pilou',NULL,1,1,NULL,NULL),(29,'M','2009-05-14 06:30:00','Fiero',NULL,2,3,NULL,NULL),(30,'M','2007-03-12 12:05:00','Zonko',NULL,2,5,NULL,NULL),(31,'M','2008-02-20 15:45:00','Filou',NULL,2,4,NULL,NULL),(32,'M','2009-07-26 11:52:00','Spoutnik',NULL,3,NULL,52,NULL),(33,'M','2006-05-19 16:17:00','Caribou',NULL,2,4,NULL,NULL),(34,'M','2008-04-20 03:22:00','Capou',NULL,2,5,NULL,NULL),(35,'M','2006-05-19 16:56:00','Raccou','Pas de queue depuis la naissance',2,4,NULL,NULL),(36,'M','2009-05-14 06:42:00','Boucan',NULL,2,3,NULL,NULL),(37,'F','2006-05-19 16:06:00','Callune',NULL,2,8,NULL,NULL),(38,'F','2009-05-14 06:45:00','Boule',NULL,2,3,NULL,NULL),(39,'F','2008-04-20 03:26:00','Zara',NULL,2,5,NULL,NULL),(40,'F','2007-03-12 12:00:00','Milla',NULL,2,5,NULL,NULL),(41,'F','2006-05-19 15:59:00','Feta',NULL,2,4,NULL,NULL),(42,'F','2008-04-20 03:20:00','Bilba','Sourde de l\'oreille droite à 80%',2,5,NULL,NULL),(43,'F','2007-03-12 11:54:00','Cracotte',NULL,2,5,NULL,NULL),(44,'F','2006-05-19 16:16:00','Cawette',NULL,2,8,NULL,NULL),(45,'F','2007-04-01 18:17:00','Nikki','Bestiole avec une carapace très dure',3,NULL,NULL,NULL),(46,'F','2009-03-24 08:23:00','Tortilla','Bestiole avec une carapace très dure',3,NULL,NULL,NULL),(47,'F','2009-03-26 01:24:00','Scroupy','Bestiole avec une carapace très dure',3,NULL,NULL,NULL),(48,'F','2006-03-15 14:56:00','Lulla','Bestiole avec une carapace très dure',3,NULL,NULL,NULL),(49,'F','2008-03-15 12:02:00','Dana','Bestiole avec une carapace très dure',3,NULL,NULL,NULL),(50,'F','2009-05-25 19:57:00','Cheli','Bestiole avec une carapace très dure',3,NULL,NULL,NULL),(51,'F','2007-04-01 03:54:00','Chicaca','Bestiole avec une carapace très dure',3,NULL,NULL,NULL),(52,'F','2006-03-15 14:26:00','Redbul','Insomniaque',3,NULL,NULL,NULL),(54,'M','2008-03-16 08:20:00','Bubulle','Bestiole avec une carapace très dure',3,NULL,NULL,NULL),(55,'M','2008-03-15 18:45:00','Relou','Surpoids',3,NULL,NULL,NULL),(56,'M','2009-05-25 18:54:00','Bulbizard','Bestiole avec une carapace très dure',3,NULL,NULL,NULL),(57,'M','2007-03-04 19:36:00','Safran','Coco veut un gâteau !',4,NULL,NULL,NULL),(58,'M','2008-02-20 02:50:00','Gingko','Coco veut un gâteau !',4,NULL,NULL,NULL),(59,'M','2009-03-26 08:28:00','Bavard','Coco veut un gâteau !',4,NULL,NULL,NULL),(60,'F','2009-03-26 07:55:00','Parlotte','Coco veut un gâteau !',4,NULL,NULL,NULL),(61,'M','2010-11-09 00:00:00','Yoda',NULL,2,5,NULL,NULL),(65,'M','2010-11-05 00:00:00','Pipo',NULL,1,9,NULL,NULL);
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animaux`
--

DROP TABLE IF EXISTS `animaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animaux` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `clt_id` int(11) unsigned DEFAULT NULL,
  `espece` varchar(40) NOT NULL,
  `sexe` char(1) DEFAULT NULL,
  `date_naissance` datetime DEFAULT NULL,
  `commentaires` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animaux`
--

LOCK TABLES `animaux` WRITE;
/*!40000 ALTER TABLE `animaux` DISABLE KEYS */;
INSERT INTO `animaux` VALUES (1,'Rox',11,'Chien','M','2010-04-05 13:43:00','Mordille beaucoup'),(2,'Roucky',19,'Chat',NULL,'2010-03-24 02:23:00',NULL),(3,'Schtroumpfette',18,'Chat','F','2010-09-13 15:02:00',NULL),(4,NULL,NULL,'Tortue','F','2009-08-03 05:12:00',NULL),(5,'Choupi',17,'Chat',NULL,'2010-10-03 16:44:00','Né sans oreille gauche'),(6,'Bobosse',15,'Tortue','F','2009-06-13 08:17:00','Carapace bizarre'),(7,'Caroline',20,'Chien','F','2008-12-06 05:18:00',NULL),(8,'Bagherra',20,'Chat','M','2008-09-11 15:38:00',NULL),(9,NULL,14,'Tortue',NULL,'2010-08-23 05:18:00',NULL),(10,'Bobo',16,'Chien','M','2010-07-21 15:41:00',NULL),(11,'Canaille',8,'Chien','F','2008-02-20 15:45:00',NULL),(12,'Cali',16,'Chien','F','2009-05-26 08:54:00',NULL),(13,'Rouquine',NULL,'Chien','F','2007-04-24 12:54:00',NULL),(14,'Fila',NULL,'Chien','F','2009-05-26 08:56:00',NULL),(15,'Anya',17,'Chien','F','2008-02-20 15:47:00',NULL),(16,'Louya',2,'Chien','F','2009-05-26 08:50:00',NULL),(17,'Welva',NULL,'Chien','F','2008-03-10 13:45:00',NULL),(18,'Zira',15,'Chien','F','2007-04-24 12:59:00',NULL),(19,'Java',18,'Chien','F','2009-05-26 09:02:00',NULL),(20,'Balou',NULL,'Chien','M','2007-04-24 12:45:00',NULL),(21,'Pataude',6,'Chien','F','2008-03-10 13:43:00',NULL),(22,'Bouli',15,'Chien','M','2007-04-24 12:42:00',NULL),(23,'Parlotte',14,'Perroquet','F','2009-03-26 07:55:00',NULL),(24,'Cartouche',NULL,'Chien','M','2007-04-12 05:23:00',NULL),(25,'Zambo',11,'Chien','M','2006-05-14 15:50:00',NULL),(26,'Samba',10,'Chien','M','2006-05-14 15:48:00',NULL),(27,'Moka',1,'Chien','M','2008-03-10 13:40:00',NULL),(28,'Pilou',14,'Chien','M','2006-05-14 15:40:00',NULL),(29,'Fiero',1,'Chat','M','2009-05-14 06:30:00',NULL),(30,'Zonko',NULL,'Chat','M','2007-03-12 12:05:00',NULL),(31,'Filou',9,'Chat','M','2008-02-20 15:45:00',NULL),(32,'Farceur',15,'Chat','M','2007-03-12 12:07:00',NULL),(33,'Caribou',NULL,'Chat','M','2006-05-19 16:17:00',NULL),(34,'Capou',19,'Chat','M','2008-04-20 03:22:00',NULL),(35,'Raccou',NULL,'Chat','M','2006-05-19 16:56:00','Pas de queue depuis la naissance'),(36,'Boucan',16,'Chat','M','2009-05-14 06:42:00',NULL),(37,'Callune',19,'Chat','F','2006-05-19 16:06:00',NULL),(38,'Boule',18,'Chat','F','2009-05-14 06:45:00',NULL),(39,'Zara',20,'Chat','F','2008-04-20 03:26:00',NULL),(40,'Milla',16,'Chat','F','2007-03-12 12:00:00',NULL),(41,'Feta',5,'Chat','F','2006-05-19 15:59:00',NULL),(42,'Bilba',17,'Chat','F','2008-04-20 03:20:00','Sourde de l\'oreille droite à 80%'),(43,'Cracotte',1,'Chat','F','2007-03-12 11:54:00',NULL),(44,'Cawette',18,'Chat','F','2006-05-19 16:16:00',NULL),(45,'Nikki',9,'Tortue','F','2007-04-01 18:17:00',NULL),(46,'Tortilla',1,'Tortue','F','2009-03-24 08:23:00',NULL),(47,'Scroupy',16,'Tortue','F','2009-03-26 01:24:00',NULL),(48,'Lulla',6,'Tortue','F','2006-03-15 14:56:00',NULL),(49,'Dana',14,'Tortue','F','2008-03-15 12:02:00',NULL),(50,'Cheli',NULL,'Tortue','F','2009-05-25 19:57:00',NULL),(51,'Chicaca',3,'Tortue','F','2007-04-01 03:54:00',NULL),(52,'Redbul',11,'Tortue','F','2006-03-15 14:26:00','Insomniaque'),(53,'Spoutnik',19,'Tortue','M','2007-04-02 01:45:00',NULL),(54,'Bubulle',NULL,'Tortue','M','2008-03-16 08:20:00',NULL),(55,'Relou',NULL,'Tortue','M','2008-03-15 18:45:00','Surpoids'),(56,'Bulbizard',NULL,'Tortue','M','2009-05-25 18:54:00',NULL),(57,'Safran',6,'Perroquet','M','2007-03-04 19:36:00',NULL),(58,'Gingko',NULL,'Perroquet','M','2008-02-20 02:50:00',NULL),(59,'Bavard',6,'Perroquet','M','2009-03-26 08:28:00',NULL),(61,'Jumbo',NULL,'Élephant','M','1977-03-23 00:00:00','Léger surpoids');
/*!40000 ALTER TABLE `animaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animaux_copy`
--

DROP TABLE IF EXISTS `animaux_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animaux_copy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `clt_id` int(11) unsigned DEFAULT NULL,
  `espece` varchar(40) NOT NULL,
  `sexe` char(1) DEFAULT NULL,
  `date_naissance` datetime DEFAULT NULL,
  `commentaires` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animaux_copy`
--

LOCK TABLES `animaux_copy` WRITE;
/*!40000 ALTER TABLE `animaux_copy` DISABLE KEYS */;
INSERT INTO `animaux_copy` VALUES (1,'Rox',NULL,'Chien','M','2010-04-05 13:43:00','Mordille beaucoup'),(2,'Roucky',NULL,'Chat',NULL,'2010-03-24 02:23:00',NULL),(3,'Schtroumpfette',NULL,'Chat','F','2010-09-13 15:02:00',NULL),(4,NULL,NULL,'Tortue','F','2009-08-03 05:12:00',NULL),(5,'Choupi',17,'Chat',NULL,'2010-10-03 16:44:00','Né sans oreille gauche'),(6,'Bobosse',20,'Tortue','F','2009-06-13 08:17:00','Carapace bizarre'),(7,'Caroline',NULL,'Chien','F','2008-12-06 05:18:00',NULL),(8,'Bagherra',19,'Chat','M','2008-09-11 15:38:00',NULL),(9,NULL,1,'Tortue',NULL,'2010-08-23 05:18:00',NULL),(10,'Bobo',9,'Chien','M','2010-07-21 15:41:00',NULL),(11,'Canaille',NULL,'Chien','F','2008-02-20 15:45:00',NULL),(12,'Cali',NULL,'Chien','F','2009-05-26 08:54:00',NULL),(13,'Rouquine',2,'Chien','F','2007-04-24 12:54:00',NULL),(14,'Fila',NULL,'Chien','F','2009-05-26 08:56:00',NULL),(15,'Anya',21,'Chien','F','2008-02-20 15:47:00',NULL),(16,'Louya',1,'Chien','F','2009-05-26 08:50:00',NULL),(17,'Welva',NULL,'Chien','F','2008-03-10 13:45:00',NULL),(18,'Zira',1,'Chien','F','2007-04-24 12:59:00',NULL),(19,'Java',7,'Chien','F','2009-05-26 09:02:00',NULL),(20,'Balou',NULL,'Chien','M','2007-04-24 12:45:00',NULL),(21,'Pataude',8,'Chien','F','2008-03-10 13:43:00',NULL),(22,'Bouli',NULL,'Chien','M','2007-04-24 12:42:00',NULL),(23,'Parlotte',NULL,'Perroquet','F','2009-03-26 07:55:00',NULL),(24,'Cartouche',NULL,'Chien','M','2007-04-12 05:23:00',NULL),(25,'Zambo',NULL,'Chien','M','2006-05-14 15:50:00',NULL),(26,'Samba',21,'Chien','M','2006-05-14 15:48:00',NULL),(27,'Moka',NULL,'Chien','M','2008-03-10 13:40:00',NULL),(28,'Pilou',NULL,'Chien','M','2006-05-14 15:40:00',NULL),(29,'Fiero',21,'Chat','M','2009-05-14 06:30:00',NULL),(30,'Zonko',7,'Chat','M','2007-03-12 12:05:00',NULL),(31,'Filou',15,'Chat','M','2008-02-20 15:45:00',NULL),(32,'Farceur',NULL,'Chat','M','2007-03-12 12:07:00',NULL),(33,'Caribou',16,'Chat','M','2006-05-19 16:17:00',NULL),(34,'Capou',8,'Chat','M','2008-04-20 03:22:00',NULL),(35,'Raccou',1,'Chat','M','2006-05-19 16:56:00','Pas de queue depuis la naissance'),(36,'Boucan',2,'Chat','M','2009-05-14 06:42:00',NULL),(37,'Callune',NULL,'Chat','F','2006-05-19 16:06:00',NULL),(38,'Boule',NULL,'Chat','F','2009-05-14 06:45:00',NULL),(39,'Zara',6,'Chat','F','2008-04-20 03:26:00',NULL),(40,'Milla',NULL,'Chat','F','2007-03-12 12:00:00',NULL),(41,'Feta',13,'Chat','F','2006-05-19 15:59:00',NULL),(42,'Bilba',18,'Chat','F','2008-04-20 03:20:00','Sourde de l\'oreille droite à 80%'),(43,'Cracotte',14,'Chat','F','2007-03-12 11:54:00',NULL),(44,'Cawette',10,'Chat','F','2006-05-19 16:16:00',NULL),(45,'Nikki',NULL,'Tortue','F','2007-04-01 18:17:00',NULL),(46,'Tortilla',NULL,'Tortue','F','2009-03-24 08:23:00',NULL),(47,'Scroupy',9,'Tortue','F','2009-03-26 01:24:00',NULL),(48,'Lulla',18,'Tortue','F','2006-03-15 14:56:00',NULL),(49,'Dana',NULL,'Tortue','F','2008-03-15 12:02:00',NULL),(50,'Cheli',NULL,'Tortue','F','2009-05-25 19:57:00',NULL),(51,'Chicaca',NULL,'Tortue','F','2007-04-01 03:54:00',NULL),(52,'Redbul',1,'Tortue','F','2006-03-15 14:26:00','Insomniaque'),(53,'Spoutnik',14,'Tortue','M','2007-04-02 01:45:00',NULL),(54,'Bubulle',NULL,'Tortue','M','2008-03-16 08:20:00',NULL),(55,'Relou',NULL,'Tortue','M','2008-03-15 18:45:00','Surpoids'),(56,'Bulbizard',2,'Tortue','M','2009-05-25 18:54:00',NULL),(57,'Safran',18,'Perroquet','M','2007-03-04 19:36:00',NULL),(58,'Gingko',NULL,'Perroquet','M','2008-02-20 02:50:00',NULL),(59,'Bavard',16,'Perroquet','M','2009-03-26 08:28:00',NULL);
/*!40000 ALTER TABLE `animaux_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animaux_copy2`
--

DROP TABLE IF EXISTS `animaux_copy2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animaux_copy2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `clt_id` int(11) unsigned DEFAULT NULL,
  `espece` varchar(40) NOT NULL,
  `sexe` char(1) DEFAULT NULL,
  `date_naissance` datetime DEFAULT NULL,
  `commentaires` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animaux_copy2`
--

LOCK TABLES `animaux_copy2` WRITE;
/*!40000 ALTER TABLE `animaux_copy2` DISABLE KEYS */;
INSERT INTO `animaux_copy2` VALUES (1,'Rox',11,'Chien','M','2010-04-05 13:43:00','Mordille beaucoup'),(2,'Roucky',19,'Chat',NULL,'2010-03-24 02:23:00',NULL),(3,'Schtroumpfette',18,'Chat','F','2010-09-13 15:02:00',NULL),(4,NULL,NULL,'Tortue','F','2009-08-03 05:12:00',NULL),(5,'Choupi',17,'Chat',NULL,'2010-10-03 16:44:00','Né sans oreille gauche'),(6,'Bobosse',15,'Tortue','F','2009-06-13 08:17:00','Carapace bizarre'),(7,'Caroline',20,'Chien','F','2008-12-06 05:18:00',NULL),(8,'Bagherra',20,'Chat','M','2008-09-11 15:38:00',NULL),(9,NULL,14,'Tortue',NULL,'2010-08-23 05:18:00',NULL),(10,'Bobo',16,'Chien','M','2010-07-21 15:41:00',NULL),(11,'Canaille',8,'Chien','F','2008-02-20 15:45:00',NULL),(12,'Cali',16,'Chien','F','2009-05-26 08:54:00',NULL),(13,'Rouquine',NULL,'Chien','F','2007-04-24 12:54:00',NULL),(14,'Fila',NULL,'Chien','F','2009-05-26 08:56:00',NULL),(15,'Anya',17,'Chien','F','2008-02-20 15:47:00',NULL),(16,'Louya',2,'Chien','F','2009-05-26 08:50:00',NULL),(17,'Welva',NULL,'Chien','F','2008-03-10 13:45:00',NULL),(18,'Zira',15,'Chien','F','2007-04-24 12:59:00',NULL),(19,'Java',18,'Chien','F','2009-05-26 09:02:00',NULL),(20,'Balou',NULL,'Chien','M','2007-04-24 12:45:00',NULL),(21,'Pataude',6,'Chien','F','2008-03-10 13:43:00',NULL),(22,'Bouli',15,'Chien','M','2007-04-24 12:42:00',NULL),(23,'Parlotte',14,'Perroquet','F','2009-03-26 07:55:00',NULL),(24,'Cartouche',NULL,'Chien','M','2007-04-12 05:23:00',NULL),(25,'Zambo',11,'Chien','M','2006-05-14 15:50:00',NULL),(26,'Samba',10,'Chien','M','2006-05-14 15:48:00',NULL),(27,'Moka',1,'Chien','M','2008-03-10 13:40:00',NULL),(28,'Pilou',14,'Chien','M','2006-05-14 15:40:00',NULL),(29,'Fiero',1,'Chat','M','2009-05-14 06:30:00',NULL),(30,'Zonko',NULL,'Chat','M','2007-03-12 12:05:00',NULL),(31,'Filou',9,'Chat','M','2008-02-20 15:45:00',NULL),(32,'Farceur',15,'Chat','M','2007-03-12 12:07:00',NULL),(33,'Caribou',NULL,'Chat','M','2006-05-19 16:17:00',NULL),(34,'Capou',19,'Chat','M','2008-04-20 03:22:00',NULL),(35,'Raccou',NULL,'Chat','M','2006-05-19 16:56:00','Pas de queue depuis la naissance'),(36,'Boucan',16,'Chat','M','2009-05-14 06:42:00',NULL),(37,'Callune',19,'Chat','F','2006-05-19 16:06:00',NULL),(38,'Boule',18,'Chat','F','2009-05-14 06:45:00',NULL),(39,'Zara',20,'Chat','F','2008-04-20 03:26:00',NULL),(40,'Milla',16,'Chat','F','2007-03-12 12:00:00',NULL),(41,'Feta',5,'Chat','F','2006-05-19 15:59:00',NULL),(42,'Bilba',17,'Chat','F','2008-04-20 03:20:00','Sourde de l\'oreille droite à 80%'),(43,'Cracotte',1,'Chat','F','2007-03-12 11:54:00',NULL),(44,'Cawette',18,'Chat','F','2006-05-19 16:16:00',NULL),(45,'Nikki',9,'Tortue','F','2007-04-01 18:17:00',NULL),(46,'Tortilla',1,'Tortue','F','2009-03-24 08:23:00',NULL),(47,'Scroupy',16,'Tortue','F','2009-03-26 01:24:00',NULL),(48,'Lulla',6,'Tortue','F','2006-03-15 14:56:00',NULL),(49,'Dana',14,'Tortue','F','2008-03-15 12:02:00',NULL),(50,'Cheli',NULL,'Tortue','F','2009-05-25 19:57:00',NULL),(51,'Chicaca',3,'Tortue','F','2007-04-01 03:54:00',NULL),(52,'Redbul',11,'Tortue','F','2006-03-15 14:26:00','Insomniaque'),(53,'Spoutnik',19,'Tortue','M','2007-04-02 01:45:00',NULL),(54,'Bubulle',NULL,'Tortue','M','2008-03-16 08:20:00',NULL),(55,'Relou',NULL,'Tortue','M','2008-03-15 18:45:00','Surpoids'),(56,'Bulbizard',NULL,'Tortue','M','2009-05-25 18:54:00',NULL),(57,'Safran',6,'Perroquet','M','2007-03-04 19:36:00',NULL),(58,'Gingko',NULL,'Perroquet','M','2008-02-20 02:50:00',NULL),(59,'Bavard',6,'Perroquet','M','2009-03-26 08:28:00',NULL);
/*!40000 ALTER TABLE `animaux_copy2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arbre`
--

DROP TABLE IF EXISTS `arbre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arbre` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gauche` bigint(20) DEFAULT NULL,
  `droite` bigint(20) DEFAULT NULL,
  `ref` char(5) DEFAULT NULL,
  `id_parent` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gauche` (`gauche`),
  UNIQUE KEY `droite` (`droite`),
  KEY `ref` (`ref`),
  KEY `id_parent` (`id_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbre`
--

LOCK TABLES `arbre` WRITE;
/*!40000 ALTER TABLE `arbre` DISABLE KEYS */;
INSERT INTO `arbre` VALUES (1,1,2,'A',0);
/*!40000 ALTER TABLE `arbre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_title_unique` (`title`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,NULL,'Category 1','category-1'),(2,NULL,NULL,'Category 2','category-2'),(3,NULL,NULL,'Category 3','category-3');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_post`
--

DROP TABLE IF EXISTS `category_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_post_category_id_foreign` (`category_id`),
  KEY `category_post_post_id_foreign` (`post_id`),
  CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_post`
--

LOCK TABLES `category_post` WRITE;
/*!40000 ALTER TABLE `category_post` DISABLE KEYS */;
INSERT INTO `category_post` VALUES (1,NULL,NULL,2,1),(2,NULL,NULL,3,2),(3,NULL,NULL,2,2),(4,NULL,NULL,3,3),(5,NULL,NULL,1,4),(6,NULL,NULL,2,5),(7,NULL,NULL,1,6),(8,NULL,NULL,3,6),(9,NULL,NULL,2,7),(10,NULL,NULL,2,8),(11,NULL,NULL,1,9),(12,NULL,NULL,3,10),(13,NULL,NULL,2,10),(14,NULL,NULL,2,11);
/*!40000 ALTER TABLE `category_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `prenom` varchar(60) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_clients_users` (`user_id`),
  CONSTRAINT `FK_clients_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'CÔTE',1,'Lionel','1965-03-23'),(2,'TOP',15,'Pierre','2000-06-12'),(3,'RAZ',16,'Bob','2000-06-12');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_parent_id_index` (`parent_id`),
  KEY `comments_lft_index` (`lft`),
  KEY `comments_rgt_index` (`rgt`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_post_id_foreign` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'2017-10-22 13:14:45','2017-10-22 13:14:45',1,1,NULL,1,2,0,'Itaque omnis consequuntur culpa delectus maiores. Voluptatem sequi nisi omnis dignissimos quia neque at. Necessitatibus voluptatum molestias repudiandae eius dolor. Non odio nesciunt amet animi qui sint. Et ipsum natus natus facere.'),(2,'2017-10-22 13:14:45','2017-10-22 13:14:45',3,2,NULL,3,4,0,'Quidem dolores ea excepturi doloribus. Excepturi a est consequatur neque incidunt explicabo voluptatem assumenda. Eligendi iste autem fugiat vel pariatur numquam illo. Laudantium natus tempora iure modi dolorem voluptatum.'),(3,'2017-10-22 13:14:45','2017-10-22 13:14:45',3,3,NULL,5,6,0,'Ducimus ab aut aut aspernatur voluptates. Eum consequatur quod vel ad in minima optio occaecati. Non totam aliquid et. Et dolorem pariatur suscipit sunt possimus id. Accusantium voluptatum commodi repellat.'),(4,'2017-10-22 13:14:45','2017-10-22 13:14:46',4,4,NULL,7,8,0,'Est libero eveniet qui rem sed. Et enim et laboriosam dolor sed non. Vel impedit accusamus sint assumenda optio ea quia.'),(5,'2017-10-22 13:14:46','2017-10-22 13:14:46',4,5,NULL,9,10,0,'Voluptas enim aut fugit quasi cupiditate consequatur quasi beatae. Omnis nostrum doloremque quia aut. Earum beatae adipisci est sed veniam quo consequatur quos. Sed aut hic a molestiae incidunt. Quod nesciunt tempora nemo dolorem voluptates.'),(6,'2017-10-22 13:14:46','2017-10-22 13:14:46',1,6,NULL,11,12,0,'Magnam consequatur nulla qui amet. Eaque voluptas mollitia atque qui quaerat. Repellendus illo alias reprehenderit quam blanditiis sequi voluptas. Nemo quae ullam atque officia sed aut. Quia quibusdam voluptatem consectetur voluptas.'),(7,'2017-10-22 13:14:46','2017-10-22 13:14:46',3,7,NULL,13,14,0,'Aut distinctio libero totam nisi necessitatibus voluptas. Illum odio ducimus consequatur. Commodi et aut tenetur voluptatem velit voluptatem. Ea expedita voluptas iure.'),(8,'2017-10-22 13:14:46','2017-10-22 13:14:46',4,8,NULL,15,16,0,'Ipsum et animi ratione enim. Quia voluptatem et dolor qui perferendis. Provident quo quidem iste qui. Et quisquam et est occaecati ducimus qui ipsum.'),(9,'2017-10-22 13:14:46','2017-10-22 13:14:46',2,9,NULL,17,18,0,'Autem rem dicta iste nam. Corporis velit sunt est aperiam neque voluptatem porro labore. Voluptatum aspernatur ducimus minus illum nam. Beatae sed at voluptates in omnis iusto repellendus sint. Ut autem repudiandae sed explicabo mollitia. Et quia officia rerum officia eveniet dolor.'),(10,'2017-10-22 13:14:46','2017-10-22 13:14:46',1,10,NULL,19,20,0,'Totam odio optio voluptatem quae sit et sed fugit. Cum impedit sunt quibusdam animi placeat deserunt. Qui qui cum quidem perspiciatis aperiam rerum. Iure maxime eos minus doloribus. Ad nesciunt molestias dolorem repellat voluptates ab aperiam.'),(11,'2017-10-22 13:14:46','2017-10-22 13:14:46',3,2,NULL,21,28,0,'Eum provident et cum nihil nemo. Sit facilis est qui quidem qui cumque non. Consequatur molestiae vel nostrum repellat doloremque impedit. Quos ducimus commodi animi nihil est ut tempora. Voluptatem a tempora eius eos quo et omnis.'),(12,'2017-10-22 13:14:46','2017-10-22 13:14:46',4,4,NULL,29,32,0,'Unde iure quae et. Molestiae atque dolorum sunt eius sit. Suscipit rerum velit maxime autem et. In consequuntur autem et debitis assumenda porro. Accusamus consectetur iste rem odit id ipsam non. Esse voluptatem temporibus accusantium ipsam voluptas.'),(13,'2017-10-22 13:14:46','2017-10-22 13:14:46',4,2,11,22,27,1,'Distinctio ipsum amet eos optio quasi excepturi natus. Sequi aut vel adipisci laudantium quisquam quidem quis. Aut vel eaque praesentium incidunt aliquid quod. Sit est nemo illo iusto deserunt consequatur quia.'),(14,'2017-10-22 13:14:46','2017-10-22 13:14:46',5,4,12,30,31,1,'Dolor corrupti consequatur sint et illo est. Fuga et ipsa error sed animi. Et debitis eius saepe voluptates eaque. Minima tempore qui occaecati facere sequi omnis rem voluptatibus.'),(15,'2017-10-22 13:14:46','2017-10-22 13:14:46',2,2,13,23,24,2,'Impedit et aspernatur ipsam et aut error. Nam perferendis mollitia architecto voluptates. Id aut quia voluptates non ratione laboriosam quis. Sit est incidunt et dignissimos omnis iusto sed.'),(16,'2017-10-22 13:14:46','2017-10-22 13:14:46',1,2,13,25,26,2,'Numquam tempora iusto incidunt pariatur aliquid exercitationem et. Et dignissimos libero qui quasi recusandae. Consectetur dolore doloremque est. Repudiandae id velit deleniti ducimus quae. Et quia et voluptate repellat ipsa vel labore.'),(17,'2017-10-22 19:26:55','2017-10-22 19:29:11',1,11,NULL,33,34,0,'Oki 21');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'2017-10-22 13:14:36','2017-10-22 13:14:36','Isaias Greenfelder IV','dell67@example.com','No, no! You\'re a serpent; and there\'s no harm in trying.\' So she began looking at the thought that she wanted to send the hedgehog had unrolled itself, and was delighted to find that she was exactly.'),(2,'2017-10-22 13:14:37','2017-10-22 13:14:37','Adan Mante','vonrueden.willy@example.net','It\'s the most important piece of evidence we\'ve heard yet,\' said the Footman, and began an account of the gloves, and was going to give the prizes?\' quite a conversation of it in asking riddles that.'),(3,'2017-10-22 13:14:37','2017-10-22 13:14:37','Alexander O\'Hara','giles67@example.org','But if I\'m Mabel, I\'ll stay down here! It\'ll be no use in talking to him,\' the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon went on, looking anxiously round to see.'),(5,'2017-10-22 13:14:37','2017-10-22 13:14:37','Mr. Joe Denesik DVM','chad11@example.net','Father William replied to his ear. Alice considered a little three-legged table, all made a memorandum of the Nile On every golden scale! \'How cheerfully he seems to like her, down here, that I.'),(6,'2017-10-22 13:14:39','2017-10-22 13:14:39','Softagonopoulos','zcollins@example.net','Alice, as the question was evidently meant for her. \'I can hardly breathe.\' \'I can\'t go no lower,\' said the Mouse to Alice to herself, for this time it vanished quite slowly, beginning with the.');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `espece`
--

DROP TABLE IF EXISTS `espece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `espece` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `nom_courant` varchar(40) NOT NULL,
  `nom_latin` varchar(40) NOT NULL,
  `description` text,
  `prix` decimal(7,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom_latin` (`nom_latin`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `espece`
--

LOCK TABLES `espece` WRITE;
/*!40000 ALTER TABLE `espece` DISABLE KEYS */;
INSERT INTO `espece` VALUES (1,'Chien','Canis canis','Bestiole à quatre pattes qui aime les caresses et tire souvent la langue',200.00),(2,'Chat','Felis silvestris','Bestiole à quatre pattes qui saute très haut et grimpe aux arbres',150.00),(3,'Tortue d\'Hermann','Testudo hermanni','Bestiole avec une carapace très dure',140.00),(4,'Perroquet amazone','Alipiopsitta xanthops','Joli oiseau parleur vert et jaune',700.00),(7,'Rat brun','Ratus bruni','Aime à patauger',50.00);
/*!40000 ALTER TABLE `espece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factures`
--

DROP TABLE IF EXISTS `factures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factures` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `clt_id` int(11) unsigned NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` float NOT NULL,
  KEY `id` (`id`),
  KEY `FK_factures_users` (`clt_id`),
  CONSTRAINT `FK_factures_users` FOREIGN KEY (`clt_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factures`
--

LOCK TABLES `factures` WRITE;
/*!40000 ALTER TABLE `factures` DISABLE KEYS */;
INSERT INTO `factures` VALUES (1,1,'2017-10-26 01:47:50',7),(2,2,'2017-10-26 01:50:52',22),(3,3,'2017-10-26 01:51:10',77.7),(4,1,'2017-10-24 01:51:31',123);
/*!40000 ALTER TABLE `factures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingoings`
--

DROP TABLE IF EXISTS `ingoings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingoings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ingoing_id` int(10) unsigned NOT NULL,
  `ingoing_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ingoings_ingoing_id_index` (`ingoing_id`),
  KEY `ingoings_ingoing_type_index` (`ingoing_type`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingoings`
--

LOCK TABLES `ingoings` WRITE;
/*!40000 ALTER TABLE `ingoings` DISABLE KEYS */;
INSERT INTO `ingoings` VALUES (6,'2017-10-22 13:14:33','2017-10-22 13:14:33',6,'App\\Models\\User'),(7,'2017-10-22 13:14:33','2017-10-22 13:14:33',7,'App\\Models\\User'),(8,'2017-10-22 13:14:33','2017-10-22 13:14:33',8,'App\\Models\\User'),(9,'2017-10-22 13:14:33','2017-10-22 13:14:33',9,'App\\Models\\User'),(10,'2017-10-22 13:14:33','2017-10-22 13:14:33',10,'App\\Models\\User'),(11,'2017-10-22 13:14:33','2017-10-22 13:14:33',11,'App\\Models\\User'),(12,'2017-10-22 13:14:34','2017-10-22 13:14:34',12,'App\\Models\\User'),(14,'2017-10-22 13:14:34','2017-10-22 13:14:34',14,'App\\Models\\User'),(16,'2017-10-22 13:14:34','2017-10-22 13:14:34',16,'App\\Models\\User'),(17,'2017-10-22 13:14:34','2017-10-22 13:14:34',17,'App\\Models\\User'),(19,'2017-10-22 13:14:34','2017-10-22 13:14:34',19,'App\\Models\\User'),(20,'2017-10-22 13:14:34','2017-10-22 13:14:34',20,'App\\Models\\User'),(21,'2017-10-22 13:14:36','2017-10-22 13:14:36',21,'App\\Models\\User'),(24,'2017-10-22 13:14:37','2017-10-22 13:14:37',2,'App\\Models\\Contact'),(25,'2017-10-22 13:14:37','2017-10-22 13:14:37',3,'App\\Models\\Contact'),(26,'2017-10-22 13:14:37','2017-10-22 13:14:37',4,'App\\Models\\Contact'),(27,'2017-10-22 13:14:37','2017-10-22 13:14:37',5,'App\\Models\\Contact'),(28,'2017-10-22 13:14:39','2017-10-22 13:14:39',6,'App\\Models\\Contact'),(29,'2017-10-22 13:14:39','2017-10-22 13:14:39',1,'App\\Models\\Post'),(30,'2017-10-22 13:14:39','2017-10-22 13:14:39',2,'App\\Models\\Post'),(31,'2017-10-22 13:14:41','2017-10-22 13:14:41',3,'App\\Models\\Post'),(32,'2017-10-22 13:14:42','2017-10-22 13:14:42',4,'App\\Models\\Post'),(33,'2017-10-22 13:14:42','2017-10-22 13:14:42',5,'App\\Models\\Post'),(34,'2017-10-22 13:14:42','2017-10-22 13:14:42',6,'App\\Models\\Post'),(35,'2017-10-22 13:14:42','2017-10-22 13:14:42',7,'App\\Models\\Post'),(36,'2017-10-22 13:14:44','2017-10-22 13:14:44',8,'App\\Models\\Post'),(37,'2017-10-22 13:14:44','2017-10-22 13:14:44',9,'App\\Models\\Post'),(38,'2017-10-22 13:14:44','2017-10-22 13:14:44',10,'App\\Models\\Post'),(39,'2017-10-22 13:14:45','2017-10-22 13:14:45',1,'App\\Models\\Comment'),(40,'2017-10-22 13:14:45','2017-10-22 13:14:45',2,'App\\Models\\Comment'),(41,'2017-10-22 13:14:45','2017-10-22 13:14:45',3,'App\\Models\\Comment'),(42,'2017-10-22 13:14:45','2017-10-22 13:14:45',4,'App\\Models\\Comment'),(43,'2017-10-22 13:14:46','2017-10-22 13:14:46',5,'App\\Models\\Comment'),(44,'2017-10-22 13:14:46','2017-10-22 13:14:46',6,'App\\Models\\Comment'),(45,'2017-10-22 13:14:46','2017-10-22 13:14:46',7,'App\\Models\\Comment'),(46,'2017-10-22 13:14:46','2017-10-22 13:14:46',8,'App\\Models\\Comment'),(47,'2017-10-22 13:14:46','2017-10-22 13:14:46',9,'App\\Models\\Comment'),(48,'2017-10-22 13:14:46','2017-10-22 13:14:46',10,'App\\Models\\Comment'),(49,'2017-10-22 13:14:46','2017-10-22 13:14:46',11,'App\\Models\\Comment'),(50,'2017-10-22 13:14:46','2017-10-22 13:14:46',12,'App\\Models\\Comment'),(51,'2017-10-22 13:14:46','2017-10-22 13:14:46',13,'App\\Models\\Comment'),(52,'2017-10-22 13:14:46','2017-10-22 13:14:46',14,'App\\Models\\Comment'),(53,'2017-10-22 13:14:46','2017-10-22 13:14:46',15,'App\\Models\\Comment'),(54,'2017-10-22 13:14:46','2017-10-22 13:14:46',16,'App\\Models\\Comment'),(56,NULL,NULL,11,'App\\Models\\Post'),(57,'2017-10-22 19:26:55','2017-10-22 19:26:55',17,'App\\Models\\Comment');
/*!40000 ALTER TABLE `ingoings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2017_02_01_233219_create_users_table',1),(3,'2017_02_02_232450_add_confirmation',1),(4,'2017_03_10_233219_create_categories_table',1),(5,'2017_03_10_233219_create_posts_table',1),(6,'2017_03_10_233220_create_comments_table',1),(7,'2017_03_10_233220_create_contacts_table',1),(8,'2017_03_10_233220_create_ingoings_table',1),(9,'2017_03_10_233220_create_notifications_table',1),(10,'2017_03_10_233220_create_post_tag_table',1),(11,'2017_03_10_233220_create_tags_table',1),(12,'2017_03_18_145906_create_category_post_table',1),(13,'2017_03_18_145916_create_foreign_keys',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) unsigned NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('5edbe314-a6ae-4d78-aa8c-0bf969b204aa','App\\Notifications\\Commented',1,'App\\Models\\User','{\"title\":\"Lib\\u00e9rez les dauphins !!!\",\"slug\":\"liberez-les-dauphins\",\"user_id\":1}',NULL,'2017-10-22 19:26:56','2017-10-22 19:26:56');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) DEFAULT NULL,
  `clt_id` int(11) unsigned DEFAULT NULL,
  `espece` enum('Chien','Chat') DEFAULT NULL,
  `sexe` enum('M','F') DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom` (`nom`),
  KEY `FK_pets_clients` (`clt_id`),
  CONSTRAINT `FK_pets_clients` FOREIGN KEY (`clt_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (1,'Rex',NULL,'Chien','M','2008-10-24'),(2,'Jeny',1,'Chien','F','2014-07-05'),(3,'Félix',NULL,'Chat','M','2012-10-24'),(4,'Mimine',NULL,'Chat','F','1997-10-24');
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tag_post_id_foreign` (`post_id`),
  KEY `post_tag_tag_id_foreign` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag`
--

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` VALUES (1,NULL,NULL,1,4),(2,NULL,NULL,1,1),(3,NULL,NULL,1,5),(4,NULL,NULL,1,2),(5,NULL,NULL,2,4),(6,NULL,NULL,2,3),(7,NULL,NULL,2,6),(8,NULL,NULL,2,2),(9,NULL,NULL,3,5),(10,NULL,NULL,3,6),(11,NULL,NULL,3,1),(12,NULL,NULL,4,5),(13,NULL,NULL,4,1),(14,NULL,NULL,4,3),(15,NULL,NULL,5,1),(16,NULL,NULL,5,3),(17,NULL,NULL,5,4),(18,NULL,NULL,5,6),(19,NULL,NULL,6,3),(20,NULL,NULL,6,4),(21,NULL,NULL,6,6),(22,NULL,NULL,7,3),(23,NULL,NULL,7,6),(24,NULL,NULL,7,4),(25,NULL,NULL,8,3),(26,NULL,NULL,8,1),(27,NULL,NULL,8,6),(28,NULL,NULL,8,2),(29,NULL,NULL,9,1),(30,NULL,NULL,9,2),(31,NULL,NULL,9,5),(32,NULL,NULL,9,6),(33,NULL,NULL,10,4),(34,NULL,NULL,10,5),(35,NULL,NULL,10,6),(36,NULL,NULL,11,7);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'2017-10-22 13:14:39','2017-10-22 13:14:39','Post 1','post-1','Post 1','Officiis consequatur consequuntur vel porro quam quod quisquam fugit. Atque repellendus occaecati doloremque debitis explicabo ipsa. Enim eius qui harum et. Ipsam neque architecto ut. Molestias numquam esse tempore quisquam quidem aut fugit.','Ad ea sunt qui voluptatem molestiae tenetur. Velit eveniet amet aliquid provident perspiciatis ducimus nisi. Rerum quibusdam maxime a.\n\nOptio eligendi neque porro delectus ut sed sint. Iste magnam accusantium rerum itaque architecto sapiente tempora accusamus. Et optio ullam numquam dolores quaerat nisi incidunt debitis. Qui consequatur tenetur dicta iste eius neque vel.\n\nExplicabo quia iste quod deserunt sapiente omnis. Tempora ducimus nobis et et nostrum. Natus omnis iste inventore velit sunt numquam. Ex voluptatum vel sint alias voluptatem ut. Magni vitae alias vel pariatur aperiam et.\n\nEsse quae voluptatibus explicabo similique eum. Excepturi quibusdam inventore ad quia quo.\n\nIllo inventore quia incidunt eius aut. Et sint quia fugiat alias aliquam veniam aperiam. Est sed et voluptatum.\n\nEt quam non placeat sunt perspiciatis ipsam. Quia eius hic voluptatibus rem recusandae voluptatum. Commodi nihil ut alias rem.\n\nEarum voluptatem cumque possimus non est aut. Optio soluta facere autem aperiam ut. Eligendi sequi voluptas dolores eum iste et. Distinctio corporis consequatur ea minus id repellat.\n\nVoluptatibus recusandae voluptatibus perferendis quas enim dolor repudiandae. Animi aut quasi qui fugiat et natus. Facilis sed ut vel dolorem molestiae corporis. Velit laboriosam ullam voluptatem consequuntur molestias quaerat.','Est ut fugiat nulla temporibus maxime ab possimus.','laboriosam,quis,facere',1,1,'/files/img01.jpg'),(2,'2017-10-22 13:14:39','2017-10-22 13:14:39','Post 2','post-2','Post 2','Dolorum repellendus excepturi quis et non. Provident accusamus deleniti qui aut. Culpa magni saepe quam at autem enim. Perspiciatis esse eum nihil cupiditate eos et cum veniam. Nobis et et at.','Quia autem consequuntur eos aliquam amet vero eos. Consequatur id repellat natus consequatur. Minus dolorum officiis nobis hic et rerum. Tempore ex sit in at non inventore similique.\n\nVeniam dicta neque qui voluptate pariatur minus et quae. Est dolor totam porro qui corporis. Optio ut dolorem perspiciatis eaque amet nam soluta. Eveniet veritatis accusantium optio ratione non.\n\nDeleniti et optio voluptatem sit quia. Asperiores ea qui incidunt laborum excepturi qui. Expedita eum et laudantium eum delectus et.\n\nSed nihil veniam corporis qui neque mollitia impedit. Exercitationem labore incidunt blanditiis non velit. Laudantium odit sint enim in pariatur deleniti. Et aut rem quisquam ea tenetur veritatis. Dolores ut vel iste et.\n\nQuidem dolorem sequi laboriosam voluptate eligendi reiciendis. Soluta error et nesciunt voluptatem. Fugiat commodi quam deserunt placeat illo autem.\n\nPossimus voluptatibus dicta quidem. Fuga vitae eaque ipsa sint quo. Eos magnam non dicta architecto.\n\nSint est similique autem nihil. Ut non quod odio asperiores possimus in voluptatem. Aliquid in nemo quas unde vero repudiandae voluptatem cupiditate. Molestias quam cum tenetur quis ea itaque.\n\nAut sunt amet accusamus magnam voluptatem laboriosam. Neque totam quas autem sit. Nemo qui autem aspernatur distinctio asperiores qui nisi autem. Veritatis temporibus hic et quo.','Quam voluptates accusantium iure et.','ut,quae,est',1,1,'/files/img02.jpg'),(3,'2017-10-22 13:14:41','2017-10-22 13:14:41','Post 3','post-3','Post 3','Adipisci qui et totam a nesciunt atque. Corporis unde reiciendis natus molestiae. Ab porro eaque explicabo in.','Ut vero qui autem aperiam laboriosam nihil. Voluptatem libero aut perferendis dolores eveniet doloremque dolor. Consequatur eum consequuntur delectus error dicta ipsam corrupti.\n\nUt modi facilis iure fuga ut doloremque aut. Est omnis odit laudantium expedita quia. Dolorem labore exercitationem saepe ab.\n\nPlaceat minus recusandae nostrum sed quo cum reiciendis. Aut est pariatur velit vel deleniti et ad non. Ea nihil fugit eaque illo. Reiciendis vero excepturi quod ab omnis.\n\nLaudantium doloribus nemo sint unde earum. Aut ea dolores voluptate autem sed qui id. Quam voluptatem sapiente qui aspernatur.\n\nOfficiis accusamus magnam et ducimus ut et quo quibusdam. Quia doloribus eum suscipit asperiores. Itaque ea eius laudantium consequatur. Aut in est praesentium eligendi recusandae laboriosam.\n\nEius et eos vero ea porro consequatur harum provident. Sed facilis eveniet non quo repudiandae. Et ut temporibus molestias similique. Laboriosam voluptatem est autem est reiciendis sit totam.\n\nIure sint exercitationem quisquam libero necessitatibus. In explicabo soluta saepe qui ut. Autem repellat dolore sunt ea sunt est.\n\nConsectetur quis iure quo corporis non ad. Explicabo harum tempora architecto quis. Aliquid corrupti et quasi aspernatur iusto natus qui. Modi dolores molestiae voluptate tenetur ipsa perspiciatis sint.','Qui facere sit ipsa consequatur a voluptas omnis dolorem.','aut,sed,labore',1,2,'/files/user2/img03.jpg'),(4,'2017-10-22 13:14:42','2017-10-22 13:14:42','Post 4','post-4','Post 4','Error amet quia ut excepturi. Ipsam quibusdam sed vero aliquid nemo. Nihil amet iure perferendis quia. Facere voluptas est sunt quae. Quo vel doloribus dolorem iure dolorem ea.','Rem qui culpa et laboriosam. Iure adipisci est doloribus. Ipsa et quos rem atque voluptate et dolorem. Voluptatem dolor et earum voluptatum minus officia.\n\nVoluptatibus voluptatibus consequatur nesciunt ex eius nisi voluptatem. Eaque voluptatibus id quis quasi harum rem voluptas. Ullam est et qui harum mollitia sed. Sapiente atque explicabo exercitationem voluptate voluptatem.\n\nFugiat perferendis fugiat temporibus. Omnis sunt amet consectetur molestias voluptas et aut enim.\n\nMaiores non modi eligendi non. Nemo quibusdam iusto quibusdam quos repellat. Vel consequuntur perspiciatis reiciendis.\n\nEt et alias omnis iure. Autem veniam inventore ab rerum sapiente qui est. Nesciunt et nisi perferendis est eos sequi omnis libero. Quaerat ab sunt non.\n\nMollitia omnis eius numquam dolor. Iste ut sit facilis. Eligendi itaque delectus quia nostrum illum et asperiores.\n\nDolorum maxime unde iure nisi nulla accusamus. Vel consectetur qui est dolorum sunt et minima. Dolores debitis omnis nobis optio molestiae aut eius autem. Veniam quod vitae quibusdam et repellendus et nemo.\n\nAsperiores quia est ut optio ipsam blanditiis. Velit nobis minima nihil.','Non et eaque itaque consequatur doloribus.','doloribus,sequi,aut',1,2,'/files/user2/img04.jpg'),(5,'2017-10-22 13:14:42','2017-10-22 13:14:42','Post 5','post-5','Post 5','Aspernatur repudiandae animi iusto amet et non quo. Placeat quisquam debitis pariatur recusandae. Possimus autem commodi illum quod sapiente. Libero excepturi recusandae unde dolores labore soluta. Harum et quas enim unde accusantium sint quia. Et est enim et nemo consequatur non provident.','Assumenda laudantium eos blanditiis dolores. Sequi laboriosam et aut. Facilis hic ut laborum ut perspiciatis et.\n\nQuasi et voluptatem consequatur aut pariatur alias. Laboriosam odit amet ut. Laboriosam hic dolores doloremque amet.\n\nDolor illo error ducimus voluptas ut. Aut aliquam adipisci facere dolorem. Sit eius illum sed eum tempore fugiat. Ea est illo molestiae a voluptates quisquam nam officia.\n\nMagni nisi occaecati nemo veniam. Perferendis libero dolor nisi qui repellat distinctio.\n\nOmnis qui saepe ipsam neque cum. Cupiditate fuga in sit amet reprehenderit officia mollitia doloribus. Dolores commodi ut rerum. Quod sunt eos et quia optio quia soluta.\n\nPorro consectetur enim perferendis impedit rerum. Et laboriosam natus sed in. Quo dolor sit labore facilis voluptate cum beatae. Praesentium architecto aliquid qui.\n\nRerum maiores doloribus veritatis sint neque impedit quia. Voluptas placeat ut ratione officiis perspiciatis perspiciatis explicabo qui.\n\nVeritatis veniam dolore est. Consequatur et vitae similique architecto corrupti dignissimos adipisci sed. Quis qui magnam rerum enim.','Veniam porro similique quis vero explicabo iure deleniti.','totam,praesentium,sit',1,2,'/files/user2/img05.jpg'),(6,'2017-10-22 13:14:42','2017-10-22 13:14:42','Post 6','post-6','Post 6','Et occaecati tempore dolorem quis. Quaerat qui perferendis molestias dicta eum molestias quas. Id unde id natus nemo eos ut. Sunt numquam doloremque aperiam ut. Sunt voluptate autem voluptatum.','Est sint magnam alias aperiam et cumque nisi. Eum sit et et voluptas. Voluptatem sint eum reprehenderit inventore. Dolores culpa veniam ullam eaque.\n\nHarum officiis dignissimos repudiandae ut nihil doloremque veritatis. Ut non id est itaque. Itaque asperiores repellat ea qui aperiam non quia.\n\nExcepturi iure et atque fugit sit nostrum eos. Esse id voluptatum et nisi doloremque. Non doloribus animi et voluptatem doloremque. Corporis consequatur laborum perspiciatis ut dolorem suscipit autem voluptates.\n\nCorrupti ut quo et quam at fuga fugit facilis. Corporis ratione reprehenderit mollitia provident. Eius dolorem voluptate mollitia recusandae ut iste fugiat nisi. Aperiam tempore fugiat quis suscipit illum.\n\nEt enim autem nesciunt dolorem in earum. Saepe id laudantium voluptatibus quia. Dolores praesentium neque illo repellat quam. Odit distinctio et incidunt laborum dolorem quasi porro.\n\nTotam praesentium vel nobis ea quo ex. Minima eum eum esse et repudiandae nihil occaecati. Temporibus officia optio dolores suscipit vel dolorem. Id accusantium non et.\n\nQuo rem quia repudiandae illum quia. Repudiandae quia maxime ab voluptatibus. Tenetur provident sed velit. Eaque rerum facere culpa blanditiis modi velit.\n\nNihil et labore nesciunt facere deleniti quisquam. Libero autem aut qui vel. Quas dicta tempora ut maxime praesentium. Qui nostrum corrupti consectetur ea aliquam.','Qui reprehenderit laudantium ut voluptate omnis fugit.','cum,expedita,voluptate',1,2,'/files/user2/img06.jpg'),(7,'2017-10-22 13:14:42','2017-10-22 13:14:42','Post 7','post-7','Post 7','Omnis et id qui ut molestiae odit. Id ea quae voluptatem in vitae iure rem. Eius animi explicabo molestiae non libero qui aut reiciendis. Deserunt commodi fuga sint necessitatibus nobis atque molestias.','Consequatur eos repellendus illum natus rerum dolores. Voluptatem harum sit sint ea vero.\n\nFacere consequatur animi labore voluptatem veritatis libero ad. Voluptas illum deleniti est. Vel quasi dolor quod aut dignissimos veritatis non et. Vitae consequuntur ducimus repudiandae nulla exercitationem.\n\nNecessitatibus voluptatem officiis officiis et. Magni quibusdam voluptatem distinctio animi dignissimos eius. Autem distinctio ut et earum nihil assumenda.\n\nSunt qui voluptas quasi quae. At rerum consequatur laudantium labore. Delectus pariatur optio accusamus dolor laudantium dolor voluptas.\n\nEligendi maxime consequuntur nam. Amet et et ad enim atque. Repellendus eligendi similique aut alias aut et aut eius.\n\nSit tenetur accusantium dolorem placeat unde. Sunt et expedita numquam dolorem ipsa et sed a. Facere dolores nihil qui iure. Id ad vel veniam qui.\n\nCupiditate aut voluptatem doloribus qui voluptatem voluptatem labore. Ad alias omnis aut quo aut saepe odit. Eligendi qui quis facilis tempore.\n\nAut ex nemo debitis quisquam. Commodi nemo voluptatem numquam assumenda et aliquid. Quis alias iusto explicabo. Soluta et repellat voluptate quos doloribus ut.','Dolor quibusdam eligendi aliquid consequatur deserunt esse.','quod,quia,maiores',1,2,'/files/user2/img07.png'),(8,'2017-10-22 13:14:44','2017-10-22 13:14:44','Post 8','post-8','Post 8','Laboriosam quo in enim aliquam provident architecto reprehenderit. Omnis velit deleniti nostrum vitae vel labore expedita. Similique assumenda iste sed rem ut. Et unde omnis maxime eius. Voluptas labore dolor dignissimos ut sit aut consequatur.','Magnam a odit voluptatem ex ut sit. Molestias a et illum rerum tenetur eius. Deleniti repudiandae autem sunt suscipit non sunt sunt. Assumenda consequatur illum repellat distinctio debitis reiciendis est.\n\nEt explicabo facilis perferendis maiores numquam aliquid earum. Laboriosam harum quia voluptatibus dicta quaerat. Ut in laboriosam rem magni rerum. Aliquid voluptates impedit est sit sunt.\n\nRepellendus quo occaecati mollitia sit. Optio voluptatibus repellendus nemo praesentium quos. Ipsam doloremque molestiae quod.\n\nNisi eum quam quisquam autem. Fugiat ut ut pariatur esse cum qui. Porro eaque iste et quisquam harum.\n\nVoluptatem sit nostrum mollitia ullam cum. Laborum sunt illo reprehenderit aut. Quam enim aliquid autem itaque quae atque. Nemo error voluptatem ut quisquam earum fugit aliquid.\n\nQuis impedit deserunt inventore modi. In nihil rem quaerat ea. Et voluptatibus omnis natus et asperiores qui.\n\nEos reiciendis nobis aut delectus. Totam repellendus cupiditate laudantium. Quae in eligendi cumque est est architecto. Voluptatum voluptate voluptates ea est facere vel vel.\n\nDolore ut et omnis corporis rem. Unde omnis et iure necessitatibus quos asperiores aperiam vitae. Ducimus ut ratione deleniti voluptatum id sequi. Sequi consectetur omnis ullam veritatis officiis magnam nihil.','Saepe doloribus et voluptatem explicabo quas totam ut.','in,natus,et',1,2,'/files/user2/img08.jpg'),(9,'2017-10-22 13:14:44','2017-10-22 13:14:44','Post 9','post-9','Post 9','Consequatur sequi temporibus enim. Neque atque quo et rerum. Nihil quis maxime eos aut qui modi. Eos illo iste quaerat voluptatem illum.','Asperiores dicta necessitatibus ea. Veritatis beatae similique accusantium ad omnis. Nihil laudantium quo dolor expedita. Quia qui voluptas ipsa omnis magni et aut voluptatem. Et molestiae explicabo delectus voluptas voluptates.','Aperiam molestiae ut sed vel harum nulla vel.','minus,facilis,quo',1,2,'/files/user2/img09.jpg'),(10,'2017-10-22 13:14:44','2017-10-22 13:14:44','Post 10','post-10','Post 10','Porro veritatis dolorem maxime quo minima aut. Libero sapiente error voluptas nemo explicabo. Consequatur sed sit nulla ut.','Maxime qui eum nihil eveniet modi. Non ut aperiam voluptatem quo nulla sed. Eos temporibus inventore fuga voluptate quo. At molestias ut ipsam.\n\nAperiam omnis accusantium vel quis. Et vero eos vel id debitis est. Corporis consequatur explicabo sit molestias. Fugiat qui et sint accusamus.\n\nHarum illum consequatur perspiciatis iste qui. Debitis quis praesentium occaecati nobis sequi natus. Quia aut ex ut vero.\n\nSuscipit incidunt ipsum consectetur quo voluptatem ut consequatur. Repudiandae et quia corporis. Reprehenderit qui minima qui non quisquam aut.\n\nQuisquam suscipit eaque est ducimus enim voluptate esse. Dolores distinctio nihil mollitia nemo consequatur. Modi numquam perferendis maxime et quaerat. Itaque veritatis est minima laboriosam vel nihil quo.\n\nUt exercitationem aut laboriosam qui. Ipsa error maiores unde quia vel. Modi aspernatur quia ea aliquam.\n\nAut quo culpa sint veniam amet ipsum. Non ex consequatur officia ut. Assumenda est ducimus amet magnam ipsam.\n\nAd ullam suscipit dolore aut necessitatibus. Nihil quia non iste facilis ut fugiat. Ab tempora assumenda ut omnis ullam quia quae. Deleniti est natus eos.','Minus nemo qui repellendus dolorem cupiditate praesentium aut.','nisi,praesentium,recusandae',1,2,'/files/user2/img10.jpg'),(11,'2017-10-22 14:47:17','2017-10-22 14:47:17','Libérez les dauphins !!!','liberez-les-dauphins','Dauphins','uuuuu','<p><span class=\"marker\">uuuuu</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span class=\"marker\">fdghdfg</span></p>','dfdsf','sdfdsfds',1,1,'\\files\\img02.jpg');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race`
--

DROP TABLE IF EXISTS `race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) NOT NULL,
  `espece_id` smallint(6) unsigned NOT NULL,
  `description` text,
  `prix` decimal(7,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_race_espece_id` (`espece_id`),
  CONSTRAINT `fk_race_espece_id` FOREIGN KEY (`espece_id`) REFERENCES `espece` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race`
--

LOCK TABLES `race` WRITE;
/*!40000 ALTER TABLE `race` DISABLE KEYS */;
INSERT INTO `race` VALUES (1,'Berger allemand',1,'Chien sportif et élégant au pelage dense, noir-marron-fauve, noir ou gris.',450.00),(2,'Berger blanc suisse',1,'Petit chien au corps compact, avec des pattes courtes mais bien proportionnées et au pelage tricolore ou bicolore.',900.00),(3,'Singapura',2,'Chat de petite taille aux grands yeux en amandes.',950.00),(4,'Bleu russe',2,'Chat aux yeux verts et à la robe épaisse et argentée.',800.00),(5,'Maine coon',2,'Chat de grande taille, à poils mi-longs.',700.00),(7,'Sphynx',2,'Chat sans poils.',1200.00),(8,'Nebelung',2,'Chat bleu russe, mais avec des poils longs...',950.00),(9,'Rottweiller',1,'Chien d\'apparence solide, bien musclé, à la robe noire avec des taches feu bien délimitées.',600.00);
/*!40000 ALTER TABLE `race` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tag` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_tag_unique` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,NULL,NULL,'Tag1'),(2,NULL,NULL,'Tag2'),(3,NULL,NULL,'Tag3'),(4,NULL,NULL,'Tag4'),(5,NULL,NULL,'Tag5'),(6,NULL,NULL,'Tag6'),(7,'2017-10-22 14:47:17','2017-10-22 14:47:17','dauphins');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transports`
--

DROP TABLE IF EXISTS `transports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transports` (
  `id` int(11) DEFAULT NULL,
  `nom` varchar(16) DEFAULT NULL,
  `pere` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transports`
--

LOCK TABLES `transports` WRITE;
/*!40000 ALTER TABLE `transports` DISABLE KEYS */;
INSERT INTO `transports` VALUES (0,'Transport',NULL),(1,'Terrestre',0),(2,'Marin',0),(3,'Aérien',0),(4,'Voiture',1),(5,'Camion',1),(6,'Moto',1),(7,'Vélo',1),(8,'Hélico',3),(9,'Avion',3),(10,'ULM',3),(11,'Fusée',3),(12,'Parachute',3),(13,'Planeur',3),(14,'Voilier',2),(15,'Paquebot',2),(16,'Planche à voile',2),(17,'Trail',6),(18,'Side-car',6),(19,'Civil',9),(20,'Tourisme',9),(21,'Militaire',9);
/*!40000 ALTER TABLE `transports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('user','redac','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2017-10-22 13:14:31','2017-10-22 13:14:31','GrCOTE7','admin@la.fr','$2y$10$xy7Rb7AAqevl5fDHxfihTueT8YDap/QDGdToI/dP5F4gPD.fuxZpG','rxnYjKgAwGy62XvU4ER4BfkTkLPJu0ujWQ4Sdye7NHw7fzRHFOIj6GEpTDxr','admin',1,1,NULL),(2,'2017-10-22 13:14:31','2017-10-22 13:14:31','Lio181','redac@la.fr','$2y$10$/B4f2uAkogD5nlupeEKk6.OVLfwrzM7LgNP9kL4C4bmEwMh0SjTye','j18xYL93Yf','redac',1,1,NULL),(3,'2017-10-22 13:14:31','2017-10-22 13:14:31','Walker','walker@la.fr','$2y$10$MfLbFGntdV/bYXqU5jfHOu2dhv6ThtnbPRKQ0bGly2U6KQ7031z0a','PGLN9RGzqa','user',1,1,NULL),(4,'2017-10-22 13:14:31','2017-10-22 13:14:31','Slacker','slacker@la.fr','$2y$10$XKzx.EmH4dJaOpQi..zY7OuuUp5wuPfsoRVKSqG.zMEXAv3JctkeC','t6HULdHpiq','user',1,1,NULL),(5,'2017-10-22 13:14:31','2017-10-22 13:14:31','Worker','worker@la.fr','$2y$10$ikPGSfq6Fbw2FeOIda4riObu1fKSEbXHQQYQf81ucQisIxUEW1zLO','I4FxCJq5cA','user',0,1,NULL),(6,'2017-10-22 13:14:33','2017-10-22 13:14:33','Dr. Sandra Towne DDS','armstrong.blanche@example.org','$2y$10$untP9Q5.htlnmi8ligM1wul.TmXAsmfa9Fi9HY3pbwcU640EFQPhW','C6ITRef183','user',0,1,NULL),(7,'2017-10-22 13:14:33','2017-10-22 13:14:33','Cleora Grimes','tromp.jairo@example.net','$2y$10$yhaTMCe0tj1pbqCI5vL6zOdx.WUAYl88NVitVjpF.eybUsFztXqVa','1wPFnBchWP','user',1,1,NULL),(8,'2017-10-22 13:14:33','2017-10-22 13:14:33','Jerome Walsh','bednar.tianna@example.net','$2y$10$Hlik3.4OG0BNC/xLeg5FAehgPDMkG4xu9wiobJz.gJXIJRmE/z9bu','2mj3choVK5','user',1,1,NULL),(9,'2017-10-22 13:14:33','2017-10-22 13:14:33','Ms. Janae Ankunding','romaguera.queenie@example.org','$2y$10$iC6z5S630oDa0Ba7fpRxx.4ll/wmAOUZAACfvJGDgjS5DR4u59m5y','tTlgrf7HN8','user',0,1,NULL),(10,'2017-10-22 13:14:33','2017-10-22 13:14:33','Kaelyn Kuphal','sstanton@example.net','$2y$10$3ml97Qzq9Fx4ixwTry.4Jukj1mER/5BOv27HYVtafMxeVzI2UwZu6','JYwrJ4Inse','user',1,0,NULL),(11,'2017-10-22 13:14:33','2017-10-22 13:14:33','Furman Wiza','xraynor@example.org','$2y$10$1qdajomURk4R56POspjYTu9PjQonDXht0sxi.3QkTxCpmv2LcZFCO','FZngRbLKiT','user',0,0,NULL),(12,'2017-10-22 13:14:33','2017-10-22 13:14:33','Rudy Johnson II','evelyn14@example.com','$2y$10$Lpwn3UTw5V3/dTh0IWVM6exZsc/2nI/H1LLeez/idrMfsvulB8UU2','3axLxyRBUd','user',0,1,NULL),(13,'2017-10-22 13:14:34','2017-10-22 13:14:34','Kiley Heller','slowe@example.org','$2y$10$kCiMju9raqvCC.0CVtToC.95ptNwrPLAz5kMlkD06e6f2komdjNmO','GoC2f612vx','user',0,1,NULL),(14,'2017-10-22 13:14:34','2017-10-22 13:14:34','Harmony Pfeffer','howe.tierra@example.org','$2y$10$77ybRsur7XW2NWJcar4AdesiKZuHtEOwIsJCfklSr1HtzzTBQeBqS','JLwatMv8n0','user',0,1,NULL),(15,'2017-10-22 13:14:34','2017-10-22 13:14:34','Lorine','jsimonis@example.com','$2y$10$5y341Uo0eAKP.Aq8lKrFHeE6HVsK3SSmcpQPFi5WAai6NjHExsoi.','2XDnz5dWGY','user',1,0,NULL),(16,'2017-10-22 13:14:34','2017-10-22 13:14:34','Delaney','bessie.welch@example.com','$2y$10$Gr/5xomBZhKmrl1lHHF/c.Qg65xXVmJGKVJ197ydUsCJp6G/x2QRC','w59lHKMTpm','user',1,1,NULL),(17,'2017-10-22 13:14:34','2017-10-22 13:14:34','Eveline Bode','uconnelly@example.com','$2y$10$I6SaadgY.go81SGETEiB.e.Cycy5UjOEG8aSdAAt13aTMaKuM2ojG','bWOsQFG9bO','user',0,1,NULL),(18,'2017-10-22 13:14:34','2017-10-22 13:14:34','Joannie Paucek','zackary.hills@example.com','$2y$10$Y0pN6ixQ1WN7EH6NSzqoUOl5IIMGzZNXhg4sLQ7aVyiJiaaNyfIwG','jdruUmKBAY','user',1,0,NULL),(19,'2017-10-22 13:14:34','2017-10-22 13:14:34','Ms. Name Lindgren Sr.','yasmeen.reichert@example.com','$2y$10$Utvt6LXyOGCxBkWUrpQL0e1Kjabq4SIQJ2dL9JFkbLmOBIO64s2t2','6p8kOYPlt3','user',1,1,NULL),(20,'2017-10-22 13:14:34','2017-10-22 13:14:34','Wilburn Borer','bayer.frieda@example.net','$2y$10$YpDO65v7he7IDdn1IvNrPObT.ZHeBPYg2ZvOnxrO5W2eTIJaMZJBK','5lRasfH8d1','user',1,1,NULL),(21,'2017-10-22 13:14:36','2017-10-22 13:14:36','Sorditofublos','sordi@la.fr','$2y$10$B4KSc48LUnh/WprQb4s4gu8qwfzCK7AFTGruofLrRSqwVT0vFczne','W1dDE7ZzqD','user',1,1,NULL),(22,'2017-10-22 13:14:36','2017-10-22 13:14:36','Martinobinus','martin@la.fr','$2y$10$MLiaAIHXhIQybQcLZlqptu5hN5oiTHDZwiUO5BegTSgwQpeIsDYcu','TZA7WYyxGV','user',0,0,NULL);
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

-- Dump completed on 2017-10-28  7:57:37
