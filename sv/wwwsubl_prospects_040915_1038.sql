-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wwwsubl_prospects
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `dn` date NOT NULL,
  `obs` varchar(255) NOT NULL,
  `l_d_n` varchar(255) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `email` (`email`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
INSERT INTO `prospects` VALUES (16,'am.metens@hotmail.com','Martens','Anne-Marie','1949-05-06','','Strepy-Bracquegnies'),(13,'audrey-simon@live.be','Simon','Audrey','1981-10-22','','Mons'),(40,'aur-ore@live.fr','Rorive','Aurore','1993-07-08','','Mons'),(32,'aurore@live.com','Rorive','Aurore','1993-07-08','','Mons'),(2,'axis.2580@mail.com','Cyr','Catherine','1988-03-14','','Canada'),(21,'bello_tunisiano@hotmail.com','Bannour','Christopher','1990-12-20','','La Louviere'),(19,'boisnardgregory@hotmail.fr','Boisnard','Gregory','1975-11-19','','Namur'),(51,'chouk_3@hotmail.com','Preillon','Angélque','1986-05-26','','Saint-Ghislhain'),(60,'clafoutis6@hotmail.com','Petit','Pascal','1968-05-22','','La Hestre'),(44,'clmusset@gmail.com','Musset','Celine','1983-12-21','','Arlon'),(58,'cristina.rezette@gmail.com','Rezette','Christina','1965-04-01','','Bruxelles'),(46,'darquenneluc@gmail.com','Darquenne','luc','1975-11-13','','Namur'),(33,'davidpierre880@gmail.com','Pierre','David','1985-08-14','','Libramont'),(76,'donitamayola@gmail.com','Mayola','Donita','1991-12-14','','Luanda'),(52,'eternel1981@gmail.com','Arnold','Elisabeth','1981-11-12','','Bettiah, Inde'),(24,'evelynevergne@hotmail.be','Vergne','Evelyne','1959-12-01','',''),(9,'fabrice.demarco','De Marco','Fabrice','1970-08-04','Angélique','Angelique'),(12,'faouziahammadi@yahoo.fr','Hammadi','Faouzia','1957-04-09','Voyance luxembourg','Tunisie'),(47,'flashpoint-lamu@hotmail.com','Vinchensi','Nathalie','1967-08-12','','Charleroi'),(23,'florence_vrysen@hotmail.com','Vrysen','Florence','1959-03-23','','Liège'),(50,'francine.pelletier123@live.fr','Pelletier','Francine','1961-12-23','','Mont-Joli'),(34,'francis.eiffel.lefebvre@gmail.com','Lefevre','Francis','1961-01-02','','Mons'),(1,'fu.shia2009@live.fr','Vercruysse','Monique','1944-10-04','Absolument lui envoyer un mail pour la prévenir que j\'ai changé de numéro','Lauwers'),(78,'ghislou65a@hotmail.com','Crokart','Ghislaine','1960-09-21','','Liege'),(17,'giovannalibertilombardo@hotmail.com','Lombardo','Giovanna','1973-06-08','','Favara Sicile'),(14,'gwendo1976@outlook.com','Lekine\r\n','Isebelle','1976-04-08','','Belgique'),(45,'harmooo003@hotmail.com','L','Harmony','1987-10-01','Lui dire que j\'ai changé de tél','Huy'),(15,'hutin.florent@skynet.be','Hutin','Florent','1975-04-15','','Mons'),(28,'iourikigomel@hotmail.com','Koche','Ioura','1987-05-07','','Biellorussie'),(27,'kistien.lefever@gmail.com','Umazayire','Christine','1976-07-15','','kigali'),(11,'kouadiobahassoihamos@gmail.com','Kouadio','Bahassoi Hamos','1986-07-25','Voyance luxembourg','Diabo/languibono'),(81,'l-a-e-t-i@live.be','Della Torra','Matheo','1989-09-06','','Namur'),(61,'lahaye-momo@hotmail.com','Lahaye','Franoise','1959-05-16','','Charleroi'),(83,'laregina@live.fr','Bressan','Sabrina','1964-11-27','','La Hestre'),(37,'lilou.963@hotmail.com','Linda','Linda','1961-10-24','','Etterbeck'),(82,'linardcynthia@hotmail.com','Linard','Cynthia','1985-05-26','','Charleroi'),(57,'lindsaymedina1990@hotmail.com','Medina','Lyndsay','1990-07-28','','Ettelbruck luxembourg'),(42,'lm0502@hotmail.com','Betlem','Maggy','1980-06-14','','Uccle'),(8,'lobetjessica@hotmail.com','Lobet','Jessica','1982-02-20','','Arlon'),(56,'ma-lou88@hotmail.fr','Deville','Marie-Aline','1994-11-08','','Brest'),(41,'mariefensie@hotmail.com','Fensie','Marie-Noelle','1970-05-19','','Charleroi belgique'),(48,'marjorie-noel@hotmail.com','Noel','Marjorie','1991-10-28','','Charleroi'),(75,'martiprick2000@yahoo.fr','Perick','Martine','1959-07-17','','Liege'),(7,'medalise@hotmail.com','Cardoen','Aurelie','1982-05-02','','Lessines'),(85,'melanie.pierreux@live.fr','Pierreux','Melanie','1987-09-24','','Soignies'),(53,'nathalie.vilain@belgacom.net','Vilain','Nathalie','1967-05-10','','Bruxelles'),(38,'nathaliesephora@gmail.com','Francise','Nathalie','1970-09-16','','Hermalle-sous-Argenteau'),(29,'pastabrina@gmail.com','Romeo','Sabrina','1978-06-24','','Hyeres'),(84,'paulinelebreton@outlook.fr','Lebreton','Pauline','1986-11-08','','Nantes'),(79,'pierre3039@gmail.com','Delfose','Pierre','1965-12-18','','Tournai'),(22,'poletti.ml@orange.fr','Poletti','Marie-laure','1973-07-06','','Bastia'),(55,'preudhommemurielle@gmail.com','Preud homme','Murielle','1972-11-14','','Belgique'),(30,'ptites-canailles@outlook.com','Colombo','Julie','1992-10-13','','La Louviere'),(49,'remansnadine@gmail.com','Renmans','Nadine','1963-03-09','','Huy'),(36,'rob_davister@hotmail.com','Davister','Robert','1977-06-19','','Aiseau'),(74,'roossens@yahoo.fr','Roosens','Myriam','1957-10-11','','leers-et-Fosteau'),(26,'rouyr.chantal@gmail.com','Rouyr','Chantal','1965-02-25','','Hermalle/sous/argenteau'),(77,'semedo.carla82@gmail.com','Semedo Borges','Carla','1982-10-03','Voyance Luxembourg','Santa Catarina'),(20,'sophie_solbes@yahoo.fr','Solbes','Sophie','1975-10-27','','le Plessis bouchard France'),(6,'sorcejosephine@gmail.com','Sorce','Josephine','1977-06-16','','lige'),(39,'stephane.saindrenan@orange.fr','Saindrenan','Stephane','1967-11-17','','Paris 17ème'),(25,'stephanieyo@hotmail.ca','Meunier','Stephanie','1996-03-16','','Repentigny'),(3,'stephravaldi@hotmail.com','Ravaldi','Stephanie','1974-11-15','','Soignies'),(54,'sylwiawasyluk@ymail.com','Wasyluk','Sylwia','1979-05-15','','Pologne'),(10,'tiendrebeogoaline@yahoo.fr','Tiendrebeogo','Aline Judith','1980-02-27','Voyance luxembourg','ouagadougou'),(35,'virgipel806@live.fr','Pelzer','Viginie','1977-11-08','','Verviers'),(80,'wegnezfrançoise@gmail.com','Wegnez','Françoise','1966-06-04','','Verviers'),(18,'yanickdestree@hotamil.com','Destree','Yanick','1980-12-23','','Marche-en-Famenne'),(43,'yeliz.eryrk@hotmail.com','Eryoruk','Yeliz','1995-02-18','','Bruxelles');
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-04 10:52:52
