-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wwwsubl_extopbe
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
-- Table structure for table `AreaPermissionAssignments`
--

DROP TABLE IF EXISTS `AreaPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionAssignments`
--

LOCK TABLES `AreaPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `AreaPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessList`
--

LOCK TABLES `AreaPermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessListCustom`
--

LOCK TABLES `AreaPermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,106,'Header',0,0,0),(2,106,'Column 1',0,0,0),(3,106,'Column 2',0,0,0),(4,106,'Column 3',0,0,0),(5,106,'Column 4',0,0,0),(6,107,'Primary',0,0,0),(7,107,'Secondary 1',0,0,0),(8,107,'Secondary 2',0,0,0),(9,107,'Secondary 3',0,0,0),(10,107,'Secondary 4',0,0,0),(11,107,'Secondary 5',0,0,0),(12,1,'Header Nav',0,0,0),(13,1,'Header',0,0,0),(14,1,'Sidebar',0,0,0),(15,1,'Main',0,0,0),(16,122,'Header',0,0,0),(17,122,'Sidebar',0,0,0),(18,122,'Main',0,0,0),(19,1,'Footer',0,0,0),(20,118,'Main',0,0,0),(21,1,'Search',0,0,0),(22,1,'Feature',0,0,0),(23,1,'Left_Title',0,0,0),(24,1,'Left_Detail',0,0,0),(25,1,'Left_Bottom',0,0,0),(26,1,'Center_Title',0,0,0),(27,1,'Center_Detail',0,0,0),(28,1,'Center_Bottom',0,0,0),(29,1,'Right_Title',0,0,0),(30,1,'Right_Detail',0,0,0),(31,1,'Right_Bottom',0,0,0),(32,1,'Blog Post Header',0,0,0),(33,1,'Blog Post More',0,0,0),(34,1,'Blog Post Footer',0,0,0),(35,129,'Header Nav',0,0,0),(36,129,'Feature',0,0,0),(37,129,'Main',0,0,0),(38,130,'Header Nav',0,0,0),(39,130,'Feature',0,0,0),(40,130,'Main',0,0,0),(41,131,'Search',0,0,0),(42,131,'Header Nav',0,0,0),(43,131,'Header',0,0,0),(44,131,'Feature',0,0,0),(45,131,'Sidebar',0,0,0),(46,131,'Main',0,0,0),(47,129,'Search',0,0,0),(48,129,'Header',0,0,0),(49,129,'Sidebar',0,0,0),(50,130,'Header',0,0,0);
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeyCategories`
--

DROP TABLE IF EXISTS `AttributeKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeyCategories`
--

LOCK TABLES `AttributeKeyCategories` WRITE;
/*!40000 ALTER TABLE `AttributeKeyCategories` DISABLE KEYS */;
INSERT INTO `AttributeKeyCategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL);
/*!40000 ALTER TABLE `AttributeKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeys`
--

DROP TABLE IF EXISTS `AttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeys`
--

LOCK TABLES `AttributeKeys` WRITE;
/*!40000 ALTER TABLE `AttributeKeys` DISABLE KEYS */;
INSERT INTO `AttributeKeys` VALUES (1,'meta_title','Meta Title',1,1,0,0,0,1,1,1,0),(2,'meta_description','Meta Description',1,1,0,0,0,1,2,1,0),(3,'meta_keywords','Meta Keywords',1,1,0,0,0,1,2,1,0),(4,'icon_dashboard','Dashboard Icon',1,1,0,1,0,1,2,1,0),(5,'exclude_nav','Exclude From Nav',1,1,0,0,0,1,3,1,0),(6,'exclude_page_list','Exclude From Page List',1,1,0,0,0,1,3,1,0),(7,'header_extra_content','Header Extra Content',1,1,0,0,0,1,2,1,0),(8,'exclude_search_index','Exclude From Search Index',1,1,0,0,0,1,3,1,0),(9,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,0,0,0,1,3,1,0),(10,'profile_private_messages_enabled','I would like to receive private messages.',1,1,0,0,0,1,3,2,0),(11,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,1,0,0,0,1,3,2,0),(12,'width','Width',1,1,0,0,0,1,6,3,0),(13,'height','Height',1,1,0,0,0,1,6,3,0),(14,'duration','Duration',1,1,0,0,0,1,6,3,0),(15,'do_not_display_subpages_in_nav','Do Not Display Subpages In Navigation (Amiant CSS3 Menu)',0,0,0,0,0,1,3,1,0);
/*!40000 ALTER TABLE `AttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSetKeys`
--

DROP TABLE IF EXISTS `AttributeSetKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSetKeys`
--

LOCK TABLES `AttributeSetKeys` WRITE;
/*!40000 ALTER TABLE `AttributeSetKeys` DISABLE KEYS */;
INSERT INTO `AttributeSetKeys` VALUES (1,1,1),(2,1,2),(3,1,3),(7,1,4),(5,2,1),(6,2,2),(8,2,3),(9,2,4);
/*!40000 ALTER TABLE `AttributeSetKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSets`
--

DROP TABLE IF EXISTS `AttributeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSets`
--

LOCK TABLES `AttributeSets` WRITE;
/*!40000 ALTER TABLE `AttributeSets` DISABLE KEYS */;
INSERT INTO `AttributeSets` VALUES (1,'Page Header','page_header',1,0,0,0),(2,'Navigation and Indexing','navigation',1,0,0,1);
/*!40000 ALTER TABLE `AttributeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypeCategories`
--

DROP TABLE IF EXISTS `AttributeTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypeCategories`
--

LOCK TABLES `AttributeTypeCategories` WRITE;
/*!40000 ALTER TABLE `AttributeTypeCategories` DISABLE KEYS */;
INSERT INTO `AttributeTypeCategories` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(6,1),(6,2),(6,3),(7,1),(7,3),(8,1),(8,2),(8,3),(9,2);
/*!40000 ALTER TABLE `AttributeTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypes`
--

DROP TABLE IF EXISTS `AttributeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `atHandle` (`atHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypes`
--

LOCK TABLES `AttributeTypes` WRITE;
/*!40000 ALTER TABLE `AttributeTypes` DISABLE KEYS */;
INSERT INTO `AttributeTypes` VALUES (1,'text','Text',0),(2,'textarea','Text Area',0),(3,'boolean','Checkbox',0),(4,'date_time','Date/Time',0),(5,'image_file','Image/File',0),(6,'number','Number',0),(7,'rating','Rating',0),(8,'select','Select',0),(9,'address','Address',0);
/*!40000 ALTER TABLE `AttributeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeValues`
--

DROP TABLE IF EXISTS `AttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeValues`
--

LOCK TABLES `AttributeValues` WRITE;
/*!40000 ALTER TABLE `AttributeValues` DISABLE KEYS */;
INSERT INTO `AttributeValues` VALUES (1,3,'2014-07-12 11:16:59',1,2),(2,4,'2014-07-12 11:16:59',1,2),(3,3,'2014-07-12 11:16:59',1,2),(4,4,'2014-07-12 11:16:59',1,2),(5,3,'2014-07-12 11:16:59',1,2),(6,4,'2014-07-12 11:16:59',1,2),(7,3,'2014-07-12 11:16:59',1,2),(8,3,'2014-07-12 11:16:59',1,2),(9,4,'2014-07-12 11:16:59',1,2),(10,3,'2014-07-12 11:16:59',1,2),(11,4,'2014-07-12 11:16:59',1,2),(12,3,'2014-07-12 11:16:59',1,2),(13,4,'2014-07-12 11:16:59',1,2),(14,3,'2014-07-12 11:16:59',1,2),(15,4,'2014-07-12 11:16:59',1,2),(16,3,'2014-07-12 11:16:59',1,2),(17,4,'2014-07-12 11:16:59',1,2),(18,3,'2014-07-12 11:16:59',1,2),(19,4,'2014-07-12 11:16:59',1,2),(20,5,'2014-07-12 11:16:59',1,3),(21,3,'2014-07-12 11:16:59',1,2),(22,4,'2014-07-12 11:16:59',1,2),(23,3,'2014-07-12 11:16:59',1,2),(24,3,'2014-07-12 11:16:59',1,2),(25,4,'2014-07-12 11:16:59',1,2),(26,3,'2014-07-12 11:16:59',1,2),(27,4,'2014-07-12 11:16:59',1,2),(28,3,'2014-07-12 11:16:59',1,2),(29,4,'2014-07-12 11:16:59',1,2),(30,3,'2014-07-12 11:16:59',1,2),(31,5,'2014-07-12 11:16:59',1,3),(32,4,'2014-07-12 11:16:59',1,2),(33,3,'2014-07-12 11:16:59',1,2),(34,5,'2014-07-12 11:16:59',1,3),(35,4,'2014-07-12 11:16:59',1,2),(36,3,'2014-07-12 11:16:59',1,2),(37,4,'2014-07-12 11:16:59',1,2),(38,3,'2014-07-12 11:16:59',1,2),(39,3,'2014-07-12 11:16:59',1,2),(40,4,'2014-07-12 11:16:59',1,2),(41,3,'2014-07-12 11:16:59',1,2),(42,4,'2014-07-12 11:16:59',1,2),(43,3,'2014-07-12 11:16:59',1,2),(44,4,'2014-07-12 11:16:59',1,2),(45,3,'2014-07-12 11:16:59',1,2),(46,4,'2014-07-12 11:16:59',1,2),(47,3,'2014-07-12 11:16:59',1,2),(48,4,'2014-07-12 11:16:59',1,2),(49,3,'2014-07-12 11:16:59',1,2),(50,3,'2014-07-12 11:16:59',1,2),(51,3,'2014-07-12 11:16:59',1,2),(52,3,'2014-07-12 11:16:59',1,2),(53,4,'2014-07-12 11:16:59',1,2),(54,3,'2014-07-12 11:16:59',1,2),(55,4,'2014-07-12 11:16:59',1,2),(56,3,'2014-07-12 11:16:59',1,2),(57,4,'2014-07-12 11:16:59',1,2),(58,3,'2014-07-12 11:16:59',1,2),(59,4,'2014-07-12 11:16:59',1,2),(60,4,'2014-07-12 11:16:59',1,2),(61,3,'2014-07-12 11:16:59',1,2),(62,4,'2014-07-12 11:16:59',1,2),(63,4,'2014-07-12 11:16:59',1,2),(64,5,'2014-07-12 11:16:59',1,3),(65,8,'2014-07-12 11:16:59',1,3),(66,3,'2014-07-12 11:16:59',1,2),(67,4,'2014-07-12 11:16:59',1,2),(68,5,'2014-07-12 11:16:59',1,3),(69,5,'2014-07-12 11:16:59',1,3),(70,3,'2014-07-12 11:16:59',1,2),(71,3,'2014-07-12 11:16:59',1,2),(72,3,'2014-07-12 11:16:59',1,2),(73,3,'2014-07-12 11:16:59',1,2),(74,3,'2014-07-12 11:16:59',1,2),(75,5,'2014-07-12 11:16:59',1,3),(76,3,'2014-07-12 11:16:59',1,2),(77,3,'2014-07-12 11:16:59',1,2),(78,3,'2014-07-12 11:16:59',1,2),(79,3,'2014-07-12 11:16:59',1,2),(80,3,'2014-07-12 11:16:59',1,2),(81,3,'2014-07-12 11:16:59',1,2),(82,3,'2014-07-12 11:16:59',1,2),(83,3,'2014-07-12 11:16:59',1,2),(84,3,'2014-07-12 11:16:59',1,2),(85,3,'2014-07-12 11:16:59',1,2),(86,3,'2014-07-12 11:16:59',1,2),(87,3,'2014-07-12 11:16:59',1,2),(88,3,'2014-07-12 11:16:59',1,2),(89,3,'2014-07-12 11:16:59',1,2),(90,3,'2014-07-12 11:16:59',1,2),(91,3,'2014-07-12 11:16:59',1,2),(92,3,'2014-07-12 11:16:59',1,2),(93,3,'2014-07-12 11:16:59',1,2),(94,3,'2014-07-12 11:16:59',1,2),(95,3,'2014-07-12 11:16:59',1,2),(96,3,'2014-07-12 11:16:59',1,2),(97,3,'2014-07-12 11:16:59',1,2),(98,3,'2014-07-12 11:16:59',1,2),(99,3,'2014-07-12 11:16:59',1,2),(100,3,'2014-07-12 11:16:59',1,2),(101,3,'2014-07-12 11:16:59',1,2),(102,3,'2014-07-12 11:16:59',1,2),(103,3,'2014-07-12 11:16:59',1,2),(104,3,'2014-07-12 11:16:59',1,2),(105,3,'2014-07-12 11:16:59',1,2),(106,3,'2014-07-12 11:16:59',1,2),(107,3,'2014-07-12 11:16:59',1,2),(108,3,'2014-07-12 11:16:59',1,2),(109,8,'2014-07-12 11:16:59',1,3),(110,3,'2014-07-12 11:16:59',1,2),(111,3,'2014-07-12 11:16:59',1,2),(112,3,'2014-07-12 11:16:59',1,2),(113,3,'2014-07-12 11:16:59',1,2),(114,3,'2014-07-12 11:16:59',1,2),(115,3,'2014-07-12 11:16:59',1,2),(116,3,'2014-07-12 11:16:59',1,2),(117,3,'2014-07-12 11:16:59',1,2),(118,5,'2014-07-12 11:16:59',1,3),(119,5,'2014-07-12 11:16:59',1,3),(120,8,'2014-07-12 11:16:59',1,3),(121,4,'2014-07-12 11:40:02',1,2),(122,12,'2014-07-14 18:18:27',1,6),(123,13,'2014-07-14 18:18:27',1,6),(124,12,'2014-07-14 18:20:17',1,6),(125,13,'2014-07-14 18:20:17',1,6),(126,2,'2014-07-15 13:33:28',1,2),(127,3,'2014-07-15 13:33:28',1,2),(128,15,'2014-07-15 16:40:59',1,3),(129,15,'2014-07-15 16:42:10',1,3),(130,15,'2014-07-15 16:52:46',1,3),(131,15,'2014-07-15 18:31:40',1,3),(132,15,'2014-07-15 19:09:52',1,3);
/*!40000 ALTER TABLE `AttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowPermissionAssignments`
--

LOCK TABLES `BasicWorkflowPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowProgressData`
--

DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowProgressData`
--

LOCK TABLES `BasicWorkflowProgressData` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockPermissionAssignments`
--

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockPermissionAssignments`
--

LOCK TABLES `BlockPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BlockPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockRelations`
--

DROP TABLE IF EXISTS `BlockRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockRelations`
--

LOCK TABLES `BlockRelations` WRITE;
/*!40000 ALTER TABLE `BlockRelations` DISABLE KEYS */;
INSERT INTO `BlockRelations` VALUES (2,27,26,'DUPLICATE'),(3,29,28,'DUPLICATE'),(5,32,31,'DUPLICATE'),(6,35,29,'DUPLICATE'),(7,36,35,'DUPLICATE'),(8,37,36,'DUPLICATE'),(9,38,37,'DUPLICATE'),(10,42,40,'DUPLICATE'),(11,43,41,'DUPLICATE'),(12,44,43,'DUPLICATE'),(13,45,44,'DUPLICATE'),(14,46,45,'DUPLICATE'),(15,47,46,'DUPLICATE'),(16,48,47,'DUPLICATE'),(17,49,38,'DUPLICATE'),(18,51,49,'DUPLICATE'),(19,52,51,'DUPLICATE'),(20,53,52,'DUPLICATE');
/*!40000 ALTER TABLE `BlockRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessList`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessListCustom`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypes`
--

DROP TABLE IF EXISTS `BlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypes`
--

LOCK TABLES `BlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypes` VALUES (1,'core_scrapbook_display','Scrapbook Display (Core)','Proxy block for blocks pasted through the scrapbook.',1,0,0,1,0,400,400,0),(2,'core_stack_display','Stack Display (Core)','Proxy block for stacks added through the UI.',1,0,0,1,0,400,400,0),(3,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',1,0,0,1,0,300,100,0),(4,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',1,0,0,1,0,300,100,0),(5,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',1,0,0,1,0,400,400,0),(6,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',1,0,0,1,0,400,400,0),(7,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',1,0,0,1,0,400,400,0),(8,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',1,0,0,0,1,500,350,0),(9,'content','Content','HTML/WYSIWYG Editor Content.',1,0,0,0,2,580,380,0),(10,'date_nav','Date Navigation','A collapsible date based navigation tree',1,0,0,0,3,500,350,0),(11,'external_form','External Form','Include external forms in the filesystem and place them on pages.',1,0,0,0,4,370,100,0),(12,'file','File','Link to files stored in the asset library.',1,0,0,0,5,300,250,0),(13,'flash_content','Flash Content','Embeds SWF files, including flash detection.',1,0,0,0,6,380,200,0),(14,'form','Form','Build simple forms and surveys.',1,0,0,0,7,420,430,0),(15,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',1,0,0,0,8,750,460,0),(16,'guestbook','Guestbook / Comments','Adds blog-style comments (a guestbook) to your page.',1,0,1,0,9,370,480,0),(17,'html','HTML','For adding HTML by hand.',1,0,0,0,10,600,465,0),(18,'image','Image','Adds images and onstates from the library to pages.',1,0,0,0,11,400,550,0),(19,'next_previous','Next & Previous Nav','Navigate through sibling pages.',1,0,0,0,12,430,400,0),(20,'page_list','Page List','List pages based on type, area.',1,0,0,0,13,500,350,0),(21,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',1,0,0,0,14,400,330,0),(22,'search','Search','Add a search box to your site.',1,0,0,0,15,400,240,0),(23,'slideshow','Slideshow','Display a running loop of images.',1,0,0,0,16,550,400,0),(24,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',1,0,0,0,17,420,300,0),(25,'tags','Tags','List pages based on type, area.',1,0,0,0,18,450,260,0),(26,'video','Video Player','Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.',1,0,0,0,19,320,220,0),(27,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',1,0,0,0,20,400,210,0),(28,'amiant_css3_menu','Amiant CSS3 Menu','Creates CSS3 navigation menu with drop-down submenus.',1,0,0,0,21,500,350,4);
/*!40000 ALTER TABLE `BlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blocks`
--

DROP TABLE IF EXISTS `Blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blocks`
--

LOCK TABLES `Blocks` WRITE;
/*!40000 ALTER TABLE `Blocks` DISABLE KEYS */;
INSERT INTO `Blocks` VALUES (1,'','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,'1',9,1,NULL),(2,'','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,'1',9,1,NULL),(3,'','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,'1',9,1,NULL),(4,'','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,'1',9,1,NULL),(5,'','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,'1',9,1,NULL),(6,'','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,'1',6,1,NULL),(7,'','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,'1',7,1,NULL),(8,'','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,'1',5,1,NULL),(9,'','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,'1',5,1,NULL),(10,'','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,'1',4,1,NULL),(11,'','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,'1',3,1,NULL),(12,'','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,'1',5,1,NULL),(13,NULL,'2014-07-12 11:42:53','2014-07-12 11:42:53',NULL,'1',8,1,NULL),(41,NULL,'2014-07-15 16:49:09','2014-07-15 16:50:07',NULL,'1',14,1,NULL),(42,NULL,'2014-07-15 16:51:53','2014-07-15 16:51:53',NULL,'1',17,1,NULL),(43,'','2014-07-15 16:55:44','2014-07-15 17:16:44','ajax_default_layout.php','1',14,1,NULL),(44,'','2014-07-15 17:51:00','2014-07-15 17:51:28','ajax_default_layout.php','1',14,1,NULL),(45,'','2014-07-15 17:52:31','2014-07-15 17:52:31','ajax_default_layout.php','1',14,1,NULL),(46,'','2014-07-15 17:53:05','2014-07-15 17:53:05','ajax_default_layout.php','1',14,1,NULL),(14,NULL,'2014-07-14 11:54:33','2014-07-14 11:54:33',NULL,'1',17,1,NULL),(16,NULL,'2014-07-14 13:22:04','2014-07-14 13:22:04',NULL,'1',17,1,NULL),(17,NULL,'2014-07-14 17:26:59','2014-07-14 17:26:59',NULL,'1',20,1,NULL),(18,NULL,'2014-07-14 17:29:09','2014-07-14 17:29:09',NULL,'1',8,1,NULL),(19,NULL,'2014-07-14 17:31:06','2014-07-14 17:31:06',NULL,'1',9,1,NULL),(20,NULL,'2014-07-14 17:31:42','2014-07-14 17:31:42',NULL,'1',9,1,NULL),(21,NULL,'2014-07-14 17:32:22','2014-07-14 17:32:22',NULL,'1',9,1,NULL),(22,NULL,'2014-07-14 17:33:02','2014-07-14 17:33:02',NULL,'1',9,1,NULL),(23,NULL,'2014-07-14 17:33:26','2014-07-14 17:33:26',NULL,'1',9,1,NULL),(24,NULL,'2014-07-14 17:33:45','2014-07-14 17:33:45',NULL,'1',9,1,NULL),(25,NULL,'2014-07-14 17:34:09','2014-07-14 17:34:09',NULL,'1',9,1,NULL),(26,NULL,'2014-07-14 18:15:12','2014-07-14 18:15:12',NULL,'1',23,1,NULL),(27,NULL,'2014-07-14 18:20:37','2014-07-14 18:20:37',NULL,'1',23,1,NULL),(28,NULL,'2014-07-15 12:07:41','2014-07-15 12:14:28',NULL,'1',17,1,NULL),(29,NULL,'2014-07-15 12:17:04','2014-07-15 12:26:26',NULL,'1',17,1,NULL),(31,NULL,'2014-07-15 16:22:30','2014-07-15 16:22:30',NULL,'1',28,1,NULL),(32,NULL,'2014-07-15 16:24:47','2014-07-15 16:24:47',NULL,'1',28,1,NULL),(33,NULL,'2014-07-15 16:28:03','2014-07-15 16:28:03',NULL,'1',28,1,NULL),(34,NULL,'2014-07-15 16:29:39','2014-07-15 16:29:39',NULL,'1',28,1,NULL),(35,NULL,'2014-07-15 16:35:01','2014-07-15 16:35:59',NULL,'1',17,1,NULL),(36,NULL,'2014-07-15 16:37:07','2014-07-15 16:37:07',NULL,'1',17,1,NULL),(37,NULL,'2014-07-15 16:38:22','2014-07-15 16:38:22',NULL,'1',17,1,NULL),(38,NULL,'2014-07-15 16:39:10','2014-07-15 16:39:10',NULL,'1',17,1,NULL),(40,NULL,'2014-07-15 16:48:15','2014-07-15 16:48:15',NULL,'1',17,1,NULL),(47,'','2014-07-15 19:04:12','2014-07-15 19:04:46','ajax_default_layout.php','1',14,1,NULL),(48,'','2014-07-15 19:05:37','2014-07-15 19:05:46','ajax_default_layout.php','1',14,1,NULL),(49,NULL,'2015-01-14 11:49:23','2015-01-14 11:49:23',NULL,'1',17,1,NULL),(50,NULL,'2015-01-14 11:52:51','2015-01-14 11:54:17',NULL,'1',9,1,NULL),(51,NULL,'2015-01-25 14:10:02','2015-01-25 14:10:02',NULL,'1',17,1,NULL),(52,NULL,'2015-02-28 13:50:45','2015-02-28 13:50:45',NULL,'1',17,1,NULL),(53,NULL,'2015-03-31 14:16:47','2015-03-31 14:16:47',NULL,'1',17,1,NULL);
/*!40000 ALTER TABLE `Blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeValues`
--

DROP TABLE IF EXISTS `CollectionAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeValues`
--

LOCK TABLES `CollectionAttributeValues` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeValues` DISABLE KEYS */;
INSERT INTO `CollectionAttributeValues` VALUES (1,16,2,126),(1,16,3,127),(1,17,2,126),(1,17,3,127),(1,18,2,126),(1,18,3,127),(1,19,2,126),(1,19,3,127),(1,20,2,126),(1,20,3,127),(1,21,2,126),(1,21,3,127),(1,22,2,126),(1,22,3,127),(1,23,2,126),(1,23,3,127),(1,24,2,126),(1,24,3,127),(1,25,2,126),(1,25,3,127),(1,26,2,126),(1,26,3,127),(3,1,3,1),(3,1,4,2),(4,1,3,3),(4,1,4,4),(5,1,3,5),(5,1,4,6),(6,1,3,7),(7,1,3,8),(7,1,4,9),(8,1,3,10),(8,1,4,11),(9,1,3,12),(9,1,4,13),(11,1,3,14),(11,1,4,15),(12,1,3,16),(12,1,4,17),(13,1,3,18),(13,1,4,19),(14,1,3,21),(14,1,4,22),(14,1,5,20),(15,1,3,23),(16,1,3,24),(16,1,4,25),(17,1,3,26),(17,1,4,27),(18,1,3,28),(18,1,4,29),(19,1,3,30),(19,1,4,32),(19,1,5,31),(20,1,3,33),(20,1,4,35),(20,1,5,34),(21,1,3,36),(21,1,4,37),(22,1,3,38),(23,1,3,39),(23,1,4,40),(24,1,3,41),(24,1,4,42),(25,1,3,43),(25,1,4,44),(26,1,3,45),(26,1,4,46),(28,1,3,47),(28,1,4,48),(29,1,3,49),(30,1,3,50),(31,1,3,51),(32,1,3,52),(32,1,4,53),(34,1,3,54),(34,1,4,55),(35,1,3,56),(35,1,4,57),(36,1,3,58),(37,1,4,59),(38,1,4,60),(40,1,3,61),(40,1,4,62),(41,1,4,63),(42,1,5,64),(42,1,8,65),(43,1,3,66),(43,1,4,67),(44,1,5,68),(45,1,5,69),(46,1,3,70),(47,1,3,71),(48,1,3,72),(49,1,3,73),(50,1,3,74),(51,1,5,75),(53,1,3,76),(54,1,3,77),(55,1,3,78),(56,1,3,79),(57,1,3,80),(58,1,3,81),(60,1,3,82),(61,1,3,83),(62,1,3,84),(63,1,3,85),(64,1,3,86),(65,1,3,87),(67,1,3,88),(68,1,3,89),(69,1,3,90),(71,1,3,91),(72,1,3,92),(73,1,3,93),(74,1,3,94),(77,1,3,95),(78,1,3,96),(79,1,3,97),(80,1,3,98),(82,1,3,99),(83,1,3,100),(84,1,3,101),(85,1,3,102),(86,1,3,103),(87,1,3,104),(88,1,3,105),(89,1,3,106),(90,1,3,107),(91,1,3,108),(92,1,8,109),(93,1,3,110),(94,1,3,111),(95,1,3,112),(96,1,3,113),(97,1,3,114),(98,1,3,115),(100,1,3,116),(101,1,3,117),(106,1,5,118),(107,1,5,119),(107,1,8,120),(123,1,4,121),(129,4,15,128),(129,5,15,129),(129,6,15,130),(129,7,15,131),(129,8,15,132),(129,9,15,132);
/*!40000 ALTER TABLE `CollectionAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  `ak_do_not_display_subpages_in_nav` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

LOCK TABLES `CollectionSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `CollectionSearchIndexAttributes` VALUES (3,NULL,NULL,'blog, blogging','icon-book',0,0,NULL,0,0,0),(4,NULL,NULL,'new blog, write blog, blogging','icon-pencil',0,0,NULL,0,0,0),(5,NULL,NULL,'blog drafts, composer','icon-book',0,0,NULL,0,0,0),(6,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,0,0,0),(7,NULL,NULL,'pages, add page, delete page, copy, move, alias','icon-home',0,0,NULL,0,0,0),(8,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk','icon-road',0,0,NULL,0,0,0),(9,NULL,NULL,'find page, search page, search, find, pages, sitemap','icon-search',0,0,NULL,0,0,0),(11,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute','icon-picture',0,0,NULL,0,0,0),(12,NULL,NULL,'file, file attributes, title, attribute, description, rename','icon-cog',0,0,NULL,0,0,0),(13,NULL,NULL,'files, category, categories','icon-list-alt',0,0,NULL,0,0,0),(14,NULL,NULL,'new file set','icon-plus-sign',1,0,NULL,0,0,0),(15,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',NULL,0,0,NULL,0,0,0),(16,NULL,NULL,'find, search, people, delete user, remove user, change password, password','icon-user',0,0,NULL,0,0,0),(17,NULL,NULL,'user, group, people, permissions, access, expire','icon-globe',0,0,NULL,0,0,0),(18,NULL,NULL,'user attributes, user data, gather data, registration data','icon-cog',0,0,NULL,0,0,0),(19,NULL,NULL,'new user, create','icon-plus-sign',1,0,NULL,0,0,0),(20,NULL,NULL,'new user group, new group, group, create','icon-plus',1,0,NULL,0,0,0),(21,NULL,NULL,'group set','icon-list',0,0,NULL,0,0,0),(22,NULL,NULL,'forms, log, error, email, mysql, exception, survey',NULL,0,0,NULL,0,0,0),(23,NULL,NULL,'hits, pageviews, visitors, activity','icon-signal',0,0,NULL,0,0,0),(24,NULL,NULL,'forms, questions, response, data','icon-briefcase',0,0,NULL,0,0,0),(25,NULL,NULL,'questions, quiz, response','icon-tasks',0,0,NULL,0,0,0),(26,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history','icon-time',0,0,NULL,0,0,0),(28,NULL,NULL,'new theme, theme, active theme, change theme, template, css','icon-font',0,0,NULL,0,0,0),(29,NULL,NULL,'theme',NULL,0,0,NULL,0,0,0),(30,NULL,NULL,'page types',NULL,0,0,NULL,0,0,0),(31,NULL,NULL,'custom theme, change theme, custom css, css',NULL,0,0,NULL,0,0,0),(32,NULL,NULL,'page type defaults, global block, global area, starter, template','icon-file',0,0,NULL,0,0,0),(34,NULL,NULL,'page attributes, custom','icon-cog',0,0,NULL,0,0,0),(35,NULL,NULL,'single, page, custom, application','icon-wrench',0,0,NULL,0,0,0),(36,NULL,NULL,'add workflow, remove workflow',NULL,0,0,NULL,0,0,0),(37,NULL,NULL,NULL,'icon-list',0,0,NULL,0,0,0),(38,NULL,NULL,NULL,'icon-user',0,0,NULL,0,0,0),(40,NULL,NULL,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo','icon-th',0,0,NULL,0,0,0),(41,NULL,NULL,NULL,'icon-lock',0,0,NULL,0,0,0),(42,NULL,NULL,NULL,NULL,1,0,NULL,1,0,0),(43,NULL,NULL,'block, refresh, custom','icon-wrench',0,0,NULL,0,0,0),(44,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0),(45,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0),(46,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,0,0,0),(47,NULL,NULL,'update, upgrade',NULL,0,0,NULL,0,0,0),(48,NULL,NULL,'concrete5.org, my account, marketplace',NULL,0,0,NULL,0,0,0),(49,NULL,NULL,'buy theme, new theme, marketplace, template',NULL,0,0,NULL,0,0,0),(50,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',NULL,0,0,NULL,0,0,0),(51,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0),(53,NULL,NULL,'website name, title',NULL,0,0,NULL,0,0,0),(54,NULL,NULL,'logo, favicon, iphone, icon, bookmark',NULL,0,0,NULL,0,0,0),(55,NULL,NULL,'tinymce, content block, fonts, editor, content, overlay',NULL,0,0,NULL,0,0,0),(56,NULL,NULL,'translate, translation, internationalization, multilingual',NULL,0,0,NULL,0,0,0),(57,NULL,NULL,'timezone, profile, locale',NULL,0,0,NULL,0,0,0),(58,NULL,NULL,'interface, quick nav, dashboard background, background image',NULL,0,0,NULL,0,0,0),(60,NULL,NULL,'vanity, pretty url, seo, pageview, view',NULL,0,0,NULL,0,0,0),(61,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',NULL,0,0,NULL,0,0,0),(62,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',NULL,0,0,NULL,0,0,0),(63,NULL,NULL,'pretty, slug',NULL,0,0,NULL,0,0,0),(64,NULL,NULL,'turn off statistics, tracking, statistics, pageviews, hits',NULL,0,0,NULL,0,0,0),(65,NULL,NULL,'configure search, site search, search option',NULL,0,0,NULL,0,0,0),(67,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0,0),(68,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0,0),(69,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',NULL,0,0,NULL,0,0,0),(71,NULL,NULL,'editors, hide site, offline, private, public, access',NULL,0,0,NULL,0,0,0),(72,NULL,NULL,'file options, file manager, upload, modify',NULL,0,0,NULL,0,0,0),(73,NULL,NULL,'security, files, media, extension, manager, upload',NULL,0,0,NULL,0,0,0),(74,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',NULL,0,0,NULL,0,0,0),(77,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',NULL,0,0,NULL,0,0,0),(78,NULL,NULL,'security, registration',NULL,0,0,NULL,0,0,0),(79,NULL,NULL,'antispam, block spam, security',NULL,0,0,NULL,0,0,0),(80,NULL,NULL,'lock site, under construction, hide, hidden',NULL,0,0,NULL,0,0,0),(82,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',NULL,0,0,NULL,0,0,0),(83,NULL,NULL,'member profile, member page, community, forums, social, avatar',NULL,0,0,NULL,0,0,0),(84,NULL,NULL,'signup, new user, community',NULL,0,0,NULL,0,0,0),(85,NULL,NULL,'smtp, mail settings',NULL,0,0,NULL,0,0,0),(86,NULL,NULL,'email server, mail settings, mail configuration, external, internal',NULL,0,0,NULL,0,0,0),(87,NULL,NULL,'test smtp, test mail',NULL,0,0,NULL,0,0,0),(88,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',NULL,0,0,NULL,0,0,0),(89,NULL,NULL,'attribute configuration',NULL,0,0,NULL,0,0,0),(90,NULL,NULL,'attributes, sets',NULL,0,0,NULL,0,0,0),(91,NULL,NULL,'attributes, types',NULL,0,0,NULL,0,0,0),(92,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0),(93,NULL,NULL,'overrides, system info, debug, support, help',NULL,0,0,NULL,0,0,0),(94,NULL,NULL,'errors, exceptions, develop, support, help',NULL,0,0,NULL,0,0,0),(95,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, log',NULL,0,0,NULL,0,0,0),(96,NULL,NULL,'security, alternate storage, hide files',NULL,0,0,NULL,0,0,0),(97,NULL,NULL,'network, proxy server',NULL,0,0,NULL,0,0,0),(98,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',NULL,0,0,NULL,0,0,0),(100,NULL,NULL,'upgrade, new version, update',NULL,0,0,NULL,0,0,0),(101,NULL,NULL,'export, database, xml, starting, points, schema, refresh, custom, tables',NULL,0,0,NULL,0,0,0),(106,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0),(107,NULL,NULL,NULL,NULL,1,0,NULL,1,0,0),(123,NULL,NULL,NULL,'icon-picture',0,0,NULL,0,0,0),(1,NULL,'voyance belgique luxembourg téléphone','voyance belgique luxembourg téléphone',NULL,0,0,NULL,0,0,0),(129,NULL,NULL,NULL,NULL,0,0,NULL,0,0,1),(130,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(131,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0);
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaLayouts`
--

DROP TABLE IF EXISTS `CollectionVersionAreaLayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaLayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`),
  KEY `cID` (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaLayouts`
--

LOCK TABLES `CollectionVersionAreaLayouts` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaStyles`
--

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaStyles`
--

LOCK TABLES `CollectionVersionAreaStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockStyles`
--

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

LOCK TABLES `CollectionVersionBlockStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlockStyles` VALUES (1,14,28,'Main',2),(1,16,29,'Main',2),(1,15,29,'Main',2),(1,17,29,'Main',2),(1,18,29,'Main',2),(1,19,35,'Main',2),(1,20,36,'Main',2),(1,21,37,'Main',2),(1,22,38,'Main',2),(1,23,49,'Main',2),(1,24,51,'Main',2),(1,25,52,'Main',2),(1,26,53,'Main',2);
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocks`
--

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocks`
--

LOCK TABLES `CollectionVersionBlocks` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocks` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocks` VALUES (106,1,1,'Header',0,1,0,0),(106,1,2,'Column 1',0,1,0,0),(106,1,3,'Column 2',0,1,0,0),(106,1,4,'Column 3',0,1,0,0),(106,1,5,'Column 4',0,1,0,0),(107,1,6,'Primary',0,1,0,0),(107,1,7,'Primary',1,1,0,0),(107,1,8,'Secondary 1',0,1,0,0),(107,1,9,'Secondary 2',0,1,0,0),(107,1,10,'Secondary 3',0,1,0,0),(107,1,11,'Secondary 4',0,1,0,0),(107,1,12,'Secondary 5',0,1,0,0),(1,2,13,'Header',0,1,0,0),(1,4,14,'Footer',0,1,0,0),(1,7,16,'Main',0,0,0,0),(1,6,16,'Main',0,1,0,0),(1,8,16,'Main',0,0,0,0),(1,9,16,'Main',0,0,0,0),(1,9,17,'Sidebar',0,1,0,0),(1,10,16,'Main',0,0,0,0),(1,10,17,'Sidebar',0,0,0,0),(1,10,18,'Header',0,1,0,0),(1,11,16,'Main',0,0,0,0),(1,11,17,'Sidebar',0,0,0,0),(1,11,18,'Header',0,0,0,0),(1,11,19,'Left_Title',0,1,0,0),(1,11,20,'Left_Title',1,1,0,0),(1,11,21,'Center_Title',0,1,0,0),(1,11,22,'Center_Detail',0,1,0,0),(1,11,23,'Center_Bottom',0,1,0,0),(1,11,24,'Right_Title',0,1,0,0),(1,11,25,'Right_Detail',0,1,0,0),(1,12,16,'Main',0,0,0,0),(1,12,24,'Right_Title',0,0,0,0),(1,12,23,'Center_Bottom',0,0,0,0),(1,12,22,'Center_Detail',0,0,0,0),(1,12,21,'Center_Title',0,0,0,0),(1,12,19,'Left_Title',0,0,0,0),(1,12,18,'Header',0,0,0,0),(1,12,17,'Sidebar',0,0,0,0),(1,12,25,'Right_Detail',0,0,0,0),(1,12,20,'Left_Title',1,0,0,0),(1,12,26,'Main',1,1,0,0),(1,13,16,'Main',1,0,0,0),(1,13,25,'Right_Detail',0,0,0,0),(1,13,24,'Right_Title',0,0,0,0),(1,13,23,'Center_Bottom',0,0,0,0),(1,13,22,'Center_Detail',0,0,0,0),(1,13,21,'Center_Title',0,0,0,0),(1,13,19,'Left_Title',0,0,0,0),(1,13,18,'Header',0,0,0,0),(1,13,17,'Sidebar',0,0,0,0),(1,13,20,'Left_Title',1,0,0,0),(1,13,27,'Main',0,1,0,0),(1,14,28,'Main',1,1,0,0),(1,14,25,'Right_Detail',0,0,0,0),(1,14,24,'Right_Title',0,0,0,0),(1,14,23,'Center_Bottom',0,0,0,0),(1,14,22,'Center_Detail',0,0,0,0),(1,14,21,'Center_Title',0,0,0,0),(1,14,19,'Left_Title',0,0,0,0),(1,14,18,'Header',0,0,0,0),(1,14,17,'Sidebar',0,0,0,0),(1,14,20,'Left_Title',1,0,0,0),(1,14,16,'Main',2,0,0,0),(1,15,21,'Center_Title',0,0,0,0),(1,15,17,'Sidebar',0,0,0,0),(1,15,18,'Header',0,0,0,0),(1,15,19,'Left_Title',0,0,0,0),(1,15,25,'Right_Detail',0,0,0,0),(1,15,24,'Right_Title',0,0,0,0),(1,15,22,'Center_Detail',0,0,0,0),(1,15,23,'Center_Bottom',0,0,0,0),(1,16,21,'Center_Title',0,0,0,0),(1,15,20,'Left_Title',1,0,0,0),(1,15,16,'Main',1,0,0,0),(1,15,29,'Main',1,1,0,0),(1,16,23,'Center_Bottom',0,0,0,0),(1,16,22,'Center_Detail',0,0,0,0),(1,16,24,'Right_Title',0,0,0,0),(1,16,25,'Right_Detail',0,0,0,0),(1,16,19,'Left_Title',0,0,0,0),(1,16,18,'Header',0,0,0,0),(1,16,17,'Sidebar',0,0,0,0),(1,16,20,'Left_Title',1,0,0,0),(1,16,29,'Main',1,0,0,0),(1,17,21,'Center_Title',0,0,0,0),(1,17,17,'Sidebar',0,0,0,0),(1,17,18,'Header',0,0,0,0),(1,17,19,'Left_Title',0,0,0,0),(1,17,25,'Right_Detail',0,0,0,0),(1,17,24,'Right_Title',0,0,0,0),(1,17,22,'Center_Detail',0,0,0,0),(1,17,23,'Center_Bottom',0,0,0,0),(1,17,20,'Left_Title',1,0,0,0),(1,17,29,'Main',0,0,0,0),(1,17,31,'Header Nav',0,1,0,0),(1,18,21,'Center_Title',0,0,0,0),(1,18,29,'Main',0,0,0,0),(1,18,23,'Center_Bottom',0,0,0,0),(1,18,22,'Center_Detail',0,0,0,0),(1,18,24,'Right_Title',0,0,0,0),(1,18,25,'Right_Detail',0,0,0,0),(1,18,19,'Left_Title',0,0,0,0),(1,18,18,'Header',0,0,0,0),(1,18,17,'Sidebar',0,0,0,0),(131,1,33,'Header Nav',0,1,0,0),(1,18,20,'Left_Title',1,0,0,0),(1,18,32,'Header Nav',0,1,0,0),(130,2,34,'Header Nav',0,1,0,0),(1,19,21,'Center_Title',0,0,0,0),(1,19,17,'Sidebar',0,0,0,0),(1,19,18,'Header',0,0,0,0),(1,19,19,'Left_Title',0,0,0,0),(1,19,25,'Right_Detail',0,0,0,0),(1,19,24,'Right_Title',0,0,0,0),(1,19,22,'Center_Detail',0,0,0,0),(1,19,23,'Center_Bottom',0,0,0,0),(1,20,21,'Center_Title',0,0,0,0),(1,19,32,'Header Nav',0,0,0,0),(1,19,20,'Left_Title',1,0,0,0),(1,19,35,'Main',0,1,0,0),(1,20,32,'Header Nav',0,0,0,0),(1,20,23,'Center_Bottom',0,0,0,0),(1,20,22,'Center_Detail',0,0,0,0),(1,20,24,'Right_Title',0,0,0,0),(1,20,25,'Right_Detail',0,0,0,0),(1,20,19,'Left_Title',0,0,0,0),(1,20,18,'Header',0,0,0,0),(1,20,17,'Sidebar',0,0,0,0),(1,21,21,'Center_Title',0,0,0,0),(1,20,20,'Left_Title',1,0,0,0),(1,20,36,'Main',0,1,0,0),(1,21,17,'Sidebar',0,0,0,0),(1,21,18,'Header',0,0,0,0),(1,21,19,'Left_Title',0,0,0,0),(1,21,25,'Right_Detail',0,0,0,0),(1,21,24,'Right_Title',0,0,0,0),(1,21,22,'Center_Detail',0,0,0,0),(1,21,23,'Center_Bottom',0,0,0,0),(1,21,32,'Header Nav',0,0,0,0),(1,22,17,'Sidebar',0,0,0,0),(1,21,20,'Left_Title',1,0,0,0),(1,21,37,'Main',0,1,0,0),(1,22,32,'Header Nav',0,0,0,0),(1,22,25,'Right_Detail',0,0,0,0),(1,22,24,'Right_Title',0,0,0,0),(1,22,23,'Center_Bottom',0,0,0,0),(1,22,22,'Center_Detail',0,0,0,0),(1,22,21,'Center_Title',0,0,0,0),(1,22,19,'Left_Title',0,0,0,0),(1,22,18,'Header',0,0,0,0),(130,3,34,'Header Nav',0,0,0,0),(1,22,20,'Left_Title',1,0,0,0),(1,22,38,'Main',0,1,0,0),(130,3,40,'Main',0,1,0,0),(130,3,41,'Main',1,1,0,0),(130,4,34,'Header Nav',0,0,0,0),(130,5,34,'Header Nav',0,0,0,0),(130,4,41,'Main',1,0,0,0),(130,4,42,'Main',0,1,0,0),(130,5,42,'Main',0,0,0,0),(130,6,34,'Header Nav',0,0,0,0),(130,5,43,'Main',1,1,0,0),(130,6,42,'Main',0,0,0,0),(130,7,34,'Header Nav',0,0,0,0),(130,6,44,'Main',1,1,0,0),(130,7,42,'Main',0,0,0,0),(130,8,34,'Header Nav',0,0,0,0),(130,7,45,'Main',1,1,0,0),(130,8,42,'Main',0,0,0,0),(130,8,46,'Main',1,1,0,0),(130,9,34,'Header Nav',0,0,0,0),(130,9,42,'Main',0,0,0,0),(130,9,46,'Main',1,0,0,0),(130,10,34,'Header Nav',0,0,0,0),(130,10,42,'Main',0,0,0,0),(130,11,34,'Header Nav',0,0,0,0),(130,10,47,'Main',1,1,0,0),(130,11,42,'Main',0,0,0,0),(130,12,34,'Header Nav',0,0,0,0),(130,11,48,'Main',1,1,0,0),(130,12,42,'Main',0,0,0,0),(130,12,48,'Main',1,0,0,0),(1,23,17,'Sidebar',0,0,0,0),(1,23,18,'Header',0,0,0,0),(1,23,19,'Left_Title',0,0,0,0),(1,23,21,'Center_Title',0,0,0,0),(1,23,22,'Center_Detail',0,0,0,0),(1,23,23,'Center_Bottom',0,0,0,0),(1,23,24,'Right_Title',0,0,0,0),(1,23,25,'Right_Detail',0,0,0,0),(1,23,32,'Header Nav',0,0,0,0),(129,9,50,'Main',0,1,0,0),(1,23,20,'Left_Title',1,0,0,0),(1,23,49,'Main',0,1,0,0),(1,24,17,'Sidebar',0,0,0,0),(1,24,32,'Header Nav',0,0,0,0),(1,24,25,'Right_Detail',0,0,0,0),(1,24,24,'Right_Title',0,0,0,0),(1,24,23,'Center_Bottom',0,0,0,0),(1,24,22,'Center_Detail',0,0,0,0),(1,24,21,'Center_Title',0,0,0,0),(1,24,19,'Left_Title',0,0,0,0),(1,24,18,'Header',0,0,0,0),(1,25,17,'Sidebar',0,0,0,0),(1,24,20,'Left_Title',1,0,0,0),(1,24,51,'Main',0,1,0,0),(1,25,32,'Header Nav',0,0,0,0),(1,25,25,'Right_Detail',0,0,0,0),(1,25,24,'Right_Title',0,0,0,0),(1,25,23,'Center_Bottom',0,0,0,0),(1,25,22,'Center_Detail',0,0,0,0),(1,25,21,'Center_Title',0,0,0,0),(1,25,19,'Left_Title',0,0,0,0),(1,25,18,'Header',0,0,0,0),(1,25,20,'Left_Title',1,0,0,0),(1,25,52,'Main',0,1,0,0),(1,26,17,'Sidebar',0,0,0,0),(1,26,32,'Header Nav',0,0,0,0),(1,26,25,'Right_Detail',0,0,0,0),(1,26,24,'Right_Title',0,0,0,0),(1,26,23,'Center_Bottom',0,0,0,0),(1,26,22,'Center_Detail',0,0,0,0),(1,26,21,'Center_Title',0,0,0,0),(1,26,19,'Left_Title',0,0,0,0),(1,26,18,'Header',0,0,0,0),(1,26,20,'Left_Title',1,0,0,0),(1,26,53,'Main',0,1,0,0);
/*!40000 ALTER TABLE `CollectionVersionBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksOutputCache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `btCachedBlockOutput` longtext,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocksOutputCache`
--

LOCK TABLES `CollectionVersionBlocksOutputCache` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionRelatedEdits`
--

LOCK TABLES `CollectionVersionRelatedEdits` WRITE;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersions`
--

DROP TABLE IF EXISTS `CollectionVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `ctID` (`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersions`
--

LOCK TABLES `CollectionVersions` WRITE;
/*!40000 ALTER TABLE `CollectionVersions` DISABLE KEYS */;
INSERT INTO `CollectionVersions` VALUES (1,1,'Home','home','','2014-07-12 11:16:53','2014-07-12 11:16:53','Version 1',0,0,1,NULL,8,4,NULL),(123,1,'Template Theme','template_theme','Set template bootstrap 2.','2014-07-12 11:40:02','2014-07-12 11:40:02','Initial Version',1,0,1,NULL,8,0,NULL),(2,1,'Dashboard','dashboard','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(3,1,'Composer','composer','Write for your site.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(4,1,'Write','write','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(5,1,'Drafts','drafts','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(6,1,'Sitemap','sitemap','Whole world at a glance.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(7,1,'Full Sitemap','full','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(8,1,'Flat View','explore','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(9,1,'Page Search','search','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(10,1,'Files','files','All documents and images.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(11,1,'File Manager','search','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(12,1,'Attributes','attributes','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(13,1,'File Sets','sets','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(14,1,'Add File Set','add_set','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(15,1,'Members','users','Add and manage the user accounts and groups on your website.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(16,1,'Search Users','search','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(17,1,'User Groups','groups','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(18,1,'Attributes','attributes','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(19,1,'Add User','add','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(20,1,'Add Group','add_group','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(21,1,'Group Sets','group_sets','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(22,1,'Reports','reports','Get data from forms and logs.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(23,1,'Statistics','statistics','View your site activity.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(24,1,'Form Results','forms','Get submission data.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(25,1,'Surveys','surveys','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(26,1,'Logs','logs','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(27,1,'Pages & Themes','pages','Reskin your site.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(28,1,'Themes','themes','Reskin your site.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(29,1,'Add','add','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(30,1,'Inspect','inspect','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(31,1,'Customize','customize','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(32,1,'Page Types','types','What goes in your site.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(33,1,'Add Page Type','add','Add page types to your site.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(34,1,'Attributes','attributes','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(35,1,'Single Pages','single','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(36,1,'Workflow','workflow','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(37,1,'Workflow List','list','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(38,1,'Waiting for Me','me','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(39,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(40,1,'Stacks','stacks','Share content across your site.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(41,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(42,1,'Stack List','list','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(43,1,'Block Types','types','Manage the installed block types in your site.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(44,1,'Extend concrete5','extend','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(45,1,'Dashboard','news','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(46,1,'Add Functionality','install','Install add-ons & themes.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(47,1,'Update Add-Ons','update','Update your installed packages.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(48,1,'Connect to the Community','connect','Connect to the concrete5 community.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(49,1,'Get More Themes','themes','Download themes from concrete5.org.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(50,1,'Get More Add-Ons','add-ons','Download add-ons from concrete5.org.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(51,1,'System & Settings','system','Secure and setup your site.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(52,1,'Basics','basics','Basic information about your website.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(53,1,'Site Name','site_name','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(54,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(55,1,'Rich Text Editor','editor','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(56,1,'Languages','multilingual','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(57,1,'Time Zone','timezone','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(58,1,'Interface Preferences','interface','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(59,1,'SEO & Statistics','seo','Enable pretty URLs, statistics and tracking codes.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(60,1,'Pretty URLs','urls','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(61,1,'Bulk SEO Updater','bulk_seo_tool','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(62,1,'Tracking Codes','tracking_codes','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(63,1,'Excluded URL Word List','excluded','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(64,1,'Statistics','statistics','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(65,1,'Search Index','search_index','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(66,1,'Optimization','optimization','Keep your site running well.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(67,1,'Cache & Speed Settings','cache','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(68,1,'Clear Cache','clear_cache','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(69,1,'Automated Jobs','jobs','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(70,1,'Permissions & Access','permissions','Control who sees and edits your site.','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(71,1,'Site Access','site','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(72,1,'File Manager Permissions','files','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(73,1,'Allowed File Types','file_types','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(74,1,'Task Permissions','tasks','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(75,1,'User Permissions','users','','2014-07-12 11:16:58','2014-07-12 11:16:58','Initial Version',1,0,1,NULL,8,0,NULL),(76,1,'Advanced Permissions','advanced','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(77,1,'IP Blacklist','ip_blacklist','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(78,1,'Captcha Setup','captcha','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(79,1,'Spam Control','antispam','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(80,1,'Maintenance Mode','maintenance_mode','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(81,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(82,1,'Login Destination','postlogin','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(83,1,'Public Profiles','profiles','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(84,1,'Public Registration','public_registration','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(85,1,'Email','mail','Control how your site send and processes mail.','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(86,1,'SMTP Method','method','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(87,1,'Test Mail Settings','test_settings','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(88,1,'Email Importers','importers','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(89,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(90,1,'Sets','sets','Group attributes into sets for easier organization','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(91,1,'Types','types','Choose which attribute types are available for different items.','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(92,1,'Environment','environment','Advanced settings for web developers.','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(93,1,'Environment Information','info','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(94,1,'Debug Settings','debug','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(95,1,'Logging Settings','logging','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(96,1,'File Storage Locations','file_storage_locations','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(97,1,'Proxy Server','proxy','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(98,1,'Backup & Restore','backup_restore','Backup or restore your website.','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(99,1,'Backup Database','backup','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(100,1,'Update concrete5','update','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(101,1,'Database XML','database','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(102,1,'Composer','composer','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(103,1,'',NULL,NULL,'2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,NULL,NULL,0,1,NULL),(104,1,'',NULL,NULL,'2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,NULL,NULL,0,2,NULL),(105,1,'',NULL,NULL,'2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,NULL,NULL,0,3,NULL),(106,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,3,NULL),(107,1,'Customize Dashboard Home','home','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,2,NULL),(108,1,'Drafts','!drafts','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(109,1,'Trash','!trash','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(110,1,'Stacks','!stacks','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(111,1,'Login','login','','2014-07-12 11:16:59','2014-07-12 11:16:59','Initial Version',1,0,1,NULL,8,0,NULL),(112,1,'Register','register','','2014-07-12 11:17:00','2014-07-12 11:17:00','Initial Version',1,0,1,NULL,8,0,NULL),(113,1,'Profile','profile','','2014-07-12 11:17:00','2014-07-12 11:17:00','Initial Version',1,0,1,NULL,8,0,NULL),(114,1,'Edit','edit','','2014-07-12 11:17:00','2014-07-12 11:17:00','Initial Version',1,0,1,NULL,8,0,NULL),(115,1,'Avatar','avatar','','2014-07-12 11:17:00','2014-07-12 11:17:00','Initial Version',1,0,1,NULL,8,0,NULL),(116,1,'Messages','messages','','2014-07-12 11:17:00','2014-07-12 11:17:00','Initial Version',1,0,1,NULL,8,0,NULL),(117,1,'Friends','friends','','2014-07-12 11:17:00','2014-07-12 11:17:00','Initial Version',1,0,1,NULL,8,0,NULL),(118,1,'Page Not Found','page_not_found','','2014-07-12 11:17:00','2014-07-12 11:17:00','Initial Version',1,0,1,NULL,8,0,NULL),(119,1,'Page Forbidden','page_forbidden','','2014-07-12 11:17:00','2014-07-12 11:17:00','Initial Version',1,0,1,NULL,8,0,NULL),(120,1,'Download File','download_file','','2014-07-12 11:17:00','2014-07-12 11:17:00','Initial Version',1,0,1,NULL,8,0,NULL),(1,25,'Home','home','','2014-07-12 11:16:53','2015-02-28 13:50:43','Version 25',0,0,1,1,8,6,NULL),(122,1,'',NULL,NULL,'2014-07-12 11:17:00','2014-07-12 11:17:00','Initial Version',1,0,NULL,NULL,0,4,NULL),(1,2,'Home','home','','2014-07-12 11:16:53','2014-07-12 11:42:53','Version 2',0,0,1,1,8,4,NULL),(1,3,'Home','home','','2014-07-12 11:16:53','2014-07-12 11:43:30','Version 3',0,0,1,1,8,4,NULL),(1,4,'Home','home','','2014-07-12 11:16:53','2014-07-14 11:54:33','Version 4',0,0,1,1,8,4,NULL),(1,5,'Home','home','','2014-07-12 11:16:53','2014-07-14 11:56:11','Version 5',0,0,1,1,8,4,NULL),(124,1,'',NULL,NULL,'2014-07-14 12:45:15','2014-07-14 12:45:15','Initial Version',1,0,NULL,NULL,0,5,NULL),(125,1,'',NULL,NULL,'2014-07-14 12:45:15','2014-07-14 12:45:15','Initial Version',1,0,NULL,NULL,0,6,NULL),(126,1,'',NULL,NULL,'2014-07-14 12:45:15','2014-07-14 12:45:15','Initial Version',1,0,NULL,NULL,0,7,NULL),(127,1,'',NULL,NULL,'2014-07-14 12:45:16','2014-07-14 12:45:16','Initial Version',1,0,NULL,NULL,0,8,NULL),(128,1,'',NULL,NULL,'2014-07-14 12:45:16','2014-07-14 12:45:16','Initial Version',1,0,NULL,NULL,0,9,NULL),(1,6,'Home','home','','2014-07-12 11:16:53','2014-07-14 13:22:04','Version 6',0,0,1,1,8,4,NULL),(1,7,'Home','home','','2014-07-12 11:16:53','2014-07-14 15:20:31','Version 7',0,0,1,1,8,4,NULL),(1,8,'Home','home','','2014-07-12 11:16:53','2014-07-14 16:44:29','Version 8',0,0,1,1,8,4,NULL),(1,9,'Home','home','','2014-07-12 11:16:53','2014-07-14 17:26:59','Version 9',0,0,1,1,8,4,NULL),(1,10,'Home','home','','2014-07-12 11:16:53','2014-07-14 17:29:09','Version 10',0,0,1,1,8,4,NULL),(1,11,'Home','home','','2014-07-12 11:16:53','2014-07-14 17:30:15','Version 11',0,0,1,1,8,9,NULL),(1,12,'Home','home','','2014-07-12 11:16:53','2014-07-14 18:06:17','Version 12',0,0,1,1,8,6,NULL),(1,13,'Home','home','','2014-07-12 11:16:53','2014-07-14 18:20:37','Version 13',0,0,1,1,8,6,NULL),(1,14,'Home','home','','2014-07-12 11:16:53','2014-07-15 12:07:13','Version 14',0,0,1,1,8,6,NULL),(1,15,'Home','home','','2014-07-12 11:16:53','2014-07-15 12:17:04','Version 15',0,0,1,1,8,6,NULL),(1,16,'Home','home','','2014-07-12 11:16:53','2014-07-15 12:28:01','Version 16',0,0,1,1,8,6,NULL),(1,17,'Home','home','','2014-07-12 11:16:53','2014-07-15 16:22:30','Version 17',0,0,1,1,8,6,NULL),(129,1,'Nos conseillers','nos-conseillers','Page dédiées aux conseillers','1970-01-01 16:23:00','2014-07-15 16:24:09','Initial Version',0,0,1,1,8,6,NULL),(1,18,'Home','home','','2014-07-12 11:16:53','2014-07-15 16:24:47','Version 18',0,0,1,1,8,6,NULL),(130,1,'Devenez Conseiller','devenez-conseiller','Page de candidature','1970-01-01 16:25:00','2014-07-15 16:25:45','Initial Version',0,0,1,1,8,6,NULL),(131,1,'',NULL,NULL,'2014-07-15 16:26:56','2014-07-15 16:26:56','Version 1',1,0,NULL,1,0,10,NULL),(129,2,'Nos conseillers','nos-conseillers','Page dédiées aux conseillers','1970-01-01 16:23:00','2014-07-15 16:28:27','Version 2',0,0,1,1,8,10,NULL),(129,3,'Nos conseillers','nos-conseillers','Page dédiées aux conseillers','1970-01-01 16:23:00','2014-07-15 16:29:03','Nouvelle version 3',0,0,1,1,8,10,NULL),(130,2,'Devenez Conseiller','devenez-conseiller','Page de candidature','1970-01-01 16:25:00','2014-07-15 16:29:39','Version 2',0,0,1,1,8,6,NULL),(1,19,'Home','home','','2014-07-12 11:16:53','2014-07-15 16:35:01','Version 19',0,0,1,1,8,6,NULL),(1,20,'Home','home','','2014-07-12 11:16:53','2014-07-15 16:37:07','Version 20',0,0,1,1,8,6,NULL),(1,21,'Home','home','','2014-07-12 11:16:53','2014-07-15 16:38:21','Version 21',0,0,1,1,8,6,NULL),(1,22,'Home','home','','2014-07-12 11:16:53','2014-07-15 16:39:10','Version 22',0,0,1,1,8,6,NULL),(129,4,'Nos conseillers','nos-conseillers','Page dédiées aux conseillers','1970-01-01 16:23:00','2014-07-15 16:40:59','Version 4',0,0,1,1,8,10,NULL),(129,5,'Nos conseillers','nos-conseillers','Page dédiées aux conseillers','1970-01-01 16:23:00','2014-07-15 16:41:47','Version 5',0,0,1,1,8,10,NULL),(130,3,'Devenez Conseiller','devenez-conseiller','Page de candidature','1970-01-01 16:25:00','2014-07-15 16:48:15','Version 3',0,0,1,1,8,6,NULL),(130,4,'Devenez Conseillère','devenez-conseillere','Page de candidature','1970-01-01 16:25:00','2014-07-15 16:51:53','Nouvelle version 4',0,0,1,1,8,6,NULL),(129,6,'Nos conseilleres','nos-conseilleres','Page dédiées aux conseillers','1970-01-01 16:23:00','2014-07-15 16:52:46','Nouvelle version 6',0,0,1,1,8,10,NULL),(130,5,'Devenez Conseillère','devenez-conseillere','Page de candidature','1970-01-01 16:25:00','2014-07-15 16:55:44','Nouvelle version 5',0,0,1,1,8,6,NULL),(130,7,'Devenez Conseillère','devenez-conseillere','Page de candidature','1970-01-01 16:25:00','2014-07-15 17:52:30','Version 7',0,0,1,1,8,6,NULL),(130,6,'Devenez Conseillère','devenez-conseillere','Page de candidature','1970-01-01 16:25:00','2014-07-15 17:51:00','Version 6',0,0,1,1,8,6,NULL),(130,8,'Devenez Conseillère','devenez-conseillere','Page de candidature','1970-01-01 16:25:00','2014-07-15 17:53:05','Version 8',0,0,1,1,8,6,NULL),(130,9,'Devenez Conseiller(e)','devenez-conseillere','Page de candidature','1970-01-01 16:25:00','2014-07-15 18:31:26','Nouvelle version 9',0,0,1,1,8,6,NULL),(129,7,'Nos conseiller(e)s','nos-conseilleres','Page dédiées aux conseillers','1970-01-01 16:23:00','2014-07-15 18:31:40','Nouvelle version 7',0,0,1,1,8,10,NULL),(130,10,'Devenez Conseiller(e)','devenez-conseillere','Page de candidature','1970-01-01 16:25:00','2014-07-15 19:04:12','Version 10',0,0,1,1,8,6,NULL),(130,11,'Devenez Conseiller(e)','devenez-conseillere','Page de candidature','1970-01-01 16:25:00','2014-07-15 19:05:37','Version 11',0,0,1,1,8,6,NULL),(130,12,'Devenez Conseiller(e)','devenez-conseiller','Page de candidature','1970-01-01 16:25:00','2014-07-15 19:09:31','Version 12',1,0,1,1,8,6,NULL),(129,8,'Nos conseiller(e)s','nos-conseiller','Page dédiées aux conseillers','1970-01-01 16:23:00','2014-07-15 19:09:52','Version 8',0,0,1,1,8,10,NULL),(1,23,'Home','home','','2014-07-12 11:16:53','2015-01-14 11:49:23','Version 23',0,0,1,1,8,6,NULL),(129,9,'Nos conseiller(e)s','nos-conseiller','Page dédiées aux conseillers','1970-01-01 16:23:00','2015-01-14 11:52:51','Version 9',1,0,1,1,8,10,NULL),(1,24,'Home','home','','2014-07-12 11:16:53','2015-01-25 14:10:02','Correction des numérosz',0,0,1,1,8,6,NULL),(1,26,'Home','home','','2014-07-12 11:16:53','2015-03-31 14:16:46','Version 26',1,0,1,1,8,6,NULL);
/*!40000 ALTER TABLE `CollectionVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (1,'2014-07-12 11:16:53','2015-03-31 14:17:01','home'),(2,'2014-07-12 11:16:58','2014-07-12 11:16:58','dashboard'),(3,'2014-07-12 11:16:58','2014-07-12 11:16:58','composer'),(4,'2014-07-12 11:16:58','2014-07-12 11:16:58','write'),(5,'2014-07-12 11:16:58','2014-07-12 11:16:58','drafts'),(6,'2014-07-12 11:16:58','2014-07-12 11:16:58','sitemap'),(7,'2014-07-12 11:16:58','2014-07-12 11:16:58','full'),(8,'2014-07-12 11:16:58','2014-07-12 11:16:58','explore'),(9,'2014-07-12 11:16:58','2014-07-12 11:16:58','search'),(10,'2014-07-12 11:16:58','2014-07-12 11:16:58','files'),(11,'2014-07-12 11:16:58','2014-07-12 11:16:58','search'),(12,'2014-07-12 11:16:58','2014-07-12 11:16:58','attributes'),(13,'2014-07-12 11:16:58','2014-07-12 11:16:58','sets'),(14,'2014-07-12 11:16:58','2014-07-12 11:16:58','add_set'),(15,'2014-07-12 11:16:58','2014-07-12 11:16:58','users'),(16,'2014-07-12 11:16:58','2014-07-12 11:16:58','search'),(17,'2014-07-12 11:16:58','2014-07-12 11:16:58','groups'),(18,'2014-07-12 11:16:58','2014-07-12 11:16:58','attributes'),(19,'2014-07-12 11:16:58','2014-07-12 11:16:58','add'),(20,'2014-07-12 11:16:58','2014-07-12 11:16:58','add_group'),(21,'2014-07-12 11:16:58','2014-07-12 11:16:58','group_sets'),(22,'2014-07-12 11:16:58','2014-07-12 11:16:58','reports'),(23,'2014-07-12 11:16:58','2014-07-12 11:16:58','statistics'),(24,'2014-07-12 11:16:58','2014-07-12 11:16:58','forms'),(25,'2014-07-12 11:16:58','2014-07-12 11:16:58','surveys'),(26,'2014-07-12 11:16:58','2014-07-12 11:16:58','logs'),(27,'2014-07-12 11:16:58','2014-07-12 11:16:58','pages'),(28,'2014-07-12 11:16:58','2014-07-12 11:16:58','themes'),(29,'2014-07-12 11:16:58','2014-07-12 11:16:58','add'),(30,'2014-07-12 11:16:58','2014-07-12 11:16:58','inspect'),(31,'2014-07-12 11:16:58','2014-07-12 11:16:58','customize'),(32,'2014-07-12 11:16:58','2014-07-12 11:16:58','types'),(33,'2014-07-12 11:16:58','2014-07-12 11:16:58','add'),(34,'2014-07-12 11:16:58','2014-07-12 11:16:58','attributes'),(35,'2014-07-12 11:16:58','2014-07-12 11:16:58','single'),(36,'2014-07-12 11:16:58','2014-07-12 11:16:58','workflow'),(37,'2014-07-12 11:16:58','2014-07-12 11:16:58','list'),(38,'2014-07-12 11:16:58','2014-07-12 11:16:58','me'),(39,'2014-07-12 11:16:58','2014-07-12 11:16:58','blocks'),(40,'2014-07-12 11:16:58','2014-07-12 11:16:58','stacks'),(41,'2014-07-12 11:16:58','2014-07-12 11:16:58','permissions'),(42,'2014-07-12 11:16:58','2014-07-12 11:16:58','list'),(43,'2014-07-12 11:16:58','2014-07-12 11:16:58','types'),(44,'2014-07-12 11:16:58','2014-07-12 11:16:58','extend'),(45,'2014-07-12 11:16:58','2014-07-12 11:16:58','news'),(46,'2014-07-12 11:16:58','2014-07-12 11:16:58','install'),(47,'2014-07-12 11:16:58','2014-07-12 11:16:58','update'),(48,'2014-07-12 11:16:58','2014-07-12 11:16:58','connect'),(49,'2014-07-12 11:16:58','2014-07-12 11:16:58','themes'),(50,'2014-07-12 11:16:58','2014-07-12 11:16:58','add-ons'),(51,'2014-07-12 11:16:58','2014-07-12 11:16:58','system'),(52,'2014-07-12 11:16:58','2014-07-12 11:16:58','basics'),(53,'2014-07-12 11:16:58','2014-07-12 11:16:58','site_name'),(54,'2014-07-12 11:16:58','2014-07-12 11:16:58','icons'),(55,'2014-07-12 11:16:58','2014-07-12 11:16:58','editor'),(56,'2014-07-12 11:16:58','2014-07-12 11:16:58','multilingual'),(57,'2014-07-12 11:16:58','2014-07-12 11:16:58','timezone'),(58,'2014-07-12 11:16:58','2014-07-12 11:16:58','interface'),(59,'2014-07-12 11:16:58','2014-07-12 11:16:58','seo'),(60,'2014-07-12 11:16:58','2014-07-12 11:16:58','urls'),(61,'2014-07-12 11:16:58','2014-07-12 11:16:58','bulk_seo_tool'),(62,'2014-07-12 11:16:58','2014-07-12 11:16:58','tracking_codes'),(63,'2014-07-12 11:16:58','2014-07-12 11:16:58','excluded'),(64,'2014-07-12 11:16:58','2014-07-12 11:16:58','statistics'),(65,'2014-07-12 11:16:58','2014-07-12 11:16:58','search_index'),(66,'2014-07-12 11:16:58','2014-07-12 11:16:58','optimization'),(67,'2014-07-12 11:16:58','2014-07-12 11:16:58','cache'),(68,'2014-07-12 11:16:58','2014-07-12 11:16:58','clear_cache'),(69,'2014-07-12 11:16:58','2014-07-12 11:16:58','jobs'),(70,'2014-07-12 11:16:58','2014-07-12 11:16:58','permissions'),(71,'2014-07-12 11:16:58','2014-07-12 11:16:58','site'),(72,'2014-07-12 11:16:58','2014-07-12 11:16:58','files'),(73,'2014-07-12 11:16:58','2014-07-12 11:16:58','file_types'),(74,'2014-07-12 11:16:58','2014-07-12 11:16:58','tasks'),(75,'2014-07-12 11:16:58','2014-07-12 11:16:59','users'),(76,'2014-07-12 11:16:59','2014-07-12 11:16:59','advanced'),(77,'2014-07-12 11:16:59','2014-07-12 11:16:59','ip_blacklist'),(78,'2014-07-12 11:16:59','2014-07-12 11:16:59','captcha'),(79,'2014-07-12 11:16:59','2014-07-12 11:16:59','antispam'),(80,'2014-07-12 11:16:59','2014-07-12 11:16:59','maintenance_mode'),(81,'2014-07-12 11:16:59','2014-07-12 11:16:59','registration'),(82,'2014-07-12 11:16:59','2014-07-12 11:16:59','postlogin'),(83,'2014-07-12 11:16:59','2014-07-12 11:16:59','profiles'),(84,'2014-07-12 11:16:59','2014-07-12 11:16:59','public_registration'),(85,'2014-07-12 11:16:59','2014-07-12 11:16:59','mail'),(86,'2014-07-12 11:16:59','2014-07-12 11:16:59','method'),(87,'2014-07-12 11:16:59','2014-07-12 11:16:59','test_settings'),(88,'2014-07-12 11:16:59','2014-07-12 11:16:59','importers'),(89,'2014-07-12 11:16:59','2014-07-12 11:16:59','attributes'),(90,'2014-07-12 11:16:59','2014-07-12 11:16:59','sets'),(91,'2014-07-12 11:16:59','2014-07-12 11:16:59','types'),(92,'2014-07-12 11:16:59','2014-07-12 11:16:59','environment'),(93,'2014-07-12 11:16:59','2014-07-12 11:16:59','info'),(94,'2014-07-12 11:16:59','2014-07-12 11:16:59','debug'),(95,'2014-07-12 11:16:59','2014-07-12 11:16:59','logging'),(96,'2014-07-12 11:16:59','2014-07-12 11:16:59','file_storage_locations'),(97,'2014-07-12 11:16:59','2014-07-12 11:16:59','proxy'),(98,'2014-07-12 11:16:59','2014-07-12 11:16:59','backup_restore'),(99,'2014-07-12 11:16:59','2014-07-12 11:16:59','backup'),(100,'2014-07-12 11:16:59','2014-07-12 11:16:59','update'),(101,'2014-07-12 11:16:59','2014-07-12 11:16:59','database'),(102,'2014-07-12 11:16:59','2014-07-12 11:16:59','composer'),(103,'2014-07-12 11:16:59','2014-07-12 11:16:59',NULL),(104,'2014-07-12 11:16:59','2014-07-12 11:16:59',NULL),(105,'2014-07-12 11:16:59','2014-07-12 11:16:59',NULL),(106,'2014-07-12 11:16:59','2014-07-12 11:16:59','welcome'),(107,'2014-07-12 11:16:59','2014-07-12 11:16:59','home'),(108,'2014-07-12 11:16:59','2014-07-12 11:16:59','!drafts'),(109,'2014-07-12 11:16:59','2014-07-12 11:16:59','!trash'),(110,'2014-07-12 11:16:59','2014-07-12 11:16:59','!stacks'),(111,'2014-07-12 11:16:59','2014-07-12 11:17:00','login'),(112,'2014-07-12 11:17:00','2014-07-12 11:17:00','register'),(113,'2014-07-12 11:17:00','2014-07-12 11:17:00','profile'),(114,'2014-07-12 11:17:00','2014-07-12 11:17:00','edit'),(115,'2014-07-12 11:17:00','2014-07-12 11:17:00','avatar'),(116,'2014-07-12 11:17:00','2014-07-12 11:17:00','messages'),(117,'2014-07-12 11:17:00','2014-07-12 11:17:00','friends'),(118,'2014-07-12 11:17:00','2014-07-12 11:17:00','page_not_found'),(119,'2014-07-12 11:17:00','2014-07-12 11:17:00','page_forbidden'),(120,'2014-07-12 11:17:00','2014-07-12 11:17:00','download_file'),(122,'2014-07-12 11:17:00','2014-07-12 11:17:00',NULL),(123,'2014-07-12 11:40:02','2014-07-12 11:40:02','template_theme'),(124,'2014-07-14 12:45:15','2014-07-14 12:45:15',NULL),(125,'2014-07-14 12:45:15','2014-07-14 12:45:15',NULL),(126,'2014-07-14 12:45:15','2014-07-14 12:45:15',NULL),(127,'2014-07-14 12:45:16','2014-07-14 12:45:16',NULL),(128,'2014-07-14 12:45:16','2014-07-14 12:45:16',NULL),(129,'2014-07-15 16:24:09','2015-01-14 11:54:25','nos-conseillers'),(130,'2014-07-15 16:25:45','2014-07-15 19:09:31','devenez-conseiller'),(131,'2014-07-15 16:26:56','2014-07-15 16:28:12',NULL);
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerContentLayout`
--

DROP TABLE IF EXISTS `ComposerContentLayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerContentLayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerContentLayout`
--

LOCK TABLES `ComposerContentLayout` WRITE;
/*!40000 ALTER TABLE `ComposerContentLayout` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerContentLayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerDrafts`
--

DROP TABLE IF EXISTS `ComposerDrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerDrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerDrafts`
--

LOCK TABLES `ComposerDrafts` WRITE;
/*!40000 ALTER TABLE `ComposerDrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerDrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerTypes`
--

DROP TABLE IF EXISTS `ComposerTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerTypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerTypes`
--

LOCK TABLES `ComposerTypes` WRITE;
/*!40000 ALTER TABLE `ComposerTypes` DISABLE KEYS */;
INSERT INTO `ComposerTypes` VALUES (4,'CHOOSE',0,0),(10,'CHOOSE',0,0);
/*!40000 ALTER TABLE `ComposerTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Config`
--

LOCK TABLES `Config` WRITE;
/*!40000 ALTER TABLE `Config` DISABLE KEYS */;
INSERT INTO `Config` VALUES ('ACCESS_ENTITY_UPDATED','2014-07-12 09:35:17','1405157717',0,0),('SITE_DEBUG_LEVEL','2014-07-12 09:17:00','1',0,0),('ENABLE_LOG_EMAILS','2014-07-12 09:17:00','1',0,0),('ENABLE_LOG_ERRORS','2014-07-12 09:17:00','1',0,0),('FULL_PAGE_CACHE_GLOBAL','2014-07-15 15:58:58','0',0,0),('ENABLE_MARKETPLACE_SUPPORT','2014-07-12 09:17:00','1',0,0),('ANTISPAM_LOG_SPAM','2014-07-12 09:17:00','1',0,0),('ENABLE_BLOCK_CACHE','2014-07-15 15:58:58','0',0,0),('ENABLE_OVERRIDE_CACHE','2014-07-15 15:58:58','0',0,0),('SITE_LOCALE','2014-07-12 09:17:00','fr_FR',0,0),('SITE','2014-07-12 09:17:00','Sublime-Voyance',0,0),('SITE_APP_VERSION','2015-02-28 12:34:18','5.6.3.3',0,0),('SITE_INSTALLED_APP_VERSION','2014-07-12 09:17:00','5.6.3.1',0,0),('NEWSFLOW_LAST_VIEWED','2015-05-11 08:03:32','1431331412',1,0),('SECURITY_TOKEN_JOBS','2014-07-12 09:17:00','SNE4lLiLlOcBf9zhXTkcsztomOSumEAhGKrWJ9f7CQzXo8RCFzLBOL8KzqxXqE2z',0,0),('SECURITY_TOKEN_ENCRYPTION','2014-07-12 09:17:00','yifqZRLGt8O8C4Iq20XR2ZYjKJkGkxZTlcJCrY1kA0GVfblx4bEpQrvtSAo4Foww',0,0),('SECURITY_TOKEN_VALIDATION','2014-07-12 09:17:00','LcJDMkDARJDX0rKrlenODIoFEARwHQIXoS1qz6GJoHZLQfmx3tocT2v9giVBxrPs',0,0),('APP_VERSION_LATEST','2015-05-11 08:03:33','5.6.3.3',0,0),('SEEN_INTRODUCTION','2014-07-12 09:17:11','1',0,0),('CONTENTS_TXT_EDITOR_MODE','2014-07-12 09:34:28','ADVANCED',0,0),('CONTENTS_TXT_EDITOR_WIDTH','2014-07-12 09:34:28','580',0,0),('CONTENTS_TXT_EDITOR_HEIGHT','2014-07-12 09:34:28','380',0,0),('FAVICON_FID','2014-07-12 09:35:17','1',0,0),('MARKETPLACE_SITE_TOKEN','2014-07-15 13:55:37','ZyVIlarBP7xzuF7kAhJQKSAUwnUfmj27Fsv41sIH5cL9fuSDR3c34A6X1QUMkrJe',0,0),('MARKETPLACE_SITE_URL_TOKEN','2014-07-15 13:55:37','mpvec9cqnn9ej9ebjahrglxj',0,0),('DO_PAGE_REINDEX_CHECK','2015-03-31 12:17:03','0',0,0),('FULL_PAGE_CACHE_LIFETIME','2014-07-15 15:58:58','default',0,0),('FULL_PAGE_CACHE_LIFETIME_CUSTOM','2014-07-15 15:58:58',NULL,0,0),('URL_REWRITING','2014-07-15 16:01:06','1',0,0);
/*!40000 ALTER TABLE `Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStylePresets`
--

DROP TABLE IF EXISTS `CustomStylePresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStylePresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStylePresets`
--

LOCK TABLES `CustomStylePresets` WRITE;
/*!40000 ALTER TABLE `CustomStylePresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomStylePresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStyleRules`
--

DROP TABLE IF EXISTS `CustomStyleRules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStyleRules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStyleRules`
--

LOCK TABLES `CustomStyleRules` WRITE;
/*!40000 ALTER TABLE `CustomStyleRules` DISABLE KEYS */;
INSERT INTO `CustomStyleRules` VALUES (1,'','','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','\r\n.presentationAlexandra{\r\n  display: block;\r\n  background-image: url(\'../img/fond.png\');\r\n  font-family: \'Comic Sans Ms\';\r\n  font-size: 17px;\r\n  position: relative;\r\n  background-color: white;\r\n  letter-spacing: 0.1em;\r\n  color:black;\r\n  margin: 10px auto;\r\n  padding: 10px 20px;\r\n  opacity: 1;\r\n  width: 700px;\r\n  height: 450px;\r\n  border-radius: 20px;\r\n}\r\n.presentationAlexandra a{\r\n  text-decoration: none;\r\n}\r\n.photoAlexandra{\r\n  float: left;\r\n  display: inline-block;\r\n  width:200px;\r\n  height: 300px;\r\n  margin: 10px 10px 20px 0px;\r\n  border: 10px orange groove;\r\n  border-radius: 20px;\r\n}\r\n\r\n.laius p {\r\n  margin-top: -10px;\r\n  padding: 0;\r\n  margin-left: 230px;\r\n  line-height: 1.4;\r\n  font-style: italic;\r\n}\r\n.laius .lettrine p{\r\n  /*border:1px solid red;*/\r\n  margin: 10px 0;\r\n}\r\n\r\n.laius .lettrine p:first-letter {\r\n  display: inline;\r\n  margin-top: -10px;\r\n  margin-left: 100px;\r\n  font-family: trebuchet MS;\r\n  font-size:80px;\r\n  color:#0000fe;\r\n  width:55px;\r\n  float:left;\r\n}\r\n.laius .lettrine p:first-of-type{\r\n  display: inline-block;\r\n  color: #42326c;\r\n  font-size: 30px;\r\n  line-height: 1.2;\r\n  margin-top: 10px;\r\n  font-style: normal;\r\n}\r\n\r\n.numTel{\r\n  display: inline-block;\r\n  /*display: block;*/\r\n  /*padding: 0;*/\r\n  width: 100%;\r\n  font-size: 12px;\r\n  /*border:1px solid red;*/\r\n  /*text-align: left;*/\r\n  line-height: 1;\r\n  vertical-align: middle;\r\n  /*margin: 5px 10px;*/\r\n}\r\n\r\n.boutonTel{\r\n  position: relative;\r\n  display: inline-block;\r\n  background-color: #00f;\r\n  border-radius: 20px;\r\n  width: 330px;\r\n  height: 70px;\r\n  vertical-align: middle;\r\n  border: 5px groove orange;\r\n  background: linear-gradient( #000, #2C2C2C, #777);\r\n  margin: 5px 3px;\r\n}\r\n.boutonTel img{\r\n  display: inline-block;\r\n  position: relative;\r\n  border:1px solid red;\r\n  /*float:left;*/\r\n  margin: 7px 0 7px 10px;\r\n  padding: 0;\r\n  border-radius: 7px;\r\n  border:1px solid yellow;\r\n}\r\n.boutonTel p{\r\n  position: relative;\r\n  display: inline-block;\r\n  color:gold;\r\n  width: 72%;\r\n    /*font-family: arial;*/\r\n  letter-spacing: 3px;\r\n  font-weight: bold;\r\n  margin: 0 auto;\r\n  padding: 0;\r\n  font-size: 25px;\r\n  /*border:1px solid greenyellow;*/\r\n  margin-left: 5px;\r\n  top: 5px;\r\n  text-align: center;\r\n  vertical-align: top;\r\n  line-height: 1.3;\r\n}\r\n.boutonTel .prix{\r\n  position: relative;\r\n  display: block;\r\n  margin: 0;\r\n  padding: 0;\r\n  font-style: italic;\r\n  top:5px;\r\n  font-size: 12px;\r\n  text-align: right;\r\n}'),(2,'','','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','');
/*!40000 ALTER TABLE `CustomStyleRules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DownloadStatistics`
--

DROP TABLE IF EXISTS `DownloadStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DownloadStatistics`
--

LOCK TABLES `DownloadStatistics` WRITE;
/*!40000 ALTER TABLE `DownloadStatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `DownloadStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeValues`
--

DROP TABLE IF EXISTS `FileAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeValues`
--

LOCK TABLES `FileAttributeValues` WRITE;
/*!40000 ALTER TABLE `FileAttributeValues` DISABLE KEYS */;
INSERT INTO `FileAttributeValues` VALUES (2,1,12,122),(2,1,13,123),(3,1,12,124),(3,1,13,125);
/*!40000 ALTER TABLE `FileAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionAssignments`
--

DROP TABLE IF EXISTS `FilePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionAssignments`
--

LOCK TABLES `FilePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FilePermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypes`
--

DROP TABLE IF EXISTS `FilePermissionFileTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypes`
--

LOCK TABLES `FilePermissionFileTypes` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSearchIndexAttributes`
--

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

LOCK TABLES `FileSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `FileSearchIndexAttributes` VALUES (1,0.0000,0.0000,0.0000),(2,199.0000,300.0000,0.0000),(3,550.0000,711.0000,0.0000);
/*!40000 ALTER TABLE `FileSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetFiles`
--

DROP TABLE IF EXISTS `FileSetFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetFiles`
--

LOCK TABLES `FileSetFiles` WRITE;
/*!40000 ALTER TABLE `FileSetFiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetFiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionAssignments`
--

DROP TABLE IF EXISTS `FileSetPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionAssignments`
--

LOCK TABLES `FileSetPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionAssignments` DISABLE KEYS */;
INSERT INTO `FileSetPermissionAssignments` VALUES (0,44,35),(0,45,36),(0,46,37),(0,47,38),(0,48,39),(0,49,40),(0,50,42),(0,51,41),(0,52,43);
/*!40000 ALTER TABLE `FileSetPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessList`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessList`
--

LOCK TABLES `FileSetPermissionFileTypeAccessList` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessListCustom`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessListCustom`
--

LOCK TABLES `FileSetPermissionFileTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetSavedSearches`
--

DROP TABLE IF EXISTS `FileSetSavedSearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetSavedSearches`
--

LOCK TABLES `FileSetSavedSearches` WRITE;
/*!40000 ALTER TABLE `FileSetSavedSearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetSavedSearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSets`
--

DROP TABLE IF EXISTS `FileSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSets`
--

LOCK TABLES `FileSets` WRITE;
/*!40000 ALTER TABLE `FileSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocations`
--

DROP TABLE IF EXISTS `FileStorageLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocations`
--

LOCK TABLES `FileStorageLocations` WRITE;
/*!40000 ALTER TABLE `FileStorageLocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileStorageLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersionLog`
--

DROP TABLE IF EXISTS `FileVersionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersionLog`
--

LOCK TABLES `FileVersionLog` WRITE;
/*!40000 ALTER TABLE `FileVersionLog` DISABLE KEYS */;
INSERT INTO `FileVersionLog` VALUES (1,2,1,5,12),(2,2,1,5,13),(3,3,1,5,12),(4,3,1,5,13),(5,3,1,5,12),(6,3,1,5,13);
/*!40000 ALTER TABLE `FileVersionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersions`
--

DROP TABLE IF EXISTS `FileVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersions`
--

LOCK TABLES `FileVersions` WRITE;
/*!40000 ALTER TABLE `FileVersions` DISABLE KEYS */;
INSERT INTO `FileVersions` VALUES (1,1,'favicon.ico','871405157717',0,11046,'favicon.ico','','',1,'2014-07-12 11:35:17',1,1,'2014-07-12 11:35:17',0,0,0,'ico',1),(2,1,'alexandra-voyance-telephone-la-cote-des-annonces-prediction-avenir-amour-travail-argent-esoterisme-carte-tarot-mademoiselle-lenormand-marseille-199x300.jpg','961405354706',1,17094,'alexandra-voyance-telephone-la-cote-des-annonces-prediction-avenir-amour-travail-argent-esoterisme-carte-tarot-mademoiselle-lenormand-marseille-199x300.jpg','','',1,'2014-07-14 18:18:26',1,1,'2014-07-14 18:18:26',1,1,0,'jpg',1),(3,1,'science-paranormal-voyance-esoterisme-carte-rune-tarot-marseille-pendule-ancien-voyant-voyante-air-feu-eau-argent-alexndra-ideal-belgique-france-audiotel-tremois-1962.jpg','731405354817',1,96540,'science-paranormal-voyance-esoterisme-carte-rune-tarot-marseille-pendule-ancien-voyant-voyante-air-feu-eau-argent-alexndra-ideal-belgique-france-audiotel-tremois-1962.jpg','','',1,'2014-07-14 18:20:17',1,1,'2014-07-14 18:20:17',1,1,0,'jpg',1);
/*!40000 ALTER TABLE `FileVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
INSERT INTO `Files` VALUES (1,'2014-07-12 11:35:17',1,0,0,0,NULL),(2,'2014-07-14 18:18:26',1,0,1,0,NULL),(3,'2014-07-14 18:20:17',1,0,1,0,NULL);
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSetGroups`
--

DROP TABLE IF EXISTS `GroupSetGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSetGroups`
--

LOCK TABLES `GroupSetGroups` WRITE;
/*!40000 ALTER TABLE `GroupSetGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSetGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSets`
--

DROP TABLE IF EXISTS `GroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSets`
--

LOCK TABLES `GroupSets` WRITE;
/*!40000 ALTER TABLE `GroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL),(3,'Administrators','',0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSetJobs`
--

DROP TABLE IF EXISTS `JobSetJobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSetJobs`
--

LOCK TABLES `JobSetJobs` WRITE;
/*!40000 ALTER TABLE `JobSetJobs` DISABLE KEYS */;
INSERT INTO `JobSetJobs` VALUES (1,1,0),(1,3,0),(1,4,0),(1,5,0);
/*!40000 ALTER TABLE `JobSetJobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSets`
--

DROP TABLE IF EXISTS `JobSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSets`
--

LOCK TABLES `JobSets` WRITE;
/*!40000 ALTER TABLE `JobSets` DISABLE KEYS */;
INSERT INTO `JobSets` VALUES (1,'Default',0,NULL,0,'days',0);
/*!40000 ALTER TABLE `JobSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES (1,'Index Search Engine - Updates','Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.','2014-07-12 11:16:58',NULL,0,NULL,0,'ENABLED','index_search',1,0,'days',0),(2,'Index Search Engine - All','Empties the page search index and reindexes all pages.','2014-07-12 11:16:58',NULL,0,NULL,0,'ENABLED','index_search_all',1,0,'days',0),(3,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2014-07-12 11:16:58',NULL,0,NULL,0,'ENABLED','generate_sitemap',0,0,'days',0),(4,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2014-07-12 11:16:58',NULL,0,NULL,0,'ENABLED','process_email',0,0,'days',0),(5,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2014-07-12 11:16:58',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0,0,'days',0);
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobsLog`
--

DROP TABLE IF EXISTS `JobsLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobsLog`
--

LOCK TABLES `JobsLog` WRITE;
/*!40000 ALTER TABLE `JobsLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobsLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutPresets`
--

DROP TABLE IF EXISTS `LayoutPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutPresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutPresets`
--

LOCK TABLES `LayoutPresets` WRITE;
/*!40000 ALTER TABLE `LayoutPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Layouts`
--

DROP TABLE IF EXISTS `Layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layouts`
--

LOCK TABLES `Layouts` WRITE;
/*!40000 ALTER TABLE `Layouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logs`
--

LOCK TABLES `Logs` WRITE;
/*!40000 ALTER TABLE `Logs` DISABLE KEYS */;
INSERT INTO `Logs` VALUES (1,'exceptions','2014-07-12 10:29:19','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(2,'exceptions','2014-07-12 10:29:41','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(3,'exceptions','2014-07-12 10:29:51','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(4,'exceptions','2014-07-12 10:29:56','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(5,'exceptions','2014-07-12 10:30:03','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(6,'exceptions','2014-07-12 10:30:14','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(7,'exceptions','2014-07-12 10:30:18','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(8,'exceptions','2014-07-12 10:30:25','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(9,'exceptions','2014-07-12 10:30:26','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(10,'exceptions','2014-07-12 10:30:31','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(11,'exceptions','2014-07-12 10:30:33','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(12,'exceptions','2014-07-12 10:30:35','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(13,'exceptions','2014-07-12 10:30:37','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(14,'exceptions','2014-07-12 10:30:39','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(15,'exceptions','2014-07-12 10:30:41','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(16,'exceptions','2014-07-12 10:30:43','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(17,'exceptions','2014-07-12 10:30:45','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(18,'exceptions','2014-07-12 10:30:47','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(19,'exceptions','2014-07-12 10:30:49','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(20,'exceptions','2014-07-12 10:30:51','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(21,'exceptions','2014-07-12 10:30:53','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(22,'exceptions','2014-07-12 10:30:55','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(23,'exceptions','2014-07-12 10:30:57','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(24,'exceptions','2014-07-12 10:30:59','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(25,'exceptions','2014-07-12 10:31:01','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(26,'exceptions','2014-07-12 10:31:03','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(27,'exceptions','2014-07-12 10:31:05','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(28,'exceptions','2014-07-12 10:31:07','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(29,'exceptions','2014-07-12 10:31:09','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(30,'exceptions','2014-07-12 10:31:11','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(31,'exceptions','2014-07-12 10:31:13','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(32,'exceptions','2014-07-12 10:31:14','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(33,'exceptions','2014-07-12 10:31:16','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(34,'exceptions','2014-07-12 10:31:16','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(35,'exceptions','2014-07-12 10:31:20','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(36,'exceptions','2014-07-12 10:31:21','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(37,'exceptions','2014-07-12 10:31:38','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(38,'exceptions','2014-07-12 10:31:41','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(39,'exceptions','2014-07-12 10:31:44','Une exception est survenue:/opt/lampp/htdocs/asv/be/top/concrete/core/libraries/view.php:981 Fichier /opt/lampp/htdocs/asv/be/top/packages/theme_long_story_short/themes/long_story_short/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /opt/lampp/htdocs/asv/be/top/concrete/dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /opt/lampp/htdocs/asv/be/top/index.php(3): require(\'/opt/lampp/htdo...\')\n#2 {main}\n',1,1),(40,'sent_emails','2014-07-15 14:53:16','**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: block_form_submission\n&Agrave;: grcote7@gmail.com\nDe: GrCOTE7@GMail.com\nR&eacute;pondre &agrave;: GrCOTE7@GMail.com\nSujet: Soumission du formulaire Devenez Conseiller \nCorps: \nUne soumission du formulaire Devenez Conseiller a &eacute;t&eacute; effectu&eacute;e sur votre site web Concrete5.\n\nNom\r\ncote\r\n\r\nPr&eacute;nom\r\nLionel\r\n\r\nEmail\r\ngrcote7@gmail.com\r\n\r\n\n\nPour voir l\'int&eacute;gralit&eacute; de cet envoi, visitez http://l/asv/be/top/index.php/dashboard/reports/forms/?qsid=1405435713 \n\n\n',1,1),(41,'exceptions','2014-07-15 16:04:45','Une exception est survenue:/home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb-exceptions.inc.php:78 mysqlt error: [1146: Table \'wwwsubb_top.Packages\' doesn\'t exist] in EXECUTE(&quot;select pkgID, pkgName, pkgIsInstalled, pkgDescription, pkgVersion, pkgHandle, pkgDateInstalled from Packages where pkgIsInstalled = 1 order by pkgID asc&quot;)\n (1146)\n\n#0 /home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb.inc.php(1074): adodb_throw(\'mysqlt\', \'EXECUTE\', 1146, \'Table \'wwwsubb_...\', \'select pkgID, p...\', false, Object(ADODB_mysqlt))\n#1 /home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb.inc.php(1030): ADOConnection-&gt;_Execute(\'select pkgID, p...\')\n#2 /home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb.inc.php(796): ADOConnection-&gt;Execute(\'select pkgID, p...\', Array)\n#3 /home/wwwsubb/public_html/top/concrete/core/models/package.php(66): ADOConnection-&gt;Query(\'select pkgID, p...\', Array)\n#4 /home/wwwsubb/public_html/top/concrete/startup/packages.php(3): Concrete5_Model_PackageList::get()\n#5 /home/wwwsubb/public_html/top/concrete/dispatcher.php(101): require(\'/home/wwwsubb/p...\')\n#6 /home/wwwsubb/public_html/top/index.php(3): require(\'/home/wwwsubb/p...\')\n#7 {main}\n',1,1),(42,'exceptions','2014-07-15 16:04:46','Une exception est survenue:/home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb-exceptions.inc.php:78 mysqlt error: [1146: Table \'wwwsubb_top.PermissionKeys\' doesn\'t exist] in EXECUTE(&quot;select pkID, pkName, pkDescription, pkHandle, pkCategoryHandle, pkCanTriggerWorkflow, pkHasCustomClass, PermissionKeys.pkCategoryID, pkCategoryHandle, PermissionKeys.pkgID from PermissionKeys inner join PermissionKeyCategories on PermissionKeyCategories.pkCategoryID = PermissionKeys.pkCategoryID&quot;)\n (1146)\n\n#0 /home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb.inc.php(1074): adodb_throw(\'mysqlt\', \'EXECUTE\', 1146, \'Table \'wwwsubb_...\', \'select pkID, pk...\', false, Object(ADODB_mysqlt))\n#1 /home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb.inc.php(1049): ADOConnection-&gt;_Execute(\'select pkID, pk...\', false)\n#2 /home/wwwsubb/public_html/top/concrete/core/models/permission/key.php(103): ADOConnection-&gt;Execute(\'select pkID, pk...\')\n#3 /home/wwwsubb/public_html/top/concrete/dispatcher.php(108): Concrete5_Model_PermissionKey::loadAll()\n#4 /home/wwwsubb/public_html/top/index.php(3): require(\'/home/wwwsubb/p...\')\n#5 {main}\n',1,1),(43,'exceptions','2014-07-15 16:04:48','Une exception est survenue:/home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb-exceptions.inc.php:78 mysqlt error: [1146: Table \'wwwsubb_top.PermissionKeys\' doesn\'t exist] in EXECUTE(&quot;select pkID, pkName, pkDescription, pkHandle, pkCategoryHandle, pkCanTriggerWorkflow, pkHasCustomClass, PermissionKeys.pkCategoryID, pkCategoryHandle, PermissionKeys.pkgID from PermissionKeys inner join PermissionKeyCategories on PermissionKeyCategories.pkCategoryID = PermissionKeys.pkCategoryID&quot;)\n (1146)\n\n#0 /home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb.inc.php(1074): adodb_throw(\'mysqlt\', \'EXECUTE\', 1146, \'Table \'wwwsubb_...\', \'select pkID, pk...\', false, Object(ADODB_mysqlt))\n#1 /home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb.inc.php(1049): ADOConnection-&gt;_Execute(\'select pkID, pk...\', false)\n#2 /home/wwwsubb/public_html/top/concrete/core/models/permission/key.php(103): ADOConnection-&gt;Execute(\'select pkID, pk...\')\n#3 /home/wwwsubb/public_html/top/concrete/dispatcher.php(108): Concrete5_Model_PermissionKey::loadAll()\n#4 /home/wwwsubb/public_html/top/index.php(3): require(\'/home/wwwsubb/p...\')\n#5 {main}\n',1,1),(44,'exceptions','2014-07-15 16:04:49','Une exception est survenue:/home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb-exceptions.inc.php:78 mysqlt error: [1146: Table \'wwwsubb_top.Users\' doesn\'t exist] in EXECUTE(&quot;select uID, uIsActive from Users where uID = \'1\' and uName = \'admin\'&quot;)\n (1146)\n\n#0 /home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb.inc.php(1074): adodb_throw(\'mysqlt\', \'EXECUTE\', 1146, \'Table \'wwwsubb_...\', \'select uID, uIs...\', false, Object(ADODB_mysqlt))\n#1 /home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb.inc.php(1030): ADOConnection-&gt;_Execute(\'select uID, uIs...\')\n#2 /home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb.inc.php(1643): ADOConnection-&gt;Execute(\'select uID, uIs...\', Array)\n#3 /home/wwwsubb/public_html/top/concrete/core/models/user.php(110): ADOConnection-&gt;GetRow(\'select uID, uIs...\', Array)\n#4 /home/wwwsubb/public_html/top/concrete/startup/user.php(10): Concrete5_Model_User-&gt;checkLogin()\n#5 /home/wwwsubb/public_html/top/concrete/dispatcher.php(149): require(\'/home/wwwsubb/p...\')\n#6 /home/wwwsubb/public_html/top/index.php(3): require(\'/home/wwwsubb/p...\')\n#7 {main}\n',1,1),(45,'exceptions','2014-07-15 16:04:51','Une exception est survenue:/home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb-exceptions.inc.php:78 mysqlt error: [1146: Table \'wwwsubb_top.Users\' doesn\'t exist] in EXECUTE(&quot;select uID, uIsActive from Users where uID = \'1\' and uName = \'admin\'&quot;)\n (1146)\n\n#0 /home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb.inc.php(1074): adodb_throw(\'mysqlt\', \'EXECUTE\', 1146, \'Table \'wwwsubb_...\', \'select uID, uIs...\', false, Object(ADODB_mysqlt))\n#1 /home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb.inc.php(1030): ADOConnection-&gt;_Execute(\'select uID, uIs...\')\n#2 /home/wwwsubb/public_html/top/concrete/libraries/3rdparty/adodb/adodb.inc.php(1643): ADOConnection-&gt;Execute(\'select uID, uIs...\', Array)\n#3 /home/wwwsubb/public_html/top/concrete/core/models/user.php(110): ADOConnection-&gt;GetRow(\'select uID, uIs...\', Array)\n#4 /home/wwwsubb/public_html/top/concrete/startup/user.php(10): Concrete5_Model_User-&gt;checkLogin()\n#5 /home/wwwsubb/public_html/top/concrete/dispatcher.php(149): require(\'/home/wwwsubb/p...\')\n#6 /home/wwwsubb/public_html/top/index.php(3): require(\'/home/wwwsubb/p...\')\n#7 {main}\n',1,1),(46,'sent_emails','2014-07-15 16:29:55','**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: block_form_submission\n&Agrave;: grcote7@gmail.com\nDe: GrCOTE7@GMail.com\nR&eacute;pondre &agrave;: GrCOTE7@GMail.com\nSujet: Soumission du formulaire Devenez Conseiller/&egrave;re \nCorps: \nUne soumission du formulaire Devenez Conseiller/&egrave;re a &eacute;t&eacute; effectu&eacute;e sur votre site web Concrete5.\n\nCivilit&eacute;\r\nMme.\r\n\r\nNom\r\nnnnn\r\n\r\nPr&eacute;nom\r\npppp\r\n\r\nEmail\r\neeee@ffff.com\r\n\r\nMessage\r\nmmmm\r\n\r\n\n\nPour voir l\'int&eacute;gralit&eacute; de cet envoi, visitez http://top.sublime-voyance.be/index.php/dashboard/reports/forms/?qsid=1405435713 \n\n\n',1,1),(47,'exceptions','2015-01-05 16:06:20','Une exception est survenue:/var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/core/libraries/view.php:981 Fichier /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/themes/sv/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/dispatcher.php(263): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/index.php(3): require(\'/var/sentora/ho...\')\n#2 {main}\n',NULL,1),(48,'exceptions','2015-01-05 16:09:27','Une exception est survenue:/var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/core/libraries/view.php:981 Fichier /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/themes/sv/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/dispatcher.php(263): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/index.php(3): require(\'/var/sentora/ho...\')\n#2 {main}\n',NULL,1),(49,'exceptions','2015-01-05 16:09:32','Une exception est survenue:/var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/core/libraries/view.php:981 Fichier /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/themes/sv/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/dispatcher.php(263): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/index.php(3): require(\'/var/sentora/ho...\')\n#2 {main}\n',NULL,1),(50,'exceptions','2015-01-05 16:09:39','Une exception est survenue:/var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/core/libraries/view.php:981 Fichier /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/themes/sv/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/dispatcher.php(263): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/index.php(3): require(\'/var/sentora/ho...\')\n#2 {main}\n',NULL,1),(51,'exceptions','2015-01-05 16:10:42','Une exception est survenue:/var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/core/libraries/view.php:981 Fichier /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/themes/sv/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/dispatcher.php(263): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/index.php(3): require(\'/var/sentora/ho...\')\n#2 {main}\n',NULL,1),(52,'exceptions','2015-01-05 16:10:50','Une exception est survenue:/var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/core/libraries/view.php:981 Fichier /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/themes/sv/default.php introuvable. Les th&egrave;mes doivent contenir les fichiers default.php et view.php. Consultez la documentation de concrete5 pour savoir comment cr&eacute;er ces fichiers. (0)\n\n#0 /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/concrete/dispatcher.php(263): Concrete5_Library_View-&gt;render(Object(Page))\n#1 /var/sentora/hostdata/wwwsubl/public_html/top_sublime-voyance_be/index.php(3): require(\'/var/sentora/ho...\')\n#2 {main}\n',NULL,1),(53,'sent_emails','2015-01-05 16:31:51','**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: block_form_submission\n&Agrave;: grcote7@gmail.com\nDe: GrCOTE7@GMail.com\nR&eacute;pondre &agrave;: GrCOTE7@GMail.com\nSujet: Soumission du formulaire Devenez Conseiller/&egrave;re \nCorps: \nUne soumission du formulaire Devenez Conseiller/&egrave;re a &eacute;t&eacute; effectu&eacute;e sur votre site web Concrete5.\n\nCivilit&eacute;\r\nMme.\r\n\r\nNom\r\nEssai\r\n\r\nPr&eacute;nom\r\nDeLionel\r\n\r\nEmail\r\nTestintForm@cote7.com\r\n\r\nN&deg; de T&eacute;l&eacute;phone\r\n0123456\r\n\r\nMessage\r\nessai depuis le site\r\n\r\n\n\nPour voir l\'int&eacute;gralit&eacute; de cet envoi, visitez http://top.sublime-voyance.be/index.php/dashboard/reports/forms/?qsid=1405435713 \n\n\n',1,1),(54,'sent_emails','2015-01-05 16:33:56','**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: block_form_submission\n&Agrave;: grcote7@gmail.com\nDe: GrCOTE7@GMail.com\nR&eacute;pondre &agrave;: GrCOTE7@GMail.com\nSujet: Soumission du formulaire Devenez Conseiller/&egrave;re \nCorps: \nUne soumission du formulaire Devenez Conseiller/&egrave;re a &eacute;t&eacute; effectu&eacute;e sur votre site web Concrete5.\n\nCivilit&eacute;\r\nMme.\r\n\r\nNom\r\nsdfsdfqsdf\r\n\r\nPr&eacute;nom\r\nsqdfqsdf5484\r\n\r\nEmail\r\nGrCOTE7@Gmail.com\r\n\r\nN&deg; de T&eacute;l&eacute;phone\r\n+33698624930\r\n\r\nMessage\r\n/sdqfsqdf fdsqqsdq9+5842789\r\n\r\n\n\nPour voir l\'int&eacute;gralit&eacute; de cet envoi, visitez http://top.sublime-voyance.be/index.php/dashboard/reports/forms/?qsid=1405435713 \n\n\n',NULL,1),(55,'sent_emails','2015-01-14 11:06:09','**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: block_form_submission\n&Agrave;: grcote7@gmail.com\nDe: GrCOTE7@GMail.com\nR&eacute;pondre &agrave;: GrCOTE7@GMail.com\nSujet: Soumission du formulaire Devenez Conseiller/&egrave;re \nCorps: \nUne soumission du formulaire Devenez Conseiller/&egrave;re a &eacute;t&eacute; effectu&eacute;e sur votre site web Concrete5.\n\nCivilit&eacute;\r\nMlle.\r\n\r\nNom\r\nxxxx\r\n\r\nPr&eacute;nom\r\nyyyy\r\n\r\nEmail\r\noooo@cote7.com\r\n\r\nN&deg; de T&eacute;l&eacute;phone\r\n0123456789\r\n\r\nMessage\r\nDDDDDD\r\n\r\n\n\nPour voir l\'int&eacute;gralit&eacute; de cet envoi, visitez http://top.sublime-voyance.be/index.php/dashboard/reports/forms/?qsid=1405435713 \n\n\n',1,1),(56,'Page Action','2015-02-28 12:34:12','Page &quot;Members&quot; at path &quot;/members&quot; deleted\n',1,0),(57,'sent_emails','2015-03-05 10:34:28','**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: forgot_password\n&Agrave;: GrCOTE7@GMail.com\nDe: &quot;Mot de passe oubli&eacute;&quot; &lt;GrCOTE7@GMail.com&gt;\nR&eacute;pondre &agrave;: \nSujet: Mot de passe oubli&eacute;\nCorps: \n\nadmin,\n\nVous avez demand&eacute; un nouveau mot de passe pour le site Sublime-Voyance \n\nVotre nom d\'utilisateur est: admin\n\nVous pouvez changer votre mot de passe &agrave; l\'adresse suivante:\n\nhttp://extop.sublime-voyance.be/index.php/login/change_password/2uSoN9DCAx1gSovSO8I73uBlak6pn3LzMnRSObqhVcrkM4xp3fmXeImP13WOWyQ7/\n\nMerci de votre visite!\n\n\n',NULL,1),(58,'sent_emails','2015-03-05 10:38:33','**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: forgot_password\n&Agrave;: GrCOTE7@GMail.com\nDe: &quot;Mot de passe oubli&eacute;&quot; &lt;GrCOTE7@GMail.com&gt;\nR&eacute;pondre &agrave;: \nSujet: Mot de passe oubli&eacute;\nCorps: \n\nadmin,\n\nVous avez demand&eacute; un nouveau mot de passe pour le site Sublime-Voyance \n\nVotre nom d\'utilisateur est: admin\n\nVous pouvez changer votre mot de passe &agrave; l\'adresse suivante:\n\nhttp://extop.sublime-voyance.be/index.php/login/change_password/fYs9UeNz0ROvqfFTnksAc3lmwi1eSVkN5kQoDhEkaI39LvE8RyAEMTjC0XCUluXB/\n\nMerci de votre visite!\n\n\n',NULL,1),(59,'sent_emails','2015-03-05 10:40:12','**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: forgot_password\n&Agrave;: GrCOTE7@GMail.com\nDe: &quot;Mot de passe oubli&eacute;&quot; &lt;GrCOTE7@GMail.com&gt;\nR&eacute;pondre &agrave;: \nSujet: Mot de passe oubli&eacute;\nCorps: \n\nadmin,\n\nVous avez demand&eacute; un nouveau mot de passe pour le site Sublime-Voyance \n\nVotre nom d\'utilisateur est: admin\n\nVous pouvez changer votre mot de passe &agrave; l\'adresse suivante:\n\nhttp://extop.sublime-voyance.be/index.php/login/change_password/W18rruXnVhWol264LySRwBcOawnZ5wDF0riwO8HUTgZF4QQAN1A1OZjtpLJ0Bo9P/\n\nMerci de votre visite!\n\n\n',NULL,1),(60,'sent_emails','2015-03-05 10:46:04','**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: forgot_password\n&Agrave;: GrCOTE7@GMail.com\nDe: &quot;Mot de passe oubli&eacute;&quot; &lt;GrCOTE7@GMail.com&gt;\nR&eacute;pondre &agrave;: \nSujet: Mot de passe oubli&eacute;\nCorps: \n\nadmin,\n\nVous avez demand&eacute; un nouveau mot de passe pour le site Sublime-Voyance \n\nVotre nom d\'utilisateur est: admin\n\nVous pouvez changer votre mot de passe &agrave; l\'adresse suivante:\n\nhttp://extop.sublime-voyance.be/index.php/login/change_password/v9UlFYBGAj3gCRg53XUTCJQGBIQfvPIm5QNksaC8Xq0tKtPHCkq5lUFErI0jAu9O/\n\nMerci de votre visite!\n\n\n',NULL,1),(61,'sent_emails','2015-03-31 12:12:50','**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: forgot_password\n&Agrave;: GrCOTE7@GMail.com\nDe: &quot;Mot de passe oubli&eacute;&quot; &lt;GrCOTE7@GMail.com&gt;\nR&eacute;pondre &agrave;: \nSujet: Mot de passe oubli&eacute;\nCorps: \n\nadmin,\n\nVous avez demand&eacute; un nouveau mot de passe pour le site Sublime-Voyance \n\nVotre nom d\'utilisateur est: admin\n\nVous pouvez changer votre mot de passe &agrave; l\'adresse suivante:\n\nhttp://extop.sublime-voyance.be/index.php/login/change_password/xOwwRLos0FppC3j4p1s3mJ0s3MC9U9R6rjVp3Y0bebn6Z8w3vi51cPD4B1VAOYze/\n\nMerci de votre visite!\n\n\n',NULL,1),(62,'sent_emails','2015-04-13 18:08:29','**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: forgot_password\n&Agrave;: GrCOTE7@GMail.com\nDe: &quot;Mot de passe oubli&eacute;&quot; &lt;GrCOTE7@GMail.com&gt;\nR&eacute;pondre &agrave;: \nSujet: Mot de passe oubli&eacute;\nCorps: \n\nadmin,\n\nVous avez demand&eacute; un nouveau mot de passe pour le site Sublime-Voyance \n\nVotre nom d\'utilisateur est: admin\n\nVous pouvez changer votre mot de passe &agrave; l\'adresse suivante:\n\nhttp://extop.sublime-voyance.be/index.php/login/change_password/UyJ0Ou6Q2iuZOvBMnNXTcLpCx0Aj1cx4jRByGsFf8pXLuu6DKM4nivZE233xD9CY/\n\nMerci de votre visite!\n\n\n',NULL,1),(63,'sent_emails','2015-04-27 10:35:53','**LES COURRIELS SONT ACTIV&Eacute;S. CE COURRIEL A &Eacute;T&Eacute; ENVOY&Eacute; &Agrave; mail()**\nMod&egrave;le utilis&eacute;: block_form_submission\n&Agrave;: grcote7@gmail.com\nDe: GrCOTE7@GMail.com\nR&eacute;pondre &agrave;: GrCOTE7@GMail.com\nSujet: Soumission du formulaire Devenez Conseiller/&egrave;re \nCorps: \nUne soumission du formulaire Devenez Conseiller/&egrave;re a &eacute;t&eacute; effectu&eacute;e sur votre site web Concrete5.\n\nCivilit&eacute;\r\nMme.\r\n\r\nNom\r\njeanne\r\n\r\nPr&eacute;nom\r\nvivane\r\n\r\nEmail\r\npioupiouone@msn.com\r\n\r\nN&deg; de T&eacute;l&eacute;phone\r\n+32477948707\r\n\r\nMessage\r\nCoucou je ne vois rien\r\n\r\n\n\nPour voir l\'int&eacute;gralit&eacute; de cet envoi, visitez http://extop.sublime-voyance.be/index.php/dashboard/reports/forms/?qsid=1405435713 \n\n\n',NULL,1);
/*!40000 ALTER TABLE `Logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailImporters`
--

DROP TABLE IF EXISTS `MailImporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailImporters`
--

LOCK TABLES `MailImporters` WRITE;
/*!40000 ALTER TABLE `MailImporters` DISABLE KEYS */;
INSERT INTO `MailImporters` VALUES (1,'private_message','',NULL,NULL,NULL,0,'',0,0,'POP');
/*!40000 ALTER TABLE `MailImporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailValidationHashes`
--

DROP TABLE IF EXISTS `MailValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailValidationHashes`
--

LOCK TABLES `MailValidationHashes` WRITE;
/*!40000 ALTER TABLE `MailValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MailValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Packages`
--

DROP TABLE IF EXISTS `Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Packages`
--

LOCK TABLES `Packages` WRITE;
/*!40000 ALTER TABLE `Packages` DISABLE KEYS */;
INSERT INTO `Packages` VALUES (1,'Bootswatch','theme_bootswatch','Bootstrap 2.3.2 - Responsive theme by Guillaume Agresta.','2014-07-12 11:40:01',1,'0.9.1','0.9.1'),(2,'Long Story Short','theme_long_story_short','Installs Long Story Short theme, a simple, basic theme for single-page websites and presentations','2014-07-12 12:21:14',1,'1.0.5','1.0.5'),(3,'Soul Mate','cannonf700_soul_mate','Soul Mate theme COPYRIGHT STYLISHTEMPLATE.COM Converted by www.rynomediaonline.com','2014-07-14 12:32:46',1,'1.02','1.02'),(4,'Amiant CSS3 Menu','amiant_css3_menu','Creates CSS3 navigation menu with drop-down submenus.','2014-07-15 15:56:38',1,'0.3','0.3'),(5,'Ajax Form','ajax_form','Adds ajax functionality to the built-in form block, so submitting a form does not reload the page (unless the form contains a file upload field).','2014-07-15 17:01:08',1,'1.3','1.3');
/*!40000 ALTER TABLE `Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePaths`
--

DROP TABLE IF EXISTS `PagePaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePaths`
--

LOCK TABLES `PagePaths` WRITE;
/*!40000 ALTER TABLE `PagePaths` DISABLE KEYS */;
INSERT INTO `PagePaths` VALUES (1,2,'/dashboard','1'),(2,3,'/dashboard/composer','1'),(3,4,'/dashboard/composer/write','1'),(4,5,'/dashboard/composer/drafts','1'),(5,6,'/dashboard/sitemap','1'),(6,7,'/dashboard/sitemap/full','1'),(7,8,'/dashboard/sitemap/explore','1'),(8,9,'/dashboard/sitemap/search','1'),(9,10,'/dashboard/files','1'),(10,11,'/dashboard/files/search','1'),(11,12,'/dashboard/files/attributes','1'),(12,13,'/dashboard/files/sets','1'),(13,14,'/dashboard/files/add_set','1'),(14,15,'/dashboard/users','1'),(15,16,'/dashboard/users/search','1'),(16,17,'/dashboard/users/groups','1'),(17,18,'/dashboard/users/attributes','1'),(18,19,'/dashboard/users/add','1'),(19,20,'/dashboard/users/add_group','1'),(20,21,'/dashboard/users/group_sets','1'),(21,22,'/dashboard/reports','1'),(22,23,'/dashboard/reports/statistics','1'),(23,24,'/dashboard/reports/forms','1'),(24,25,'/dashboard/reports/surveys','1'),(25,26,'/dashboard/reports/logs','1'),(26,27,'/dashboard/pages','1'),(27,28,'/dashboard/pages/themes','1'),(28,29,'/dashboard/pages/themes/add','1'),(29,30,'/dashboard/pages/themes/inspect','1'),(30,31,'/dashboard/pages/themes/customize','1'),(31,32,'/dashboard/pages/types','1'),(32,33,'/dashboard/pages/types/add','1'),(33,34,'/dashboard/pages/attributes','1'),(34,35,'/dashboard/pages/single','1'),(35,36,'/dashboard/workflow','1'),(36,37,'/dashboard/workflow/list','1'),(37,38,'/dashboard/workflow/me','1'),(38,39,'/dashboard/blocks','1'),(39,40,'/dashboard/blocks/stacks','1'),(40,41,'/dashboard/blocks/permissions','1'),(41,42,'/dashboard/blocks/stacks/list','1'),(42,43,'/dashboard/blocks/types','1'),(43,44,'/dashboard/extend','1'),(44,45,'/dashboard/news','1'),(45,46,'/dashboard/extend/install','1'),(46,47,'/dashboard/extend/update','1'),(47,48,'/dashboard/extend/connect','1'),(48,49,'/dashboard/extend/themes','1'),(49,50,'/dashboard/extend/add-ons','1'),(50,51,'/dashboard/system','1'),(51,52,'/dashboard/system/basics','1'),(52,53,'/dashboard/system/basics/site_name','1'),(53,54,'/dashboard/system/basics/icons','1'),(54,55,'/dashboard/system/basics/editor','1'),(55,56,'/dashboard/system/basics/multilingual','1'),(56,57,'/dashboard/system/basics/timezone','1'),(57,58,'/dashboard/system/basics/interface','1'),(58,59,'/dashboard/system/seo','1'),(59,60,'/dashboard/system/seo/urls','1'),(60,61,'/dashboard/system/seo/bulk_seo_tool','1'),(61,62,'/dashboard/system/seo/tracking_codes','1'),(62,63,'/dashboard/system/seo/excluded','1'),(63,64,'/dashboard/system/seo/statistics','1'),(64,65,'/dashboard/system/seo/search_index','1'),(65,66,'/dashboard/system/optimization','1'),(66,67,'/dashboard/system/optimization/cache','1'),(67,68,'/dashboard/system/optimization/clear_cache','1'),(68,69,'/dashboard/system/optimization/jobs','1'),(69,70,'/dashboard/system/permissions','1'),(70,71,'/dashboard/system/permissions/site','1'),(71,72,'/dashboard/system/permissions/files','1'),(72,73,'/dashboard/system/permissions/file_types','1'),(73,74,'/dashboard/system/permissions/tasks','1'),(74,75,'/dashboard/system/permissions/users','1'),(75,76,'/dashboard/system/permissions/advanced','1'),(76,77,'/dashboard/system/permissions/ip_blacklist','1'),(77,78,'/dashboard/system/permissions/captcha','1'),(78,79,'/dashboard/system/permissions/antispam','1'),(79,80,'/dashboard/system/permissions/maintenance_mode','1'),(80,81,'/dashboard/system/registration','1'),(81,82,'/dashboard/system/registration/postlogin','1'),(82,83,'/dashboard/system/registration/profiles','1'),(83,84,'/dashboard/system/registration/public_registration','1'),(84,85,'/dashboard/system/mail','1'),(85,86,'/dashboard/system/mail/method','1'),(86,87,'/dashboard/system/mail/method/test_settings','1'),(87,88,'/dashboard/system/mail/importers','1'),(88,89,'/dashboard/system/attributes','1'),(89,90,'/dashboard/system/attributes/sets','1'),(90,91,'/dashboard/system/attributes/types','1'),(91,92,'/dashboard/system/environment','1'),(92,93,'/dashboard/system/environment/info','1'),(93,94,'/dashboard/system/environment/debug','1'),(94,95,'/dashboard/system/environment/logging','1'),(95,96,'/dashboard/system/environment/file_storage_locations','1'),(96,97,'/dashboard/system/environment/proxy','1'),(97,98,'/dashboard/system/backup_restore','1'),(98,99,'/dashboard/system/backup_restore/backup','1'),(99,100,'/dashboard/system/backup_restore/update','1'),(100,101,'/dashboard/system/backup_restore/database','1'),(101,102,'/dashboard/pages/types/composer','1'),(102,106,'/dashboard/welcome','1'),(103,107,'/dashboard/home','1'),(104,108,'/!drafts','1'),(105,109,'/!trash','1'),(106,110,'/!stacks','1'),(107,111,'/login','1'),(108,112,'/register','1'),(109,113,'/profile','1'),(110,114,'/profile/edit','1'),(111,115,'/profile/avatar','1'),(112,116,'/profile/messages','1'),(113,117,'/profile/friends','1'),(114,118,'/page_not_found','1'),(115,119,'/page_forbidden','1'),(116,120,'/download_file','1'),(118,123,'/dashboard/pages/template_theme','1'),(142,129,'/nos-conseiller','1'),(140,129,'/nos-conseilleres','0'),(127,130,'/devenez-conseiller','1'),(129,129,'/nos-conseillers','0'),(139,130,'/devenez-conseillere','0');
/*!40000 ALTER TABLE `PagePaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionAssignments`
--

DROP TABLE IF EXISTS `PagePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionAssignments`
--

LOCK TABLES `PagePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PagePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PagePermissionAssignments` VALUES (1,1,53),(1,2,54),(1,3,55),(1,4,56),(1,5,57),(1,6,58),(1,7,59),(1,8,60),(1,9,61),(1,10,62),(1,11,63),(1,12,64),(1,13,65),(1,14,66),(1,15,67),(1,16,68),(2,1,19),(2,2,21),(2,3,20),(2,4,26),(2,5,22),(2,6,23),(2,7,28),(2,8,30),(2,9,32),(2,10,29),(2,11,33),(2,12,34),(2,13,24),(2,14,27),(2,15,25),(2,16,31),(42,1,35),(42,3,36),(111,1,39),(111,3,40),(112,1,41),(112,3,42);
/*!40000 ALTER TABLE `PagePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessList`
--

LOCK TABLES `PagePermissionPageTypeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessListCustom`
--

LOCK TABLES `PagePermissionPageTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAccessList`
--

LOCK TABLES `PagePermissionPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAttributeAccessListCustom`
--

LOCK TABLES `PagePermissionPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessList`
--

LOCK TABLES `PagePermissionThemeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessListCustom`
--

LOCK TABLES `PagePermissionThemeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageSearchIndex`
--

DROP TABLE IF EXISTS `PageSearchIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageSearchIndex`
--

LOCK TABLES `PageSearchIndex` WRITE;
/*!40000 ALTER TABLE `PageSearchIndex` DISABLE KEYS */;
INSERT INTO `PageSearchIndex` VALUES (3,'','Composer','Write for your site.','/dashboard/composer','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(4,'','Write','','/dashboard/composer/write','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(5,'','Drafts','','/dashboard/composer/drafts','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(6,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(7,'','Full Sitemap','','/dashboard/sitemap/full','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(8,'','Flat View','','/dashboard/sitemap/explore','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(9,'','Page Search','','/dashboard/sitemap/search','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(11,'','File Manager','','/dashboard/files/search','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(12,'','Attributes','','/dashboard/files/attributes','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(13,'','File Sets','','/dashboard/files/sets','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(14,'','Add File Set','','/dashboard/files/add_set','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(15,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(16,'','Search Users','','/dashboard/users/search','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(17,'','User Groups','','/dashboard/users/groups','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(18,'','Attributes','','/dashboard/users/attributes','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(19,'','Add User','','/dashboard/users/add','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(20,'','Add Group','','/dashboard/users/add_group','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(21,'','Group Sets','','/dashboard/users/group_sets','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(22,'','Reports','Get data from forms and logs.','/dashboard/reports','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(23,'','Statistics','View your site activity.','/dashboard/reports/statistics','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(24,'','Form Results','Get submission data.','/dashboard/reports/forms','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(25,'','Surveys','','/dashboard/reports/surveys','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(26,'','Logs','','/dashboard/reports/logs','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(28,'','Themes','Reskin your site.','/dashboard/pages/themes','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(29,'','Add','','/dashboard/pages/themes/add','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(30,'','Inspect','','/dashboard/pages/themes/inspect','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(31,'','Customize','','/dashboard/pages/themes/customize','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(32,'','Page Types','What goes in your site.','/dashboard/pages/types','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(34,'','Attributes','','/dashboard/pages/attributes','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(35,'','Single Pages','','/dashboard/pages/single','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(36,'','Workflow','','/dashboard/workflow','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(37,'','Workflow List','','/dashboard/workflow/list','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(38,'','Waiting for Me','','/dashboard/workflow/me','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(40,'','Stacks','Share content across your site.','/dashboard/blocks/stacks','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(41,'','Block & Stack Permissions','Control who can add blocks and stacks on your site.','/dashboard/blocks/permissions','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(42,'','Stack List','','/dashboard/blocks/stacks/list','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(43,'','Block Types','Manage the installed block types in your site.','/dashboard/blocks/types','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(44,'','Extend concrete5','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','/dashboard/extend','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(45,'','Dashboard','','/dashboard/news','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(46,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(47,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(48,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(49,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(50,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/add-ons','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(51,'','System & Settings','Secure and setup your site.','/dashboard/system','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(53,'','Site Name','','/dashboard/system/basics/site_name','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(54,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(55,'','Rich Text Editor','','/dashboard/system/basics/editor','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(56,'','Languages','','/dashboard/system/basics/multilingual','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(57,'','Time Zone','','/dashboard/system/basics/timezone','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(58,'','Interface Preferences','','/dashboard/system/basics/interface','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(60,'','Pretty URLs','','/dashboard/system/seo/urls','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(61,'','Bulk SEO Updater','','/dashboard/system/seo/bulk_seo_tool','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(62,'','Tracking Codes','','/dashboard/system/seo/tracking_codes','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(63,'','Excluded URL Word List','','/dashboard/system/seo/excluded','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(64,'','Statistics','','/dashboard/system/seo/statistics','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(65,'','Search Index','','/dashboard/system/seo/search_index','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(67,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(68,'','Clear Cache','','/dashboard/system/optimization/clear_cache','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(69,'','Automated Jobs','','/dashboard/system/optimization/jobs','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(71,'','Site Access','','/dashboard/system/permissions/site','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(72,'','File Manager Permissions','','/dashboard/system/permissions/files','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(73,'','Allowed File Types','','/dashboard/system/permissions/file_types','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(74,'','Task Permissions','','/dashboard/system/permissions/tasks','2014-07-12 11:16:58','2014-07-12 11:16:59',NULL,0),(77,'','IP Blacklist','','/dashboard/system/permissions/ip_blacklist','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(78,'','Captcha Setup','','/dashboard/system/permissions/captcha','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(79,'','Spam Control','','/dashboard/system/permissions/antispam','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(80,'','Maintenance Mode','','/dashboard/system/permissions/maintenance_mode','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(82,'','Login Destination','','/dashboard/system/registration/postlogin','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(83,'','Public Profiles','','/dashboard/system/registration/profiles','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(84,'','Public Registration','','/dashboard/system/registration/public_registration','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(85,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(86,'','SMTP Method','','/dashboard/system/mail/method','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(87,'','Test Mail Settings','','/dashboard/system/mail/method/test_settings','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(88,'','Email Importers','','/dashboard/system/mail/importers','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(89,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(90,'','Sets','Group attributes into sets for easier organization','/dashboard/system/attributes/sets','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(91,'','Types','Choose which attribute types are available for different items.','/dashboard/system/attributes/types','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(93,'','Environment Information','','/dashboard/system/environment/info','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(94,'','Debug Settings','','/dashboard/system/environment/debug','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(95,'','Logging Settings','','/dashboard/system/environment/logging','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(96,'','File Storage Locations','','/dashboard/system/environment/file_storage_locations','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(97,'','Proxy Server','','/dashboard/system/environment/proxy','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(98,'','Backup & Restore','Backup or restore your website.','/dashboard/system/backup_restore','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(100,'','Update concrete5','','/dashboard/system/backup_restore/update','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(101,'','Database XML','','/dashboard/system/backup_restore/database','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(106,'	Welcome to concrete5.\n						It\'s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor\'s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer\'s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer\'s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive\'s Guide \n						  ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(107,'','Customize Dashboard Home','','/dashboard/home','2014-07-12 11:16:59','2014-07-12 11:16:59',NULL,0),(1,' Right Détail   Right   Center Bottom   Center Détail   Center   Left   Contenu Left  \r\n\r\n.presentationAlexandra{\r\n  display: block;\r\n  background-image: url(\"img/fond.png\");\r\n  font-family: \"Comic Sans Ms\";\r\n  font-size: 16px;\r\n  position: relative;\r\n  background-color: white;\r\n  letter-spacing: 0.1em;\r\n  color:black;\r\n  margin: 10px auto;\r\n  padding: 10px 20px;\r\n  opacity: 1;\r\n  width: 700px;\r\n  height: 450px;\r\n  border-radius: 20px;\r\n}\r\n.presentationAlexandra a{\r\n  text-decoration: none;\r\ncolor:purple;\r\ntext-align:justify;\r\n}\r\n\r\np {\r\nmargin:5px 0;\r\n}\r\n\r\n.photoAlexandra{\r\n  float: left;\r\n  display: inline-block;\r\n  width:200px;\r\n  height: 300px;\r\n  margin: 10px 10px 20px 0px;\r\n  border: 10px orange groove;\r\n  border-radius: 20px;\r\n}\r\n\r\n.laius a p{\r\n  margin-top: 10px;\r\n  padding: 0;\r\n  margin-left: 230px;\r\n  line-height: 1.4;\r\n  font-style: italic;\r\n}\r\n.laius .lettrine a p{\r\n  /*border:1px solid red;*/\r\n  margin: 10px 0;\r\n}\r\n\r\n.laius .lettrine p:first-letter {\r\n  display: inline;\r\n  margin-top: -10px;\r\n  margin-left: 100px;\r\n  font-family: trebuchet MS;\r\n  font-size:80px;\r\n  color:#0000fe;\r\n  width:55px;\r\n  float:left;\r\n}\r\n.laius .lettrine p:first-of-type{\r\n  display: inline-block;\r\n  color: #42326c;\r\n  font-size: 30px;\r\n  line-height: 1.2;\r\n  margin-top: 10px;\r\n  font-style: normal;\r\n}\r\n\r\n.numTel{\r\n  display: inline-block;\r\n  width: 100%;\r\n  font-size: 12px;\r\n  /*border:1px solid red;*/\r\n  line-height: 1;\r\n  vertical-align: middle;\r\n  /*margin: 5px 10px;*/\r\n}\r\n\r\n.boutonTel{\r\n  position: relative;\r\n  display: inline-block;\r\n  background-color: #00f;\r\n  border-radius: 20px;\r\n  width: 320px;\r\n  height: 70px;\r\n  vertical-align: middle;\r\n  border: 5px groove orange;\r\n  background: linear-gradient( #000, #2C2C2C, #777);\r\n  margin: 5px 3px;\r\n}\r\n.boutonTel img{\r\n  display: inline-block;\r\n  position: relative;\r\n  border:1px solid red;\r\n  /*float:left;*/\r\n  margin: 7px 0 7px 10px;\r\n  padding: 0;\r\n  border-radius: 7px;\r\n  border:1px solid yellow;\r\n}\r\n.boutonTel p{\r\n  position: relative;\r\n  display: inline-block;\r\n  color:gold;\r\n  width: 72%;\r\n    /*font-family: arial;*/\r\n  letter-spacing: 3px;\r\n  font-weight: bold;\r\n  margin: 0 auto;\r\n  padding: 0;\r\n  font-size: 24px;\r\n  /*border:1px solid greenyellow;*/\r\n  margin-left: 5px;\r\n  top: 5px;\r\n  text-align: center;\r\n  vertical-align: top;\r\n  line-height: 1.3;\r\n}\r\n.boutonTel .prix{\r\n  position: relative;\r\n  display: block;\r\n  margin: 0;\r\n  padding: 0;\r\n  font-style: italic;\r\n  top:5px;\r\n  font-size: 12px;\r\n  text-align: right;\r\n}\r\n\r\n\r\n\r\n\r\n\r\n        \r\n          \r\n\r\n          \r\n            \r\n               Aloâ, je suis lexandra. \r\n             \r\n\r\n            \r\n               Mes grands-mères tant paternelles que maternelles possédaient un don de voyance... \r\n               Après plusieurs années de réflexion, j’ai décidé de vous faire bénéficier de ce don qu\'ils m\'ont transmis et ainsi apporter des réponses claires à vos questions... (En savoir plus...) \r\n               Profitez d\'une réponse GRATUITE à la question de VOTRE choix ! \r\n               À très bientôt… \r\n             \r\n           \r\n          \r\n\r\n            \r\n              \r\n               0907-88-371(Belgique - 1,50€/min) \r\n             \r\n            \r\n              \r\n               901-470-28(Luxembourg 1,15€/min) \r\n             \r\n\r\n            \r\n\r\n           \r\n        \r\n        ','Home','',NULL,'2014-07-12 11:16:53','2015-03-31 14:17:03',NULL,0),(123,'','Template Theme',NULL,'/dashboard/pages/template_theme','2014-07-12 11:40:02','2014-07-12 11:40:02',NULL,0),(129,' ...  ','Nos conseiller(e)s','Page dédiées aux conseillers','/nos-conseiller','1970-01-01 16:23:00','2015-01-14 11:54:29',NULL,0),(130,'Dévenez-vous aussi conseiller/ère.\n\nLaissez-nous ci-dessous quelques lignes, nous vous recontacterons dans quelques jours...  ','Devenez Conseiller(e)','Page de candidature','/devenez-conseiller','1970-01-01 16:25:00','2014-07-15 19:09:37',NULL,0),(131,'','',NULL,NULL,'2014-07-15 16:26:56','2014-07-15 16:28:15',NULL,0);
/*!40000 ALTER TABLE `PageSearchIndex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageStatistics`
--

DROP TABLE IF EXISTS `PageStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageStatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM AUTO_INCREMENT=3535 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageStatistics`
--

LOCK TABLES `PageStatistics` WRITE;
/*!40000 ALTER TABLE `PageStatistics` DISABLE KEYS */;
INSERT INTO `PageStatistics` VALUES (1,1,'2014-07-12','2014-07-12 09:17:11',1),(2,106,'2014-07-12','2014-07-12 09:17:13',1),(3,111,'2014-07-12','2014-07-12 09:17:22',1),(4,1,'2014-07-12','2014-07-12 09:17:22',0),(5,111,'2014-07-12','2014-07-12 09:17:33',0),(6,111,'2014-07-12','2014-07-12 09:17:42',0),(7,1,'2014-07-12','2014-07-12 09:17:42',1),(8,1,'2014-07-12','2014-07-12 09:17:47',1),(9,1,'2014-07-12','2014-07-12 09:19:29',1),(10,1,'2014-07-12','2014-07-12 09:19:51',1),(11,1,'2014-07-12','2014-07-12 09:20:12',1),(12,1,'2014-07-12','2014-07-12 09:20:20',1),(13,1,'2014-07-12','2014-07-12 09:20:44',1),(14,1,'2014-07-12','2014-07-12 09:21:12',1),(15,1,'2014-07-12','2014-07-12 09:21:40',1),(16,1,'2014-07-12','2014-07-12 09:22:20',1),(17,1,'2014-07-12','2014-07-12 09:23:00',1),(18,1,'2014-07-12','2014-07-12 09:23:40',1),(19,1,'2014-07-12','2014-07-12 09:24:21',1),(20,1,'2014-07-12','2014-07-12 09:25:01',1),(21,1,'2014-07-12','2014-07-12 09:25:41',1),(22,1,'2014-07-12','2014-07-12 09:26:21',1),(23,1,'2014-07-12','2014-07-12 09:27:01',1),(24,1,'2014-07-12','2014-07-12 09:27:35',1),(25,1,'2014-07-12','2014-07-12 09:28:15',1),(26,1,'2014-07-12','2014-07-12 09:28:55',1),(27,1,'2014-07-12','2014-07-12 09:29:35',1),(28,1,'2014-07-12','2014-07-12 09:30:15',1),(29,1,'2014-07-12','2014-07-12 09:30:55',1),(30,1,'2014-07-12','2014-07-12 09:31:35',1),(31,1,'2014-07-12','2014-07-12 09:32:14',1),(32,1,'2014-07-12','2014-07-12 09:32:55',1),(33,1,'2014-07-12','2014-07-12 09:33:42',1),(34,2,'2014-07-12','2014-07-12 09:33:54',1),(35,51,'2014-07-12','2014-07-12 09:34:08',1),(36,55,'2014-07-12','2014-07-12 09:34:19',1),(37,55,'2014-07-12','2014-07-12 09:34:28',1),(38,55,'2014-07-12','2014-07-12 09:34:28',1),(39,54,'2014-07-12','2014-07-12 09:34:39',1),(40,54,'2014-07-12','2014-07-12 09:35:17',1),(41,54,'2014-07-12','2014-07-12 09:35:17',1),(42,1,'2014-07-12','2014-07-12 09:35:35',1),(43,2,'2014-07-12','2014-07-12 09:37:42',1),(44,28,'2014-07-12','2014-07-12 09:37:50',1),(45,49,'2014-07-12','2014-07-12 09:37:57',1),(46,48,'2014-07-12','2014-07-12 09:37:57',1),(47,48,'2014-07-12','2014-07-12 09:38:27',1),(48,48,'2014-07-12','2014-07-12 09:38:27',1),(49,49,'2014-07-12','2014-07-12 09:38:38',1),(50,49,'2014-07-12','2014-07-12 09:39:24',1),(51,46,'2014-07-12','2014-07-12 09:40:05',1),(52,46,'2014-07-12','2014-07-12 09:40:17',1),(53,46,'2014-07-12','2014-07-12 09:40:26',1),(54,28,'2014-07-12','2014-07-12 09:40:33',1),(55,28,'2014-07-12','2014-07-12 09:40:39',1),(56,28,'2014-07-12','2014-07-12 09:40:42',1),(57,1,'2014-07-12','2014-07-12 09:40:46',1),(58,1,'2014-07-12','2014-07-12 09:40:53',1),(59,1,'2014-07-12','2014-07-12 09:41:02',1),(60,2,'2014-07-12','2014-07-12 09:41:05',1),(61,32,'2014-07-12','2014-07-12 09:41:08',1),(62,102,'2014-07-12','2014-07-12 09:41:14',1),(63,102,'2014-07-12','2014-07-12 09:41:29',1),(64,102,'2014-07-12','2014-07-12 09:41:29',1),(65,32,'2014-07-12','2014-07-12 09:41:37',1),(66,32,'2014-07-12','2014-07-12 09:41:40',1),(67,122,'2014-07-12','2014-07-12 09:41:40',1),(68,32,'2014-07-12','2014-07-12 09:41:51',1),(69,32,'2014-07-12','2014-07-12 09:41:54',1),(70,32,'2014-07-12','2014-07-12 09:42:09',1),(71,32,'2014-07-12','2014-07-12 09:42:09',1),(72,123,'2014-07-12','2014-07-12 09:42:21',1),(73,123,'2014-07-12','2014-07-12 09:42:31',1),(74,1,'2014-07-12','2014-07-12 09:42:36',1),(75,1,'2014-07-12','2014-07-12 09:42:41',1),(76,1,'2014-07-12','2014-07-12 09:43:01',1),(77,1,'2014-07-12','2014-07-12 09:43:08',1),(78,1,'2014-07-12','2014-07-12 09:43:13',1),(79,49,'2014-07-12','2014-07-12 09:44:10',1),(80,49,'2014-07-12','2014-07-12 09:44:19',1),(81,49,'2014-07-12','2014-07-12 09:44:45',1),(82,49,'2014-07-12','2014-07-12 09:45:27',1),(83,49,'2014-07-12','2014-07-12 09:47:01',1),(84,49,'2014-07-12','2014-07-12 09:47:20',1),(85,49,'2014-07-12','2014-07-12 09:47:48',1),(86,49,'2014-07-12','2014-07-12 09:48:12',1),(87,49,'2014-07-12','2014-07-12 10:20:40',1),(88,46,'2014-07-12','2014-07-12 10:21:16',1),(89,47,'2014-07-12','2014-07-12 10:21:28',1),(90,2,'2014-07-12','2014-07-12 10:21:41',1),(91,28,'2014-07-12','2014-07-12 10:21:44',1),(92,28,'2014-07-12','2014-07-12 10:21:49',1),(93,28,'2014-07-12','2014-07-12 10:21:51',1),(94,1,'2014-07-12','2014-07-12 10:21:54',1),(95,1,'2014-07-12','2014-07-12 10:21:59',1),(96,1,'2014-07-12','2014-07-12 10:22:04',1),(97,1,'2014-07-12','2014-07-12 10:22:07',1),(98,1,'2014-07-12','2014-07-12 10:22:30',1),(99,1,'2014-07-12','2014-07-12 10:22:33',1),(100,1,'2014-07-12','2014-07-12 10:22:34',1),(101,1,'2014-07-12','2014-07-12 10:22:40',1),(102,1,'2014-07-12','2014-07-12 10:29:19',1),(103,1,'2014-07-12','2014-07-12 10:29:41',1),(104,1,'2014-07-12','2014-07-12 10:29:51',1),(105,1,'2014-07-12','2014-07-12 10:29:56',1),(106,1,'2014-07-12','2014-07-12 10:30:03',1),(107,1,'2014-07-12','2014-07-12 10:30:14',1),(108,1,'2014-07-12','2014-07-12 10:30:18',1),(109,1,'2014-07-12','2014-07-12 10:30:25',1),(110,1,'2014-07-12','2014-07-12 10:30:26',1),(111,1,'2014-07-12','2014-07-12 10:30:31',1),(112,1,'2014-07-12','2014-07-12 10:30:33',1),(113,1,'2014-07-12','2014-07-12 10:30:35',1),(114,1,'2014-07-12','2014-07-12 10:30:37',1),(115,1,'2014-07-12','2014-07-12 10:30:39',1),(116,1,'2014-07-12','2014-07-12 10:30:41',1),(117,1,'2014-07-12','2014-07-12 10:30:43',1),(118,1,'2014-07-12','2014-07-12 10:30:45',1),(119,1,'2014-07-12','2014-07-12 10:30:47',1),(120,1,'2014-07-12','2014-07-12 10:30:49',1),(121,1,'2014-07-12','2014-07-12 10:30:51',1),(122,1,'2014-07-12','2014-07-12 10:30:53',1),(123,1,'2014-07-12','2014-07-12 10:30:55',1),(124,1,'2014-07-12','2014-07-12 10:30:57',1),(125,1,'2014-07-12','2014-07-12 10:30:59',1),(126,1,'2014-07-12','2014-07-12 10:31:01',1),(127,1,'2014-07-12','2014-07-12 10:31:03',1),(128,1,'2014-07-12','2014-07-12 10:31:05',1),(129,1,'2014-07-12','2014-07-12 10:31:07',1),(130,1,'2014-07-12','2014-07-12 10:31:09',1),(131,1,'2014-07-12','2014-07-12 10:31:11',1),(132,1,'2014-07-12','2014-07-12 10:31:13',1),(133,1,'2014-07-12','2014-07-12 10:31:14',1),(134,1,'2014-07-12','2014-07-12 10:31:16',1),(135,1,'2014-07-12','2014-07-12 10:31:16',1),(136,1,'2014-07-12','2014-07-12 10:31:20',1),(137,1,'2014-07-12','2014-07-12 10:31:21',1),(138,1,'2014-07-12','2014-07-12 10:31:38',1),(139,1,'2014-07-12','2014-07-12 10:31:41',1),(140,1,'2014-07-12','2014-07-12 10:31:44',1),(141,1,'2014-07-12','2014-07-12 11:16:10',0),(142,1,'2014-07-12','2014-07-12 11:16:14',0),(143,1,'2014-07-12','2014-07-12 11:16:16',0),(144,1,'2014-07-12','2014-07-12 11:16:18',0),(145,1,'2014-07-12','2014-07-12 11:16:20',0),(146,1,'2014-07-12','2014-07-12 11:16:22',0),(147,1,'2014-07-12','2014-07-12 11:16:25',0),(148,1,'2014-07-12','2014-07-12 11:16:27',0),(149,1,'2014-07-12','2014-07-12 11:16:29',0),(150,1,'2014-07-12','2014-07-12 11:16:31',0),(151,1,'2014-07-12','2014-07-12 11:16:34',0),(152,1,'2014-07-12','2014-07-12 11:16:36',0),(153,1,'2014-07-12','2014-07-12 11:16:38',0),(154,1,'2014-07-12','2014-07-12 11:16:40',0),(155,1,'2014-07-12','2014-07-12 11:16:43',0),(156,1,'2014-07-12','2014-07-12 11:16:45',0),(157,1,'2014-07-12','2014-07-12 11:16:47',0),(158,1,'2014-07-12','2014-07-12 11:16:49',0),(159,1,'2014-07-12','2014-07-12 11:16:58',0),(160,1,'2014-07-12','2014-07-12 11:17:02',0),(161,1,'2014-07-12','2014-07-12 11:17:06',0),(162,1,'2014-07-12','2014-07-12 11:17:09',0),(163,1,'2014-07-12','2014-07-12 11:17:13',0),(164,1,'2014-07-12','2014-07-12 11:17:17',0),(165,1,'2014-07-12','2014-07-12 11:17:20',0),(166,1,'2014-07-12','2014-07-12 11:17:24',0),(167,1,'2014-07-12','2014-07-12 11:17:26',0),(168,1,'2014-07-12','2014-07-12 11:17:29',0),(169,1,'2014-07-12','2014-07-12 11:17:57',0),(170,1,'2014-07-12','2014-07-12 11:18:01',0),(171,1,'2014-07-12','2014-07-12 11:18:05',0),(172,1,'2014-07-12','2014-07-12 11:18:08',0),(173,1,'2014-07-12','2014-07-12 11:18:12',0),(174,1,'2014-07-12','2014-07-12 11:18:16',0),(175,1,'2014-07-12','2014-07-12 11:18:20',0),(176,1,'2014-07-12','2014-07-12 11:18:24',0),(177,1,'2014-07-12','2014-07-12 11:18:28',0),(178,1,'2014-07-12','2014-07-12 11:18:32',0),(179,1,'2014-07-12','2014-07-12 11:18:35',0),(180,1,'2014-07-12','2014-07-12 11:18:39',0),(181,1,'2014-07-12','2014-07-12 11:18:43',0),(182,1,'2014-07-12','2014-07-12 11:18:47',0),(183,1,'2014-07-12','2014-07-12 11:18:51',0),(184,1,'2014-07-12','2014-07-12 11:18:54',0),(185,1,'2014-07-12','2014-07-12 11:18:58',0),(186,1,'2014-07-12','2014-07-12 11:19:01',0),(187,1,'2014-07-12','2014-07-12 11:19:05',0),(188,1,'2014-07-12','2014-07-12 11:19:09',0),(189,1,'2014-07-12','2014-07-12 11:19:12',0),(190,1,'2014-07-12','2014-07-12 11:19:16',0),(191,1,'2014-07-12','2014-07-12 11:19:20',0),(192,1,'2014-07-12','2014-07-12 11:19:23',0),(193,1,'2014-07-12','2014-07-12 11:19:28',0),(194,1,'2014-07-12','2014-07-12 11:19:32',0),(195,1,'2014-07-12','2014-07-12 11:19:35',0),(196,1,'2014-07-12','2014-07-12 11:19:39',0),(197,1,'2014-07-12','2014-07-12 11:19:43',0),(198,1,'2014-07-12','2014-07-12 11:19:47',0),(199,1,'2014-07-12','2014-07-12 11:19:50',0),(200,1,'2014-07-12','2014-07-12 11:19:54',0),(201,1,'2014-07-12','2014-07-12 11:19:58',0),(202,1,'2014-07-12','2014-07-12 11:20:01',0),(203,1,'2014-07-12','2014-07-12 11:20:05',0),(204,1,'2014-07-12','2014-07-12 11:20:08',0),(205,1,'2014-07-12','2014-07-12 11:20:11',0),(206,1,'2014-07-12','2014-07-12 11:20:15',0),(207,1,'2014-07-12','2014-07-12 11:20:18',0),(208,1,'2014-07-12','2014-07-12 11:20:22',0),(209,1,'2014-07-12','2014-07-12 11:20:25',0),(210,1,'2014-07-12','2014-07-12 11:20:29',0),(211,1,'2014-07-12','2014-07-12 11:20:33',0),(212,1,'2014-07-12','2014-07-12 11:20:36',0),(213,1,'2014-07-12','2014-07-12 11:20:39',0),(214,1,'2014-07-12','2014-07-12 11:20:42',0),(215,1,'2014-07-12','2014-07-12 11:20:46',0),(216,1,'2014-07-12','2014-07-12 11:20:49',0),(217,1,'2014-07-12','2014-07-12 11:20:52',0),(218,1,'2014-07-12','2014-07-12 11:20:56',0),(219,1,'2014-07-12','2014-07-12 11:20:59',0),(220,1,'2014-07-12','2014-07-12 11:21:03',0),(221,1,'2014-07-12','2014-07-12 11:21:06',0),(222,1,'2014-07-12','2014-07-12 11:21:10',0),(223,1,'2014-07-12','2014-07-12 11:21:13',0),(224,1,'2014-07-12','2014-07-12 11:21:16',0),(225,1,'2014-07-12','2014-07-12 11:21:20',0),(226,1,'2014-07-12','2014-07-12 11:21:24',0),(227,1,'2014-07-12','2014-07-12 11:21:27',0),(228,1,'2014-07-12','2014-07-12 11:21:31',0),(229,1,'2014-07-12','2014-07-12 11:21:34',0),(230,1,'2014-07-12','2014-07-12 11:21:38',0),(231,1,'2014-07-12','2014-07-12 11:21:42',0),(232,1,'2014-07-12','2014-07-12 11:21:45',0),(233,1,'2014-07-12','2014-07-12 11:21:49',0),(234,1,'2014-07-12','2014-07-12 11:21:52',0),(235,1,'2014-07-12','2014-07-12 11:21:55',0),(236,1,'2014-07-12','2014-07-12 11:21:58',0),(237,1,'2014-07-12','2014-07-12 11:22:02',0),(238,1,'2014-07-12','2014-07-12 11:22:05',0),(239,1,'2014-07-12','2014-07-12 11:22:09',0),(240,1,'2014-07-12','2014-07-12 11:22:12',0),(241,1,'2014-07-12','2014-07-12 11:22:15',0),(242,1,'2014-07-12','2014-07-12 11:22:19',0),(243,1,'2014-07-12','2014-07-12 11:22:22',0),(244,1,'2014-07-12','2014-07-12 11:22:26',0),(245,1,'2014-07-12','2014-07-12 11:22:29',0),(246,1,'2014-07-12','2014-07-12 11:22:33',0),(247,1,'2014-07-12','2014-07-12 11:22:36',0),(248,1,'2014-07-12','2014-07-12 11:22:40',0),(249,1,'2014-07-12','2014-07-12 11:22:44',0),(250,1,'2014-07-12','2014-07-12 11:22:47',0),(251,1,'2014-07-12','2014-07-12 11:22:50',0),(252,1,'2014-07-12','2014-07-12 11:22:54',0),(253,1,'2014-07-12','2014-07-12 11:22:58',0),(254,1,'2014-07-12','2014-07-12 11:23:02',0),(255,1,'2014-07-12','2014-07-12 11:23:05',0),(256,1,'2014-07-12','2014-07-12 11:23:08',0),(257,1,'2014-07-12','2014-07-12 11:23:12',0),(258,1,'2014-07-12','2014-07-12 11:23:15',0),(259,1,'2014-07-12','2014-07-12 11:23:18',0),(260,1,'2014-07-12','2014-07-12 11:23:21',0),(261,1,'2014-07-12','2014-07-12 11:23:25',0),(262,1,'2014-07-12','2014-07-12 11:23:28',0),(263,1,'2014-07-12','2014-07-12 11:23:32',0),(264,1,'2014-07-12','2014-07-12 11:23:35',0),(265,1,'2014-07-12','2014-07-12 11:23:39',0),(266,1,'2014-07-12','2014-07-12 11:23:42',0),(267,1,'2014-07-12','2014-07-12 11:23:46',0),(268,1,'2014-07-12','2014-07-12 11:23:50',0),(269,1,'2014-07-12','2014-07-12 11:23:53',0),(270,1,'2014-07-12','2014-07-12 11:23:57',0),(271,1,'2014-07-12','2014-07-12 11:24:00',0),(272,1,'2014-07-12','2014-07-12 11:24:03',0),(273,1,'2014-07-12','2014-07-12 11:24:06',0),(274,1,'2014-07-12','2014-07-12 11:24:10',0),(275,1,'2014-07-12','2014-07-12 11:24:13',0),(276,1,'2014-07-12','2014-07-12 11:24:17',0),(277,1,'2014-07-12','2014-07-12 11:24:21',0),(278,1,'2014-07-12','2014-07-12 11:24:24',0),(279,1,'2014-07-12','2014-07-12 11:24:27',0),(280,1,'2014-07-12','2014-07-12 11:24:31',0),(281,1,'2014-07-12','2014-07-12 17:55:19',0),(282,1,'2014-07-12','2014-07-12 17:55:20',0),(283,1,'2014-07-12','2014-07-12 17:55:23',0),(284,1,'2014-07-12','2014-07-12 17:55:29',0),(285,1,'2014-07-12','2014-07-12 17:55:34',0),(286,1,'2014-07-12','2014-07-12 17:55:41',0),(287,1,'2014-07-12','2014-07-12 17:55:47',0),(288,1,'2014-07-12','2014-07-12 17:55:52',0),(289,1,'2014-07-12','2014-07-12 17:55:56',0),(290,1,'2014-07-12','2014-07-12 17:56:02',0),(291,1,'2014-07-12','2014-07-12 17:56:08',0),(292,1,'2014-07-12','2014-07-12 17:56:15',0),(293,1,'2014-07-12','2014-07-12 17:56:21',0),(294,1,'2014-07-12','2014-07-12 17:56:27',0),(295,1,'2014-07-12','2014-07-12 17:56:30',0),(296,1,'2014-07-12','2014-07-12 17:56:34',0),(297,1,'2014-07-12','2014-07-12 17:56:54',0),(298,1,'2014-07-12','2014-07-12 17:56:59',0),(299,1,'2014-07-12','2014-07-12 17:57:04',0),(300,1,'2014-07-12','2014-07-12 17:57:09',0),(301,1,'2014-07-12','2014-07-12 17:57:16',0),(302,1,'2014-07-12','2014-07-12 17:57:23',0),(303,1,'2014-07-12','2014-07-12 17:57:32',0),(304,1,'2014-07-12','2014-07-12 17:57:38',0),(305,1,'2014-07-12','2014-07-12 17:57:46',0),(306,1,'2014-07-12','2014-07-12 17:57:54',0),(307,1,'2014-07-12','2014-07-12 17:58:02',0),(308,1,'2014-07-12','2014-07-12 17:58:12',0),(309,1,'2014-07-12','2014-07-12 17:58:21',0),(310,1,'2014-07-12','2014-07-12 17:58:30',0),(311,1,'2014-07-12','2014-07-12 17:58:40',0),(312,1,'2014-07-12','2014-07-12 17:58:47',0),(313,1,'2014-07-12','2014-07-12 17:58:55',0),(314,1,'2014-07-12','2014-07-12 17:59:03',0),(315,1,'2014-07-12','2014-07-12 17:59:10',0),(316,1,'2014-07-12','2014-07-12 17:59:16',0),(317,1,'2014-07-12','2014-07-12 17:59:21',0),(318,1,'2014-07-12','2014-07-12 17:59:29',0),(319,1,'2014-07-12','2014-07-12 17:59:37',0),(320,1,'2014-07-12','2014-07-12 17:59:42',0),(321,1,'2014-07-12','2014-07-12 17:59:50',0),(322,1,'2014-07-12','2014-07-12 17:59:58',0),(323,1,'2014-07-12','2014-07-12 18:00:04',0),(324,1,'2014-07-12','2014-07-12 18:00:10',0),(325,1,'2014-07-12','2014-07-12 18:00:16',0),(326,1,'2014-07-12','2014-07-12 18:00:22',0),(327,1,'2014-07-12','2014-07-12 18:00:27',0),(328,1,'2014-07-12','2014-07-12 18:00:33',0),(329,1,'2014-07-12','2014-07-12 18:00:40',0),(330,1,'2014-07-12','2014-07-12 18:00:45',0),(331,1,'2014-07-12','2014-07-12 18:00:50',0),(332,1,'2014-07-12','2014-07-12 18:01:06',0),(333,1,'2014-07-12','2014-07-12 18:12:44',0),(334,1,'2014-07-12','2014-07-12 18:13:00',0),(335,1,'2014-07-14','2014-07-14 08:39:59',0),(336,1,'2014-07-14','2014-07-14 08:40:16',0),(337,1,'2014-07-14','2014-07-14 08:41:40',0),(338,1,'2014-07-14','2014-07-14 09:04:50',0),(339,1,'2014-07-14','2014-07-14 09:21:59',0),(340,1,'2014-07-14','2014-07-14 09:23:00',0),(341,1,'2014-07-14','2014-07-14 09:23:15',0),(342,1,'2014-07-14','2014-07-14 09:23:25',0),(343,1,'2014-07-14','2014-07-14 09:23:44',0),(344,1,'2014-07-14','2014-07-14 09:23:52',0),(345,1,'2014-07-14','2014-07-14 09:24:36',0),(346,1,'2014-07-14','2014-07-14 09:24:40',0),(347,1,'2014-07-14','2014-07-14 09:25:03',0),(348,1,'2014-07-14','2014-07-14 09:25:03',0),(349,111,'2014-07-14','2014-07-14 09:25:46',0),(350,111,'2014-07-14','2014-07-14 09:26:01',0),(351,111,'2014-07-14','2014-07-14 09:26:15',0),(352,111,'2014-07-14','2014-07-14 09:26:30',0),(353,1,'2014-07-14','2014-07-14 09:26:34',1),(354,107,'2014-07-14','2014-07-14 09:26:39',1),(355,1,'2014-07-14','2014-07-14 09:26:58',1),(356,1,'2014-07-14','2014-07-14 09:27:25',1),(357,1,'2014-07-14','2014-07-14 09:27:59',1),(358,2,'2014-07-14','2014-07-14 09:27:59',1),(359,51,'2014-07-14','2014-07-14 09:28:19',1),(360,100,'2014-07-14','2014-07-14 09:28:39',1),(361,100,'2014-07-14','2014-07-14 09:28:52',1),(362,100,'2014-07-14','2014-07-14 09:28:57',1),(363,2,'2014-07-14','2014-07-14 09:29:07',1),(364,2,'2014-07-14','2014-07-14 09:36:37',1),(365,2,'2014-07-14','2014-07-14 09:37:35',1),(366,28,'2014-07-14','2014-07-14 09:41:03',1),(367,1,'2014-07-14','2014-07-14 09:43:14',0),(368,1,'2014-07-14','2014-07-14 09:46:02',0),(369,1,'2014-07-14','2014-07-14 09:46:02',0),(370,1,'2014-07-14','2014-07-14 09:46:36',0),(371,1,'2014-07-14','2014-07-14 09:46:37',0),(372,1,'2014-07-14','2014-07-14 09:46:54',0),(373,1,'2014-07-14','2014-07-14 09:46:54',0),(374,1,'2014-07-14','2014-07-14 09:47:44',0),(375,1,'2014-07-14','2014-07-14 09:50:33',1),(376,1,'2014-07-14','2014-07-14 09:50:43',1),(377,1,'2014-07-14','2014-07-14 09:50:54',1),(378,1,'2014-07-14','2014-07-14 09:50:57',0),(379,1,'2014-07-14','2014-07-14 09:51:49',0),(380,111,'2014-07-14','2014-07-14 09:52:14',0),(381,111,'2014-07-14','2014-07-14 09:52:30',0),(382,1,'2014-07-14','2014-07-14 09:52:33',1),(383,1,'2014-07-14','2014-07-14 09:52:56',1),(384,1,'2014-07-14','2014-07-14 09:53:18',1),(385,1,'2014-07-14','2014-07-14 09:54:43',1),(386,1,'2014-07-14','2014-07-14 09:54:57',1),(387,1,'2014-07-14','2014-07-14 09:55:14',1),(388,1,'2014-07-14','2014-07-14 09:57:30',1),(389,1,'2014-07-14','2014-07-14 09:57:31',1),(390,1,'2014-07-14','2014-07-14 09:58:52',1),(391,1,'2014-07-14','2014-07-14 09:58:53',1),(392,1,'2014-07-14','2014-07-14 09:59:14',1),(393,1,'2014-07-14','2014-07-14 09:59:14',1),(394,1,'2014-07-14','2014-07-14 09:59:27',1),(395,1,'2014-07-14','2014-07-14 10:00:54',1),(396,1,'2014-07-14','2014-07-14 10:01:00',1),(397,111,'2014-07-14','2014-07-14 10:01:29',1),(398,1,'2014-07-14','2014-07-14 10:01:46',1),(399,1,'2014-07-14','2014-07-14 10:01:52',1),(400,111,'2014-07-14','2014-07-14 10:02:00',1),(401,111,'2014-07-14','2014-07-14 10:02:16',1),(402,1,'2014-07-14','2014-07-14 10:02:19',1),(403,1,'2014-07-14','2014-07-14 10:06:56',1),(404,1,'2014-07-14','2014-07-14 10:07:01',1),(405,1,'2014-07-14','2014-07-14 10:08:34',1),(406,1,'2014-07-14','2014-07-14 10:08:34',1),(407,1,'2014-07-14','2014-07-14 10:09:16',1),(408,1,'2014-07-14','2014-07-14 10:09:17',1),(409,1,'2014-07-14','2014-07-14 10:09:48',1),(410,1,'2014-07-14','2014-07-14 10:09:49',1),(411,1,'2014-07-14','2014-07-14 10:10:03',1),(412,1,'2014-07-14','2014-07-14 10:10:20',1),(413,1,'2014-07-14','2014-07-14 10:10:34',1),(414,1,'2014-07-14','2014-07-14 10:10:41',1),(415,111,'2014-07-14','2014-07-14 10:10:55',1),(416,1,'2014-07-14','2014-07-14 10:10:55',0),(417,111,'2014-07-14','2014-07-14 10:11:07',0),(418,111,'2014-07-14','2014-07-14 10:11:22',0),(419,1,'2014-07-14','2014-07-14 10:11:25',1),(420,1,'2014-07-14','2014-07-14 10:12:48',1),(421,1,'2014-07-14','2014-07-14 10:12:49',1),(422,1,'2014-07-14','2014-07-14 10:13:07',1),(423,1,'2014-07-14','2014-07-14 10:13:08',1),(424,1,'2014-07-14','2014-07-14 10:14:16',1),(425,1,'2014-07-14','2014-07-14 10:14:17',1),(426,111,'2014-07-14','2014-07-14 10:14:53',1),(427,1,'2014-07-14','2014-07-14 10:14:53',0),(428,1,'2014-07-14','2014-07-14 10:15:05',0),(429,1,'2014-07-14','2014-07-14 10:15:38',0),(430,1,'2014-07-14','2014-07-14 10:15:39',0),(431,1,'2014-07-14','2014-07-14 10:16:29',0),(432,1,'2014-07-14','2014-07-14 10:16:29',0),(433,1,'2014-07-14','2014-07-14 10:16:58',0),(434,1,'2014-07-14','2014-07-14 10:16:58',0),(435,1,'2014-07-14','2014-07-14 10:17:15',0),(436,1,'2014-07-14','2014-07-14 10:17:16',0),(437,1,'2014-07-14','2014-07-14 10:19:51',0),(438,1,'2014-07-14','2014-07-14 10:20:08',0),(439,1,'2014-07-14','2014-07-14 10:22:16',0),(440,1,'2014-07-14','2014-07-14 10:24:41',0),(441,1,'2014-07-14','2014-07-14 10:24:41',0),(442,1,'2014-07-14','2014-07-14 10:25:23',0),(443,1,'2014-07-14','2014-07-14 10:25:28',0),(444,111,'2014-07-14','2014-07-14 10:25:38',0),(445,111,'2014-07-14','2014-07-14 10:25:52',0),(446,111,'2014-07-14','2014-07-14 10:26:05',0),(447,1,'2014-07-14','2014-07-14 10:26:08',1),(448,1,'2014-07-14','2014-07-14 10:26:31',1),(449,1,'2014-07-14','2014-07-14 10:27:48',1),(450,1,'2014-07-14','2014-07-14 10:27:53',1),(451,111,'2014-07-14','2014-07-14 10:28:28',1),(452,1,'2014-07-14','2014-07-14 10:28:28',0),(453,111,'2014-07-14','2014-07-14 10:28:37',0),(454,111,'2014-07-14','2014-07-14 10:28:51',0),(455,1,'2014-07-14','2014-07-14 10:28:54',1),(456,49,'2014-07-14','2014-07-14 10:30:16',1),(457,48,'2014-07-14','2014-07-14 10:30:17',1),(458,48,'2014-07-14','2014-07-14 10:30:42',1),(459,48,'2014-07-14','2014-07-14 10:30:43',1),(460,49,'2014-07-14','2014-07-14 10:31:54',1),(461,46,'2014-07-14','2014-07-14 10:32:54',1),(462,46,'2014-07-14','2014-07-14 10:33:18',1),(463,2,'2014-07-14','2014-07-14 10:33:41',1),(464,28,'2014-07-14','2014-07-14 10:33:48',1),(465,28,'2014-07-14','2014-07-14 10:33:59',1),(466,28,'2014-07-14','2014-07-14 10:34:07',1),(467,1,'2014-07-14','2014-07-14 10:34:20',1),(468,111,'2014-07-14','2014-07-14 10:34:35',1),(469,1,'2014-07-14','2014-07-14 10:34:35',0),(470,111,'2014-07-14','2014-07-14 10:34:45',0),(471,111,'2014-07-14','2014-07-14 10:35:06',0),(472,1,'2014-07-14','2014-07-14 10:35:09',1),(473,1,'2014-07-14','2014-07-14 10:35:24',1),(474,2,'2014-07-14','2014-07-14 10:36:34',1),(475,28,'2014-07-14','2014-07-14 10:36:48',1),(476,28,'2014-07-14','2014-07-14 10:41:16',1),(477,28,'2014-07-14','2014-07-14 10:42:36',1),(478,28,'2014-07-14','2014-07-14 10:44:41',1),(479,28,'2014-07-14','2014-07-14 10:44:53',1),(480,28,'2014-07-14','2014-07-14 10:45:04',1),(481,30,'2014-07-14','2014-07-14 10:45:04',1),(482,30,'2014-07-14','2014-07-14 10:45:15',1),(483,1,'2014-07-14','2014-07-14 10:45:22',1),(484,1,'2014-07-14','2014-07-14 10:48:18',1),(485,1,'2014-07-14','2014-07-14 10:50:21',1),(486,1,'2014-07-14','2014-07-14 10:53:10',1),(487,1,'2014-07-14','2014-07-14 10:57:12',1),(488,1,'2014-07-14','2014-07-14 10:57:47',1),(489,1,'2014-07-14','2014-07-14 10:58:44',1),(490,1,'2014-07-14','2014-07-14 10:59:14',1),(491,1,'2014-07-14','2014-07-14 11:00:07',1),(492,1,'2014-07-14','2014-07-14 11:00:29',1),(493,1,'2014-07-14','2014-07-14 11:00:39',1),(494,2,'2014-07-14','2014-07-14 11:00:59',1),(495,51,'2014-07-14','2014-07-14 11:01:08',1),(496,67,'2014-07-14','2014-07-14 11:01:22',1),(497,67,'2014-07-14','2014-07-14 11:02:06',1),(498,67,'2014-07-14','2014-07-14 11:02:06',1),(499,1,'2014-07-14','2014-07-14 11:02:12',1),(500,2,'2014-07-14','2014-07-14 11:02:39',1),(501,28,'2014-07-14','2014-07-14 11:02:46',1),(502,28,'2014-07-14','2014-07-14 11:02:57',1),(503,28,'2014-07-14','2014-07-14 11:03:03',1),(504,1,'2014-07-14','2014-07-14 11:03:09',1),(505,1,'2014-07-14','2014-07-14 11:09:23',1),(506,1,'2014-07-14','2014-07-14 11:09:40',1),(507,1,'2014-07-14','2014-07-14 11:10:01',1),(508,1,'2014-07-14','2014-07-14 11:10:20',1),(509,1,'2014-07-14','2014-07-14 11:10:37',1),(510,1,'2014-07-14','2014-07-14 11:10:55',1),(511,1,'2014-07-14','2014-07-14 11:11:57',1),(512,1,'2014-07-14','2014-07-14 11:12:35',1),(513,1,'2014-07-14','2014-07-14 11:13:53',1),(514,1,'2014-07-14','2014-07-14 11:14:45',1),(515,1,'2014-07-14','2014-07-14 11:16:41',1),(516,1,'2014-07-14','2014-07-14 11:17:51',1),(517,1,'2014-07-14','2014-07-14 11:19:55',1),(518,1,'2014-07-14','2014-07-14 11:20:08',1),(519,1,'2014-07-14','2014-07-14 11:22:19',1),(520,1,'2014-07-14','2014-07-14 11:22:41',1),(521,1,'2014-07-14','2014-07-14 11:22:59',1),(522,1,'2014-07-14','2014-07-14 11:23:15',1),(523,1,'2014-07-14','2014-07-14 11:23:56',1),(524,1,'2014-07-14','2014-07-14 11:24:15',1),(525,1,'2014-07-14','2014-07-14 11:24:16',1),(526,1,'2014-07-14','2014-07-14 11:25:51',1),(527,1,'2014-07-14','2014-07-14 11:25:51',1),(528,1,'2014-07-14','2014-07-14 11:26:48',1),(529,1,'2014-07-14','2014-07-14 11:26:49',1),(530,1,'2014-07-14','2014-07-14 11:34:03',1),(531,1,'2014-07-14','2014-07-14 11:35:50',1),(532,1,'2014-07-14','2014-07-14 11:39:34',1),(533,1,'2014-07-14','2014-07-14 11:39:34',1),(534,1,'2014-07-14','2014-07-14 11:40:43',1),(535,1,'2014-07-14','2014-07-14 11:42:37',1),(536,1,'2014-07-14','2014-07-14 11:43:08',1),(537,1,'2014-07-14','2014-07-14 11:43:38',1),(538,1,'2014-07-14','2014-07-14 11:44:14',1),(539,1,'2014-07-14','2014-07-14 11:45:19',1),(540,1,'2014-07-14','2014-07-14 11:45:43',1),(541,1,'2014-07-14','2014-07-14 11:46:02',1),(542,1,'2014-07-14','2014-07-14 11:47:36',1),(543,1,'2014-07-14','2014-07-14 11:48:30',1),(544,1,'2014-07-14','2014-07-14 11:49:01',1),(545,1,'2014-07-14','2014-07-14 11:49:34',1),(546,1,'2014-07-14','2014-07-14 11:49:55',1),(547,1,'2014-07-14','2014-07-14 11:50:14',1),(548,1,'2014-07-14','2014-07-14 11:50:34',1),(549,1,'2014-07-14','2014-07-14 11:51:20',1),(550,1,'2014-07-14','2014-07-14 11:51:24',1),(551,1,'2014-07-14','2014-07-14 11:51:52',1),(552,1,'2014-07-14','2014-07-14 11:51:53',1),(553,1,'2014-07-14','2014-07-14 11:52:27',1),(554,1,'2014-07-14','2014-07-14 11:52:28',1),(555,1,'2014-07-14','2014-07-14 11:52:35',1),(556,1,'2014-07-14','2014-07-14 11:52:35',1),(557,1,'2014-07-14','2014-07-14 11:52:59',1),(558,1,'2014-07-14','2014-07-14 11:53:04',1),(559,1,'2014-07-14','2014-07-14 11:53:24',1),(560,1,'2014-07-14','2014-07-14 11:53:51',1),(561,1,'2014-07-14','2014-07-14 11:54:40',1),(562,1,'2014-07-14','2014-07-14 11:55:12',1),(563,1,'2014-07-14','2014-07-14 11:55:31',1),(564,1,'2014-07-14','2014-07-14 11:56:06',1),(565,1,'2014-07-14','2014-07-14 11:56:41',1),(566,1,'2014-07-14','2014-07-14 11:58:31',1),(567,1,'2014-07-14','2014-07-14 11:58:37',1),(568,1,'2014-07-14','2014-07-14 11:59:05',1),(569,1,'2014-07-14','2014-07-14 11:59:06',1),(570,1,'2014-07-14','2014-07-14 11:59:12',1),(571,1,'2014-07-14','2014-07-14 11:59:13',1),(572,1,'2014-07-14','2014-07-14 11:59:43',1),(573,1,'2014-07-14','2014-07-14 12:01:08',1),(574,1,'2014-07-14','2014-07-14 12:02:02',1),(575,1,'2014-07-14','2014-07-14 12:02:24',1),(576,1,'2014-07-14','2014-07-14 12:02:55',1),(577,1,'2014-07-14','2014-07-14 12:02:55',1),(578,1,'2014-07-14','2014-07-14 12:04:03',1),(579,1,'2014-07-14','2014-07-14 12:04:04',1),(580,1,'2014-07-14','2014-07-14 12:05:15',1),(581,1,'2014-07-14','2014-07-14 12:05:26',1),(582,1,'2014-07-14','2014-07-14 12:05:51',1),(583,1,'2014-07-14','2014-07-14 12:06:16',1),(584,1,'2014-07-14','2014-07-14 12:06:39',1),(585,1,'2014-07-14','2014-07-14 12:06:56',1),(586,1,'2014-07-14','2014-07-14 12:07:14',1),(587,1,'2014-07-14','2014-07-14 12:07:52',1),(588,1,'2014-07-14','2014-07-14 12:08:28',1),(589,1,'2014-07-14','2014-07-14 12:09:09',1),(590,1,'2014-07-14','2014-07-14 12:09:27',1),(591,1,'2014-07-14','2014-07-14 12:09:51',1),(592,1,'2014-07-14','2014-07-14 12:13:42',1),(593,1,'2014-07-14','2014-07-14 12:14:31',1),(594,1,'2014-07-14','2014-07-14 12:14:32',1),(595,1,'2014-07-14','2014-07-14 12:17:45',1),(596,1,'2014-07-14','2014-07-14 12:17:50',1),(597,1,'2014-07-14','2014-07-14 12:19:57',1),(598,1,'2014-07-14','2014-07-14 12:20:02',1),(599,1,'2014-07-14','2014-07-14 12:22:10',1),(600,1,'2014-07-14','2014-07-14 12:23:24',1),(601,111,'2014-07-14','2014-07-14 12:23:42',1),(602,1,'2014-07-14','2014-07-14 12:23:42',0),(603,111,'2014-07-14','2014-07-14 12:23:50',0),(604,111,'2014-07-14','2014-07-14 12:24:04',0),(605,1,'2014-07-14','2014-07-14 12:24:07',1),(606,1,'2014-07-14','2014-07-14 12:24:26',1),(607,1,'2014-07-14','2014-07-14 12:25:09',1),(608,1,'2014-07-14','2014-07-14 12:27:09',1),(609,1,'2014-07-14','2014-07-14 12:27:16',1),(610,1,'2014-07-14','2014-07-14 12:28:58',1),(611,1,'2014-07-14','2014-07-14 12:29:20',1),(612,1,'2014-07-14','2014-07-14 12:29:45',1),(613,1,'2014-07-14','2014-07-14 12:30:32',1),(614,1,'2014-07-14','2014-07-14 12:30:53',1),(615,1,'2014-07-14','2014-07-14 12:31:10',1),(616,1,'2014-07-14','2014-07-14 12:31:46',1),(617,1,'2014-07-14','2014-07-14 12:31:53',1),(618,1,'2014-07-14','2014-07-14 12:32:40',1),(619,1,'2014-07-14','2014-07-14 12:33:27',1),(620,1,'2014-07-14','2014-07-14 12:33:48',1),(621,1,'2014-07-14','2014-07-14 12:35:28',1),(622,1,'2014-07-14','2014-07-14 12:35:38',1),(623,1,'2014-07-14','2014-07-14 12:36:11',1),(624,1,'2014-07-14','2014-07-14 12:37:38',1),(625,1,'2014-07-14','2014-07-14 12:37:55',1),(626,1,'2014-07-14','2014-07-14 12:38:22',1),(627,1,'2014-07-14','2014-07-14 12:39:58',1),(628,1,'2014-07-14','2014-07-14 12:40:18',1),(629,1,'2014-07-14','2014-07-14 12:40:50',1),(630,1,'2014-07-14','2014-07-14 12:40:58',1),(631,1,'2014-07-14','2014-07-14 12:41:36',1),(632,1,'2014-07-14','2014-07-14 12:41:55',1),(633,1,'2014-07-14','2014-07-14 12:42:12',1),(634,1,'2014-07-14','2014-07-14 12:42:29',1),(635,1,'2014-07-14','2014-07-14 12:44:36',1),(636,1,'2014-07-14','2014-07-14 12:44:54',1),(637,1,'2014-07-14','2014-07-14 12:45:14',1),(638,1,'2014-07-14','2014-07-14 12:47:46',1),(639,1,'2014-07-14','2014-07-14 12:49:00',1),(640,1,'2014-07-14','2014-07-14 12:56:20',1),(641,1,'2014-07-14','2014-07-14 12:57:51',1),(642,1,'2014-07-14','2014-07-14 12:57:52',1),(643,1,'2014-07-14','2014-07-14 12:58:25',1),(644,1,'2014-07-14','2014-07-14 12:59:29',1),(645,1,'2014-07-14','2014-07-14 12:59:52',1),(646,1,'2014-07-14','2014-07-14 13:00:14',1),(647,1,'2014-07-14','2014-07-14 13:00:32',1),(648,1,'2014-07-14','2014-07-14 13:00:42',1),(649,1,'2014-07-14','2014-07-14 13:01:30',1),(650,1,'2014-07-14','2014-07-14 13:01:31',1),(651,1,'2014-07-14','2014-07-14 13:02:05',1),(652,1,'2014-07-14','2014-07-14 13:02:27',1),(653,1,'2014-07-14','2014-07-14 13:02:50',1),(654,1,'2014-07-14','2014-07-14 13:03:10',1),(655,1,'2014-07-14','2014-07-14 13:03:30',1),(656,1,'2014-07-14','2014-07-14 13:03:59',1),(657,1,'2014-07-14','2014-07-14 13:04:26',1),(658,1,'2014-07-14','2014-07-14 13:04:31',1),(659,1,'2014-07-14','2014-07-14 13:05:04',1),(660,1,'2014-07-14','2014-07-14 13:05:33',1),(661,1,'2014-07-14','2014-07-14 13:05:49',1),(662,1,'2014-07-14','2014-07-14 13:07:39',1),(663,1,'2014-07-14','2014-07-14 13:08:14',1),(664,1,'2014-07-14','2014-07-14 13:09:23',1),(665,1,'2014-07-14','2014-07-14 13:09:42',1),(666,1,'2014-07-14','2014-07-14 13:11:48',1),(667,1,'2014-07-14','2014-07-14 13:11:54',1),(668,1,'2014-07-14','2014-07-14 13:13:33',1),(669,1,'2014-07-14','2014-07-14 13:13:34',1),(670,1,'2014-07-14','2014-07-14 13:14:44',1),(671,1,'2014-07-14','2014-07-14 13:14:48',1),(672,1,'2014-07-14','2014-07-14 13:15:44',1),(673,1,'2014-07-14','2014-07-14 13:16:06',1),(674,1,'2014-07-14','2014-07-14 13:16:23',1),(675,1,'2014-07-14','2014-07-14 13:16:31',1),(676,1,'2014-07-14','2014-07-14 13:16:52',1),(677,1,'2014-07-14','2014-07-14 13:16:58',1),(678,1,'2014-07-14','2014-07-14 13:17:20',1),(679,1,'2014-07-14','2014-07-14 13:17:28',1),(680,1,'2014-07-14','2014-07-14 13:18:00',1),(681,1,'2014-07-14','2014-07-14 13:18:17',1),(682,1,'2014-07-14','2014-07-14 13:18:49',1),(683,1,'2014-07-14','2014-07-14 13:19:38',1),(684,1,'2014-07-14','2014-07-14 13:20:31',1),(685,1,'2014-07-14','2014-07-14 13:21:19',1),(686,1,'2014-07-14','2014-07-14 13:22:52',1),(687,1,'2014-07-14','2014-07-14 13:24:06',1),(688,1,'2014-07-14','2014-07-14 13:24:34',1),(689,1,'2014-07-14','2014-07-14 13:24:50',1),(690,1,'2014-07-14','2014-07-14 13:25:13',1),(691,1,'2014-07-14','2014-07-14 13:26:28',1),(692,1,'2014-07-14','2014-07-14 13:27:06',1),(693,1,'2014-07-14','2014-07-14 13:29:03',1),(694,1,'2014-07-14','2014-07-14 13:29:29',1),(695,1,'2014-07-14','2014-07-14 13:30:33',1),(696,1,'2014-07-14','2014-07-14 13:30:45',1),(697,1,'2014-07-14','2014-07-14 13:31:22',1),(698,1,'2014-07-14','2014-07-14 13:31:39',1),(699,1,'2014-07-14','2014-07-14 13:31:44',1),(700,1,'2014-07-14','2014-07-14 13:32:14',1),(701,1,'2014-07-14','2014-07-14 13:32:33',1),(702,1,'2014-07-14','2014-07-14 13:32:53',1),(703,1,'2014-07-14','2014-07-14 13:33:21',1),(704,1,'2014-07-14','2014-07-14 13:33:39',1),(705,1,'2014-07-14','2014-07-14 13:34:02',1),(706,1,'2014-07-14','2014-07-14 13:34:18',1),(707,1,'2014-07-14','2014-07-14 13:34:38',1),(708,1,'2014-07-14','2014-07-14 13:34:54',1),(709,1,'2014-07-14','2014-07-14 13:35:37',1),(710,1,'2014-07-14','2014-07-14 13:36:02',1),(711,1,'2014-07-14','2014-07-14 13:36:23',1),(712,1,'2014-07-14','2014-07-14 13:36:56',1),(713,1,'2014-07-14','2014-07-14 13:37:12',1),(714,1,'2014-07-14','2014-07-14 13:37:39',1),(715,1,'2014-07-14','2014-07-14 13:37:48',1),(716,1,'2014-07-14','2014-07-14 13:38:12',1),(717,1,'2014-07-14','2014-07-14 13:39:18',1),(718,1,'2014-07-14','2014-07-14 13:39:49',1),(719,1,'2014-07-14','2014-07-14 13:40:27',1),(720,1,'2014-07-14','2014-07-14 13:40:48',1),(721,1,'2014-07-14','2014-07-14 13:41:04',1),(722,1,'2014-07-14','2014-07-14 13:41:19',1),(723,1,'2014-07-14','2014-07-14 13:42:00',1),(724,1,'2014-07-14','2014-07-14 13:42:20',1),(725,1,'2014-07-14','2014-07-14 13:42:38',1),(726,1,'2014-07-14','2014-07-14 13:43:01',1),(727,1,'2014-07-14','2014-07-14 13:43:30',1),(728,1,'2014-07-14','2014-07-14 13:43:56',1),(729,1,'2014-07-14','2014-07-14 13:44:14',1),(730,1,'2014-07-14','2014-07-14 13:46:00',1),(731,1,'2014-07-14','2014-07-14 13:46:36',1),(732,1,'2014-07-14','2014-07-14 13:46:58',1),(733,1,'2014-07-14','2014-07-14 13:47:21',1),(734,1,'2014-07-14','2014-07-14 13:47:37',1),(735,1,'2014-07-14','2014-07-14 13:48:48',1),(736,1,'2014-07-14','2014-07-14 13:49:53',1),(737,1,'2014-07-14','2014-07-14 13:50:16',1),(738,1,'2014-07-14','2014-07-14 13:50:23',1),(739,1,'2014-07-14','2014-07-14 13:51:03',1),(740,1,'2014-07-14','2014-07-14 13:51:27',1),(741,1,'2014-07-14','2014-07-14 13:52:01',1),(742,1,'2014-07-14','2014-07-14 13:52:10',1),(743,1,'2014-07-14','2014-07-14 13:52:35',1),(744,1,'2014-07-14','2014-07-14 13:53:28',1),(745,1,'2014-07-14','2014-07-14 13:53:38',1),(746,1,'2014-07-14','2014-07-14 13:54:11',1),(747,1,'2014-07-14','2014-07-14 13:54:44',1),(748,1,'2014-07-14','2014-07-14 13:55:07',1),(749,1,'2014-07-14','2014-07-14 13:55:33',1),(750,1,'2014-07-14','2014-07-14 13:56:22',1),(751,1,'2014-07-14','2014-07-14 13:57:05',1),(752,1,'2014-07-14','2014-07-14 13:57:25',1),(753,1,'2014-07-14','2014-07-14 13:57:49',1),(754,1,'2014-07-14','2014-07-14 13:58:36',1),(755,1,'2014-07-14','2014-07-14 13:59:04',1),(756,1,'2014-07-14','2014-07-14 13:59:25',1),(757,111,'2014-07-14','2014-07-14 13:59:43',1),(758,1,'2014-07-14','2014-07-14 13:59:44',0),(759,1,'2014-07-14','2014-07-14 14:07:04',0),(760,111,'2014-07-14','2014-07-14 14:07:16',0),(761,111,'2014-07-14','2014-07-14 14:07:34',0),(762,1,'2014-07-14','2014-07-14 14:07:37',1),(763,1,'2014-07-14','2014-07-14 14:08:19',1),(764,1,'2014-07-14','2014-07-14 14:12:01',1),(765,1,'2014-07-14','2014-07-14 14:12:07',1),(766,1,'2014-07-14','2014-07-14 14:12:38',1),(767,1,'2014-07-14','2014-07-14 14:12:43',1),(768,1,'2014-07-14','2014-07-14 14:13:23',1),(769,1,'2014-07-14','2014-07-14 14:13:50',1),(770,1,'2014-07-14','2014-07-14 14:18:14',1),(771,1,'2014-07-14','2014-07-14 14:42:26',1),(772,1,'2014-07-14','2014-07-14 14:43:16',1),(773,1,'2014-07-14','2014-07-14 14:43:46',1),(774,1,'2014-07-14','2014-07-14 14:44:09',1),(775,1,'2014-07-14','2014-07-14 14:44:30',1),(776,1,'2014-07-14','2014-07-14 14:44:59',1),(777,1,'2014-07-14','2014-07-14 14:45:59',1),(778,1,'2014-07-14','2014-07-14 14:46:06',1),(779,1,'2014-07-14','2014-07-14 14:47:36',1),(780,1,'2014-07-14','2014-07-14 14:48:41',1),(781,1,'2014-07-14','2014-07-14 14:48:46',1),(782,1,'2014-07-14','2014-07-14 14:49:08',1),(783,1,'2014-07-14','2014-07-14 14:49:32',1),(784,1,'2014-07-14','2014-07-14 14:50:00',1),(785,1,'2014-07-14','2014-07-14 14:50:36',1),(786,1,'2014-07-14','2014-07-14 14:51:07',1),(787,1,'2014-07-14','2014-07-14 14:51:08',1),(788,1,'2014-07-14','2014-07-14 14:54:52',1),(789,1,'2014-07-14','2014-07-14 14:54:59',1),(790,1,'2014-07-14','2014-07-14 14:58:19',1),(791,1,'2014-07-14','2014-07-14 14:58:53',1),(792,1,'2014-07-14','2014-07-14 14:58:59',1),(793,1,'2014-07-14','2014-07-14 15:00:04',1),(794,1,'2014-07-14','2014-07-14 15:00:05',1),(795,1,'2014-07-14','2014-07-14 15:01:26',1),(796,1,'2014-07-14','2014-07-14 15:02:13',1),(797,1,'2014-07-14','2014-07-14 15:04:37',1),(798,1,'2014-07-14','2014-07-14 15:04:44',1),(799,1,'2014-07-14','2014-07-14 15:05:53',1),(800,1,'2014-07-14','2014-07-14 15:07:06',1),(801,1,'2014-07-14','2014-07-14 15:07:07',1),(802,1,'2014-07-14','2014-07-14 15:07:47',1),(803,1,'2014-07-14','2014-07-14 15:07:54',1),(804,1,'2014-07-14','2014-07-14 15:10:50',1),(805,1,'2014-07-14','2014-07-14 15:10:56',1),(806,1,'2014-07-14','2014-07-14 15:12:52',1),(807,1,'2014-07-14','2014-07-14 15:17:45',1),(808,1,'2014-07-14','2014-07-14 15:17:51',1),(809,1,'2014-07-14','2014-07-14 15:18:40',1),(810,1,'2014-07-14','2014-07-14 15:18:44',1),(811,1,'2014-07-14','2014-07-14 15:19:30',1),(812,1,'2014-07-14','2014-07-14 15:19:35',1),(813,1,'2014-07-14','2014-07-14 15:21:04',1),(814,1,'2014-07-14','2014-07-14 15:21:13',1),(815,1,'2014-07-14','2014-07-14 15:22:19',1),(816,1,'2014-07-14','2014-07-14 15:22:24',1),(817,1,'2014-07-14','2014-07-14 15:22:42',1),(818,1,'2014-07-14','2014-07-14 15:22:48',1),(819,1,'2014-07-14','2014-07-14 15:23:19',1),(820,1,'2014-07-14','2014-07-14 15:23:27',1),(821,1,'2014-07-14','2014-07-14 15:23:47',1),(822,1,'2014-07-14','2014-07-14 15:25:50',1),(823,1,'2014-07-14','2014-07-14 15:25:55',1),(824,1,'2014-07-14','2014-07-14 15:26:08',1),(825,1,'2014-07-14','2014-07-14 15:27:26',1),(826,1,'2014-07-14','2014-07-14 15:27:41',1),(827,1,'2014-07-14','2014-07-14 15:27:47',1),(828,1,'2014-07-14','2014-07-14 15:29:19',1),(829,1,'2014-07-14','2014-07-14 15:29:30',1),(830,1,'2014-07-14','2014-07-14 15:30:00',1),(831,1,'2014-07-14','2014-07-14 15:30:15',1),(832,1,'2014-07-14','2014-07-14 15:34:20',1),(833,1,'2014-07-14','2014-07-14 15:36:23',1),(834,1,'2014-07-14','2014-07-14 15:36:24',1),(835,1,'2014-07-14','2014-07-14 15:36:54',1),(836,1,'2014-07-14','2014-07-14 15:36:59',1),(837,1,'2014-07-14','2014-07-14 15:37:26',1),(838,1,'2014-07-14','2014-07-14 15:45:04',1),(839,1,'2014-07-14','2014-07-14 15:53:50',1),(840,1,'2014-07-14','2014-07-14 15:54:57',1),(841,1,'2014-07-14','2014-07-14 15:55:02',1),(842,1,'2014-07-14','2014-07-14 15:55:03',1),(843,1,'2014-07-14','2014-07-14 15:55:04',1),(844,1,'2014-07-14','2014-07-14 15:55:09',1),(845,1,'2014-07-14','2014-07-14 15:55:10',1),(846,1,'2014-07-14','2014-07-14 15:55:11',1),(847,1,'2014-07-14','2014-07-14 15:58:32',1),(848,1,'2014-07-14','2014-07-14 15:58:38',1),(849,1,'2014-07-14','2014-07-14 16:02:57',1),(850,1,'2014-07-14','2014-07-14 16:05:13',1),(851,1,'2014-07-14','2014-07-14 16:05:14',1),(852,1,'2014-07-14','2014-07-14 16:05:32',1),(853,1,'2014-07-14','2014-07-14 16:05:36',1),(854,1,'2014-07-14','2014-07-14 16:06:17',1),(855,1,'2014-07-14','2014-07-14 16:06:58',1),(856,1,'2014-07-14','2014-07-14 16:07:25',1),(857,1,'2014-07-14','2014-07-14 16:08:59',1),(858,1,'2014-07-14','2014-07-14 16:09:05',1),(859,1,'2014-07-14','2014-07-14 16:10:31',1),(860,1,'2014-07-14','2014-07-14 16:11:23',1),(861,1,'2014-07-14','2014-07-14 16:11:54',1),(862,1,'2014-07-14','2014-07-14 16:11:55',1),(863,1,'2014-07-14','2014-07-14 16:12:20',1),(864,1,'2014-07-14','2014-07-14 16:13:02',1),(865,1,'2014-07-14','2014-07-14 16:13:02',1),(866,1,'2014-07-14','2014-07-14 16:13:43',1),(867,1,'2014-07-14','2014-07-14 16:13:48',1),(868,1,'2014-07-14','2014-07-14 16:13:56',1),(869,1,'2014-07-14','2014-07-14 16:14:01',1),(870,1,'2014-07-14','2014-07-14 16:14:07',1),(871,1,'2014-07-14','2014-07-14 16:14:08',1),(872,1,'2014-07-14','2014-07-14 16:15:21',1),(873,1,'2014-07-14','2014-07-14 16:15:37',1),(874,1,'2014-07-14','2014-07-14 16:16:03',1),(875,1,'2014-07-14','2014-07-14 16:16:07',1),(876,1,'2014-07-14','2014-07-14 16:21:19',1),(877,1,'2014-07-14','2014-07-14 16:24:00',1),(878,1,'2014-07-14','2014-07-14 16:24:19',1),(879,1,'2014-07-14','2014-07-14 16:25:17',1),(880,1,'2014-07-14','2014-07-14 21:27:08',1),(881,1,'2014-07-14','2014-07-14 21:27:24',1),(882,1,'2014-07-14','2014-07-14 21:27:40',1),(883,1,'2014-07-14','2014-07-14 21:27:57',1),(884,1,'2014-07-14','2014-07-14 21:28:13',1),(885,1,'2014-07-14','2014-07-14 21:28:29',1),(886,1,'2014-07-14','2014-07-14 21:28:45',1),(887,1,'2014-07-14','2014-07-14 21:29:01',1),(888,1,'2014-07-14','2014-07-14 21:29:17',1),(889,1,'2014-07-14','2014-07-14 21:29:34',1),(890,1,'2014-07-14','2014-07-14 21:29:50',1),(891,1,'2014-07-14','2014-07-14 21:30:06',1),(892,1,'2014-07-14','2014-07-14 21:30:22',1),(893,1,'2014-07-14','2014-07-14 21:30:38',1),(894,1,'2014-07-14','2014-07-14 21:30:53',1),(895,1,'2014-07-14','2014-07-14 21:31:10',1),(896,1,'2014-07-14','2014-07-14 21:31:25',1),(897,1,'2014-07-14','2014-07-14 21:31:42',1),(898,1,'2014-07-14','2014-07-14 21:31:57',1),(899,1,'2014-07-14','2014-07-14 21:32:14',1),(900,1,'2014-07-14','2014-07-14 21:32:29',1),(901,1,'2014-07-14','2014-07-14 21:32:46',1),(902,1,'2014-07-14','2014-07-14 21:33:01',1),(903,1,'2014-07-14','2014-07-14 21:33:17',1),(904,1,'2014-07-14','2014-07-14 21:33:33',1),(905,1,'2014-07-14','2014-07-14 21:33:50',1),(906,1,'2014-07-14','2014-07-14 21:34:05',1),(907,1,'2014-07-14','2014-07-14 21:34:21',1),(908,1,'2014-07-14','2014-07-14 21:34:37',1),(909,1,'2014-07-14','2014-07-14 21:34:53',1),(910,1,'2014-07-14','2014-07-14 21:35:09',1),(911,1,'2014-07-14','2014-07-14 21:35:25',1),(912,1,'2014-07-14','2014-07-14 21:35:41',1),(913,1,'2014-07-14','2014-07-14 21:35:57',1),(914,1,'2014-07-14','2014-07-14 21:36:13',1),(915,1,'2014-07-14','2014-07-14 21:36:29',1),(916,1,'2014-07-14','2014-07-14 21:36:45',1),(917,1,'2014-07-14','2014-07-14 21:37:01',1),(918,1,'2014-07-14','2014-07-14 21:37:17',1),(919,1,'2014-07-14','2014-07-14 21:37:33',1),(920,1,'2014-07-14','2014-07-14 21:37:49',1),(921,1,'2014-07-14','2014-07-14 21:38:05',1),(922,1,'2014-07-14','2014-07-14 21:38:21',1),(923,1,'2014-07-14','2014-07-14 21:38:37',1),(924,1,'2014-07-14','2014-07-14 21:38:53',1),(925,1,'2014-07-14','2014-07-14 21:39:09',1),(926,1,'2014-07-14','2014-07-14 21:39:24',1),(927,1,'2014-07-14','2014-07-14 21:39:41',1),(928,1,'2014-07-14','2014-07-14 21:39:56',1),(929,1,'2014-07-14','2014-07-14 21:40:13',1),(930,1,'2014-07-14','2014-07-14 21:40:29',1),(931,1,'2014-07-14','2014-07-14 21:40:45',1),(932,1,'2014-07-14','2014-07-14 21:41:02',1),(933,1,'2014-07-14','2014-07-14 21:41:18',1),(934,1,'2014-07-14','2014-07-14 21:41:34',1),(935,1,'2014-07-14','2014-07-14 21:41:51',1),(936,1,'2014-07-14','2014-07-14 21:42:07',1),(937,1,'2014-07-14','2014-07-14 21:42:23',1),(938,1,'2014-07-14','2014-07-14 21:42:39',1),(939,1,'2014-07-14','2014-07-14 21:42:55',1),(940,1,'2014-07-14','2014-07-14 21:43:12',1),(941,1,'2014-07-14','2014-07-14 21:43:28',1),(942,1,'2014-07-14','2014-07-14 21:43:44',1),(943,1,'2014-07-14','2014-07-14 21:44:01',1),(944,1,'2014-07-14','2014-07-14 21:44:17',1),(945,1,'2014-07-14','2014-07-14 21:44:33',1),(946,1,'2014-07-14','2014-07-14 21:44:49',1),(947,1,'2014-07-14','2014-07-14 21:45:06',1),(948,1,'2014-07-14','2014-07-14 21:45:22',1),(949,1,'2014-07-14','2014-07-14 21:45:38',1),(950,1,'2014-07-14','2014-07-14 21:45:54',1),(951,1,'2014-07-14','2014-07-14 21:46:11',1),(952,1,'2014-07-14','2014-07-14 21:46:27',1),(953,1,'2014-07-14','2014-07-14 21:46:43',1),(954,1,'2014-07-14','2014-07-14 21:47:00',1),(955,1,'2014-07-14','2014-07-14 21:47:16',1),(956,1,'2014-07-14','2014-07-14 21:47:32',1),(957,1,'2014-07-14','2014-07-14 21:47:48',1),(958,1,'2014-07-14','2014-07-14 21:48:05',1),(959,1,'2014-07-14','2014-07-14 21:48:21',1),(960,1,'2014-07-14','2014-07-14 21:48:37',1),(961,1,'2014-07-14','2014-07-14 21:48:53',1),(962,1,'2014-07-14','2014-07-14 21:49:09',1),(963,1,'2014-07-14','2014-07-14 21:49:26',1),(964,1,'2014-07-14','2014-07-14 21:49:42',1),(965,1,'2014-07-14','2014-07-14 21:49:59',1),(966,1,'2014-07-14','2014-07-14 21:50:15',1),(967,1,'2014-07-14','2014-07-14 21:50:31',1),(968,1,'2014-07-14','2014-07-14 21:50:48',1),(969,1,'2014-07-14','2014-07-14 21:51:04',1),(970,1,'2014-07-14','2014-07-14 21:51:20',1),(971,1,'2014-07-14','2014-07-14 21:51:36',1),(972,1,'2014-07-14','2014-07-14 21:51:53',1),(973,1,'2014-07-14','2014-07-14 21:52:09',1),(974,1,'2014-07-14','2014-07-14 21:52:26',1),(975,1,'2014-07-14','2014-07-14 21:52:42',1),(976,1,'2014-07-14','2014-07-14 21:52:59',1),(977,1,'2014-07-14','2014-07-14 21:53:15',1),(978,1,'2014-07-14','2014-07-14 21:53:31',1),(979,1,'2014-07-14','2014-07-14 21:53:47',1),(980,1,'2014-07-14','2014-07-14 21:54:04',1),(981,1,'2014-07-14','2014-07-14 21:54:20',1),(982,1,'2014-07-14','2014-07-14 21:54:36',1),(983,1,'2014-07-14','2014-07-14 21:54:52',1),(984,1,'2014-07-14','2014-07-14 21:55:09',1),(985,1,'2014-07-14','2014-07-14 21:55:25',1),(986,1,'2014-07-14','2014-07-14 21:55:41',1),(987,1,'2014-07-14','2014-07-14 21:55:57',1),(988,1,'2014-07-14','2014-07-14 21:56:14',1),(989,1,'2014-07-14','2014-07-14 21:56:30',1),(990,1,'2014-07-14','2014-07-14 21:56:46',1),(991,1,'2014-07-14','2014-07-14 21:57:02',1),(992,1,'2014-07-14','2014-07-14 21:57:19',1),(993,1,'2014-07-14','2014-07-14 21:57:35',1),(994,1,'2014-07-14','2014-07-14 21:57:52',1),(995,1,'2014-07-14','2014-07-14 21:58:08',1),(996,1,'2014-07-14','2014-07-14 21:58:24',1),(997,1,'2014-07-14','2014-07-14 21:58:40',1),(998,1,'2014-07-14','2014-07-14 21:58:56',1),(999,1,'2014-07-14','2014-07-14 21:59:12',1),(1000,1,'2014-07-14','2014-07-14 21:59:28',1),(1001,1,'2014-07-14','2014-07-14 21:59:44',1),(1002,1,'2014-07-15','2014-07-14 22:00:00',1),(1003,1,'2014-07-15','2014-07-14 22:00:16',1),(1004,1,'2014-07-15','2014-07-14 22:00:32',1),(1005,1,'2014-07-15','2014-07-14 22:00:48',1),(1006,1,'2014-07-15','2014-07-14 22:01:04',1),(1007,1,'2014-07-15','2014-07-14 22:01:20',1),(1008,1,'2014-07-15','2014-07-14 22:01:36',1),(1009,1,'2014-07-15','2014-07-14 22:01:52',1),(1010,1,'2014-07-15','2014-07-14 22:02:08',1),(1011,1,'2014-07-15','2014-07-14 22:02:24',1),(1012,1,'2014-07-15','2014-07-14 22:02:40',1),(1013,1,'2014-07-15','2014-07-14 22:02:56',1),(1014,1,'2014-07-15','2014-07-14 22:03:12',1),(1015,1,'2014-07-15','2014-07-14 22:03:28',1),(1016,1,'2014-07-15','2014-07-14 22:03:44',1),(1017,1,'2014-07-15','2014-07-14 22:04:00',1),(1018,1,'2014-07-15','2014-07-14 22:04:16',1),(1019,1,'2014-07-15','2014-07-14 22:04:33',1),(1020,1,'2014-07-15','2014-07-14 22:04:49',1),(1021,1,'2014-07-15','2014-07-14 22:05:05',1),(1022,1,'2014-07-15','2014-07-14 22:05:21',1),(1023,1,'2014-07-15','2014-07-14 22:05:38',1),(1024,1,'2014-07-15','2014-07-14 22:05:54',1),(1025,1,'2014-07-15','2014-07-14 22:06:10',1),(1026,1,'2014-07-15','2014-07-14 22:06:26',1),(1027,1,'2014-07-15','2014-07-14 22:06:43',1),(1028,1,'2014-07-15','2014-07-14 22:06:59',1),(1029,1,'2014-07-15','2014-07-14 22:07:15',1),(1030,1,'2014-07-15','2014-07-14 22:07:31',1),(1031,1,'2014-07-15','2014-07-14 22:07:48',1),(1032,1,'2014-07-15','2014-07-14 22:08:04',1),(1033,1,'2014-07-15','2014-07-14 22:08:20',1),(1034,1,'2014-07-15','2014-07-14 22:08:36',1),(1035,1,'2014-07-15','2014-07-14 22:08:52',1),(1036,1,'2014-07-15','2014-07-14 22:09:08',1),(1037,1,'2014-07-15','2014-07-14 22:09:25',1),(1038,1,'2014-07-15','2014-07-14 22:09:41',1),(1039,1,'2014-07-15','2014-07-14 22:09:57',1),(1040,1,'2014-07-15','2014-07-14 22:10:13',1),(1041,1,'2014-07-15','2014-07-14 22:10:29',1),(1042,1,'2014-07-15','2014-07-14 22:10:45',1),(1043,1,'2014-07-15','2014-07-14 22:11:02',1),(1044,1,'2014-07-15','2014-07-14 22:11:18',1),(1045,1,'2014-07-15','2014-07-14 22:11:34',1),(1046,1,'2014-07-15','2014-07-14 22:11:50',1),(1047,1,'2014-07-15','2014-07-14 22:12:06',1),(1048,1,'2014-07-15','2014-07-14 22:12:23',1),(1049,1,'2014-07-15','2014-07-14 22:12:39',1),(1050,1,'2014-07-15','2014-07-14 22:12:55',1),(1051,1,'2014-07-15','2014-07-14 22:13:11',1),(1052,1,'2014-07-15','2014-07-14 22:13:27',1),(1053,1,'2014-07-15','2014-07-14 22:13:43',1),(1054,1,'2014-07-15','2014-07-14 22:13:59',1),(1055,1,'2014-07-15','2014-07-14 22:14:15',1),(1056,1,'2014-07-15','2014-07-14 22:14:31',1),(1057,1,'2014-07-15','2014-07-14 22:14:47',1),(1058,1,'2014-07-15','2014-07-14 22:15:03',1),(1059,1,'2014-07-15','2014-07-14 22:15:19',1),(1060,1,'2014-07-15','2014-07-14 22:15:35',1),(1061,1,'2014-07-15','2014-07-14 22:15:51',1),(1062,1,'2014-07-15','2014-07-14 22:16:07',1),(1063,1,'2014-07-15','2014-07-14 22:16:23',1),(1064,1,'2014-07-15','2014-07-14 22:16:39',1),(1065,1,'2014-07-15','2014-07-14 22:16:55',1),(1066,1,'2014-07-15','2014-07-14 22:17:10',1),(1067,1,'2014-07-15','2014-07-14 22:17:27',1),(1068,1,'2014-07-15','2014-07-14 22:17:42',1),(1069,1,'2014-07-15','2014-07-14 22:17:59',1),(1070,1,'2014-07-15','2014-07-14 22:18:14',1),(1071,1,'2014-07-15','2014-07-14 22:18:30',1),(1072,1,'2014-07-15','2014-07-14 22:18:46',1),(1073,1,'2014-07-15','2014-07-14 22:19:02',1),(1074,1,'2014-07-15','2014-07-14 22:19:18',1),(1075,1,'2014-07-15','2014-07-14 22:19:34',1),(1076,1,'2014-07-15','2014-07-14 22:19:50',1),(1077,1,'2014-07-15','2014-07-14 22:20:06',1),(1078,1,'2014-07-15','2014-07-14 22:20:22',1),(1079,1,'2014-07-15','2014-07-14 22:20:38',1),(1080,1,'2014-07-15','2014-07-14 22:20:54',1),(1081,1,'2014-07-15','2014-07-14 22:21:10',1),(1082,1,'2014-07-15','2014-07-14 22:21:26',1),(1083,1,'2014-07-15','2014-07-14 22:21:42',1),(1084,1,'2014-07-15','2014-07-14 22:21:58',1),(1085,1,'2014-07-15','2014-07-14 22:22:14',1),(1086,1,'2014-07-15','2014-07-14 22:22:29',1),(1087,1,'2014-07-15','2014-07-14 22:22:46',1),(1088,1,'2014-07-15','2014-07-14 22:23:01',1),(1089,1,'2014-07-15','2014-07-14 22:23:18',1),(1090,1,'2014-07-15','2014-07-14 22:23:33',1),(1091,1,'2014-07-15','2014-07-14 22:23:50',1),(1092,1,'2014-07-15','2014-07-14 22:24:05',1),(1093,1,'2014-07-15','2014-07-14 22:24:21',1),(1094,1,'2014-07-15','2014-07-14 22:24:37',1),(1095,1,'2014-07-15','2014-07-14 22:24:53',1),(1096,1,'2014-07-15','2014-07-14 22:25:09',1),(1097,1,'2014-07-15','2014-07-14 22:25:25',1),(1098,1,'2014-07-15','2014-07-14 22:25:41',1),(1099,1,'2014-07-15','2014-07-14 22:25:57',1),(1100,1,'2014-07-15','2014-07-14 22:26:13',1),(1101,1,'2014-07-15','2014-07-14 22:26:29',1),(1102,1,'2014-07-15','2014-07-14 22:26:45',1),(1103,1,'2014-07-15','2014-07-14 22:27:01',1),(1104,1,'2014-07-15','2014-07-14 22:27:17',1),(1105,1,'2014-07-15','2014-07-14 22:27:33',1),(1106,1,'2014-07-15','2014-07-14 22:27:49',1),(1107,1,'2014-07-15','2014-07-14 22:28:05',1),(1108,1,'2014-07-15','2014-07-14 22:28:20',1),(1109,1,'2014-07-15','2014-07-14 22:28:37',1),(1110,1,'2014-07-15','2014-07-14 22:28:52',1),(1111,1,'2014-07-15','2014-07-14 22:29:09',1),(1112,1,'2014-07-15','2014-07-14 22:29:24',1),(1113,1,'2014-07-15','2014-07-14 22:29:40',1),(1114,1,'2014-07-15','2014-07-14 22:29:56',1),(1115,1,'2014-07-15','2014-07-14 22:30:12',1),(1116,1,'2014-07-15','2014-07-14 22:30:28',1),(1117,1,'2014-07-15','2014-07-14 22:30:44',1),(1118,1,'2014-07-15','2014-07-14 22:31:00',1),(1119,1,'2014-07-15','2014-07-14 22:31:16',1),(1120,1,'2014-07-15','2014-07-14 22:31:32',1),(1121,1,'2014-07-15','2014-07-14 22:31:48',1),(1122,1,'2014-07-15','2014-07-14 22:32:04',1),(1123,1,'2014-07-15','2014-07-14 22:32:20',1),(1124,1,'2014-07-15','2014-07-14 22:32:36',1),(1125,1,'2014-07-15','2014-07-14 22:32:52',1),(1126,1,'2014-07-15','2014-07-14 22:33:08',1),(1127,1,'2014-07-15','2014-07-14 22:33:24',1),(1128,1,'2014-07-15','2014-07-14 22:33:40',1),(1129,1,'2014-07-15','2014-07-14 22:33:56',1),(1130,1,'2014-07-15','2014-07-14 22:34:11',1),(1131,1,'2014-07-15','2014-07-14 22:34:28',1),(1132,1,'2014-07-15','2014-07-14 22:34:43',1),(1133,1,'2014-07-15','2014-07-14 22:35:00',1),(1134,1,'2014-07-15','2014-07-14 22:35:15',1),(1135,1,'2014-07-15','2014-07-14 22:35:32',1),(1136,1,'2014-07-15','2014-07-14 22:35:47',1),(1137,1,'2014-07-15','2014-07-14 22:36:03',1),(1138,1,'2014-07-15','2014-07-14 22:36:19',1),(1139,1,'2014-07-15','2014-07-14 22:36:35',1),(1140,1,'2014-07-15','2014-07-14 22:36:51',1),(1141,1,'2014-07-15','2014-07-14 22:37:07',1),(1142,1,'2014-07-15','2014-07-14 22:37:23',1),(1143,1,'2014-07-15','2014-07-14 22:37:39',1),(1144,1,'2014-07-15','2014-07-14 22:37:55',1),(1145,1,'2014-07-15','2014-07-14 22:38:11',1),(1146,1,'2014-07-15','2014-07-14 22:38:27',1),(1147,1,'2014-07-15','2014-07-14 22:38:43',1),(1148,1,'2014-07-15','2014-07-14 22:38:59',1),(1149,1,'2014-07-15','2014-07-14 22:39:15',1),(1150,1,'2014-07-15','2014-07-14 22:39:31',1),(1151,1,'2014-07-15','2014-07-14 22:39:47',1),(1152,1,'2014-07-15','2014-07-14 22:40:02',1),(1153,1,'2014-07-15','2014-07-14 22:40:19',1),(1154,1,'2014-07-15','2014-07-14 22:40:34',1),(1155,1,'2014-07-15','2014-07-14 22:40:51',1),(1156,1,'2014-07-15','2014-07-14 22:41:06',1),(1157,1,'2014-07-15','2014-07-14 22:41:23',1),(1158,1,'2014-07-15','2014-07-14 22:41:38',1),(1159,1,'2014-07-15','2014-07-14 22:41:54',1),(1160,1,'2014-07-15','2014-07-14 22:42:10',1),(1161,1,'2014-07-15','2014-07-14 22:42:26',1),(1162,1,'2014-07-15','2014-07-14 22:42:42',1),(1163,1,'2014-07-15','2014-07-14 22:42:58',1),(1164,1,'2014-07-15','2014-07-14 22:43:14',1),(1165,1,'2014-07-15','2014-07-14 22:43:30',1),(1166,1,'2014-07-15','2014-07-14 22:43:46',1),(1167,1,'2014-07-15','2014-07-14 22:44:02',1),(1168,1,'2014-07-15','2014-07-14 22:44:18',1),(1169,1,'2014-07-15','2014-07-14 22:44:34',1),(1170,1,'2014-07-15','2014-07-14 22:44:50',1),(1171,1,'2014-07-15','2014-07-14 22:45:06',1),(1172,1,'2014-07-15','2014-07-14 22:45:22',1),(1173,1,'2014-07-15','2014-07-14 22:45:38',1),(1174,1,'2014-07-15','2014-07-14 22:45:53',1),(1175,1,'2014-07-15','2014-07-14 22:46:10',1),(1176,1,'2014-07-15','2014-07-14 22:46:25',1),(1177,1,'2014-07-15','2014-07-14 22:46:42',1),(1178,1,'2014-07-15','2014-07-14 22:46:57',1),(1179,1,'2014-07-15','2014-07-14 22:47:14',1),(1180,1,'2014-07-15','2014-07-14 22:47:29',1),(1181,1,'2014-07-15','2014-07-14 22:47:45',1),(1182,1,'2014-07-15','2014-07-14 22:48:01',1),(1183,1,'2014-07-15','2014-07-14 22:48:17',1),(1184,1,'2014-07-15','2014-07-14 22:48:33',1),(1185,1,'2014-07-15','2014-07-14 22:48:49',1),(1186,1,'2014-07-15','2014-07-14 22:49:05',1),(1187,1,'2014-07-15','2014-07-14 22:49:21',1),(1188,1,'2014-07-15','2014-07-14 22:49:37',1),(1189,1,'2014-07-15','2014-07-14 22:49:53',1),(1190,1,'2014-07-15','2014-07-14 22:50:09',1),(1191,1,'2014-07-15','2014-07-14 22:50:25',1),(1192,1,'2014-07-15','2014-07-14 22:50:41',1),(1193,1,'2014-07-15','2014-07-14 22:50:57',1),(1194,1,'2014-07-15','2014-07-14 22:51:12',1),(1195,1,'2014-07-15','2014-07-14 22:51:29',1),(1196,1,'2014-07-15','2014-07-14 22:51:44',1),(1197,1,'2014-07-15','2014-07-14 22:52:01',1),(1198,1,'2014-07-15','2014-07-14 22:52:16',1),(1199,1,'2014-07-15','2014-07-14 22:52:33',1),(1200,1,'2014-07-15','2014-07-14 22:52:48',1),(1201,1,'2014-07-15','2014-07-14 22:53:04',1),(1202,1,'2014-07-15','2014-07-14 22:53:20',1),(1203,1,'2014-07-15','2014-07-14 22:53:36',1),(1204,1,'2014-07-15','2014-07-14 22:53:52',1),(1205,1,'2014-07-15','2014-07-14 22:54:08',1),(1206,1,'2014-07-15','2014-07-14 22:54:24',1),(1207,1,'2014-07-15','2014-07-14 22:54:40',1),(1208,1,'2014-07-15','2014-07-14 22:54:56',1),(1209,1,'2014-07-15','2014-07-14 22:55:12',1),(1210,1,'2014-07-15','2014-07-14 22:55:28',1),(1211,1,'2014-07-15','2014-07-14 22:55:44',1),(1212,1,'2014-07-15','2014-07-14 22:56:00',1),(1213,1,'2014-07-15','2014-07-14 22:56:16',1),(1214,1,'2014-07-15','2014-07-14 22:56:32',1),(1215,1,'2014-07-15','2014-07-14 22:56:48',1),(1216,1,'2014-07-15','2014-07-14 22:57:03',1),(1217,1,'2014-07-15','2014-07-14 22:57:20',1),(1218,1,'2014-07-15','2014-07-14 22:57:35',1),(1219,1,'2014-07-15','2014-07-14 22:57:52',1),(1220,1,'2014-07-15','2014-07-14 22:58:07',1),(1221,1,'2014-07-15','2014-07-14 22:58:23',1),(1222,1,'2014-07-15','2014-07-14 22:58:39',1),(1223,1,'2014-07-15','2014-07-14 22:58:55',1),(1224,1,'2014-07-15','2014-07-14 22:59:11',1),(1225,1,'2014-07-15','2014-07-14 22:59:27',1),(1226,1,'2014-07-15','2014-07-14 22:59:43',1),(1227,1,'2014-07-15','2014-07-14 22:59:59',1),(1228,1,'2014-07-15','2014-07-14 23:00:15',1),(1229,1,'2014-07-15','2014-07-14 23:00:31',1),(1230,1,'2014-07-15','2014-07-14 23:00:47',1),(1231,1,'2014-07-15','2014-07-14 23:01:03',1),(1232,1,'2014-07-15','2014-07-14 23:01:19',1),(1233,1,'2014-07-15','2014-07-14 23:01:35',1),(1234,1,'2014-07-15','2014-07-14 23:01:51',1),(1235,1,'2014-07-15','2014-07-14 23:02:07',1),(1236,1,'2014-07-15','2014-07-14 23:02:22',1),(1237,1,'2014-07-15','2014-07-14 23:02:39',1),(1238,1,'2014-07-15','2014-07-14 23:02:54',1),(1239,1,'2014-07-15','2014-07-14 23:03:11',1),(1240,1,'2014-07-15','2014-07-14 23:03:26',1),(1241,1,'2014-07-15','2014-07-14 23:03:42',1),(1242,1,'2014-07-15','2014-07-14 23:03:58',1),(1243,1,'2014-07-15','2014-07-14 23:04:14',1),(1244,1,'2014-07-15','2014-07-14 23:04:30',1),(1245,1,'2014-07-15','2014-07-14 23:04:46',1),(1246,1,'2014-07-15','2014-07-14 23:05:02',1),(1247,1,'2014-07-15','2014-07-14 23:05:18',1),(1248,1,'2014-07-15','2014-07-14 23:05:34',1),(1249,1,'2014-07-15','2014-07-14 23:05:50',1),(1250,1,'2014-07-15','2014-07-14 23:06:06',1),(1251,1,'2014-07-15','2014-07-14 23:06:22',1),(1252,1,'2014-07-15','2014-07-14 23:06:38',1),(1253,1,'2014-07-15','2014-07-14 23:06:54',1),(1254,1,'2014-07-15','2014-07-14 23:07:10',1),(1255,1,'2014-07-15','2014-07-14 23:07:26',1),(1256,1,'2014-07-15','2014-07-14 23:07:41',1),(1257,1,'2014-07-15','2014-07-14 23:07:58',1),(1258,1,'2014-07-15','2014-07-14 23:08:13',1),(1259,1,'2014-07-15','2014-07-14 23:08:30',1),(1260,1,'2014-07-15','2014-07-14 23:08:45',1),(1261,1,'2014-07-15','2014-07-14 23:09:02',1),(1262,1,'2014-07-15','2014-07-14 23:09:17',1),(1263,1,'2014-07-15','2014-07-14 23:09:33',1),(1264,1,'2014-07-15','2014-07-14 23:09:49',1),(1265,1,'2014-07-15','2014-07-14 23:10:05',1),(1266,1,'2014-07-15','2014-07-14 23:10:21',1),(1267,1,'2014-07-15','2014-07-14 23:10:37',1),(1268,1,'2014-07-15','2014-07-14 23:10:53',1),(1269,1,'2014-07-15','2014-07-14 23:11:09',1),(1270,1,'2014-07-15','2014-07-14 23:11:25',1),(1271,1,'2014-07-15','2014-07-14 23:11:41',1),(1272,1,'2014-07-15','2014-07-14 23:11:57',1),(1273,1,'2014-07-15','2014-07-14 23:12:13',1),(1274,1,'2014-07-15','2014-07-14 23:12:29',1),(1275,1,'2014-07-15','2014-07-14 23:12:45',1),(1276,1,'2014-07-15','2014-07-14 23:13:00',1),(1277,1,'2014-07-15','2014-07-14 23:13:16',1),(1278,1,'2014-07-15','2014-07-14 23:13:32',1),(1279,1,'2014-07-15','2014-07-14 23:13:48',1),(1280,1,'2014-07-15','2014-07-14 23:14:04',1),(1281,1,'2014-07-15','2014-07-14 23:14:20',1),(1282,1,'2014-07-15','2014-07-14 23:14:36',1),(1283,1,'2014-07-15','2014-07-14 23:14:52',1),(1284,1,'2014-07-15','2014-07-14 23:15:08',1),(1285,1,'2014-07-15','2014-07-15 08:17:31',1),(1286,1,'2014-07-15','2014-07-15 08:17:59',1),(1287,1,'2014-07-15','2014-07-15 08:18:15',1),(1288,1,'2014-07-15','2014-07-15 08:18:31',1),(1289,1,'2014-07-15','2014-07-15 08:18:48',1),(1290,1,'2014-07-15','2014-07-15 08:19:05',1),(1291,1,'2014-07-15','2014-07-15 08:19:21',1),(1292,1,'2014-07-15','2014-07-15 08:19:38',1),(1293,1,'2014-07-15','2014-07-15 08:19:54',1),(1294,1,'2014-07-15','2014-07-15 08:20:11',1),(1295,1,'2014-07-15','2014-07-15 08:20:27',1),(1296,1,'2014-07-15','2014-07-15 08:20:44',1),(1297,1,'2014-07-15','2014-07-15 08:21:02',1),(1298,1,'2014-07-15','2014-07-15 08:21:19',1),(1299,1,'2014-07-15','2014-07-15 08:21:36',1),(1300,1,'2014-07-15','2014-07-15 08:22:07',1),(1301,1,'2014-07-15','2014-07-15 08:22:38',1),(1302,1,'2014-07-15','2014-07-15 08:23:05',1),(1303,1,'2014-07-15','2014-07-15 08:23:35',1),(1304,1,'2014-07-15','2014-07-15 08:24:07',1),(1305,1,'2014-07-15','2014-07-15 10:06:46',1),(1306,107,'2014-07-15','2014-07-15 10:06:49',1),(1307,1,'2014-07-15','2014-07-15 10:06:54',1),(1308,1,'2014-07-15','2014-07-15 10:07:02',1),(1309,1,'2014-07-15','2014-07-15 10:07:05',1),(1310,1,'2014-07-15','2014-07-15 10:08:28',1),(1311,1,'2014-07-15','2014-07-15 10:08:29',1),(1312,1,'2014-07-15','2014-07-15 10:08:52',1),(1313,1,'2014-07-15','2014-07-15 10:10:46',1),(1314,1,'2014-07-15','2014-07-15 10:12:17',1),(1315,1,'2014-07-15','2014-07-15 10:12:22',1),(1316,1,'2014-07-15','2014-07-15 10:12:49',1),(1317,1,'2014-07-15','2014-07-15 10:12:50',1),(1318,1,'2014-07-15','2014-07-15 10:13:18',1),(1319,1,'2014-07-15','2014-07-15 10:13:52',1),(1320,1,'2014-07-15','2014-07-15 10:13:53',1),(1321,1,'2014-07-15','2014-07-15 10:14:39',1),(1322,1,'2014-07-15','2014-07-15 10:15:12',1),(1323,1,'2014-07-15','2014-07-15 10:15:38',1),(1324,1,'2014-07-15','2014-07-15 10:16:16',1),(1325,1,'2014-07-15','2014-07-15 10:16:39',1),(1326,1,'2014-07-15','2014-07-15 10:16:45',1),(1327,1,'2014-07-15','2014-07-15 10:16:51',1),(1328,1,'2014-07-15','2014-07-15 10:26:40',1),(1329,1,'2014-07-15','2014-07-15 10:27:19',1),(1330,1,'2014-07-15','2014-07-15 10:32:33',1),(1331,1,'2014-07-15','2014-07-15 10:33:00',1),(1332,1,'2014-07-15','2014-07-15 10:37:01',1),(1333,1,'2014-07-15','2014-07-15 10:39:07',1),(1334,1,'2014-07-15','2014-07-15 10:40:36',1),(1335,1,'2014-07-15','2014-07-15 10:47:00',1),(1336,1,'2014-07-15','2014-07-15 11:32:09',1),(1337,2,'2014-07-15','2014-07-15 11:32:42',1),(1338,51,'2014-07-15','2014-07-15 11:32:49',1),(1339,61,'2014-07-15','2014-07-15 11:32:55',1),(1340,61,'2014-07-15','2014-07-15 11:33:28',1),(1341,2,'2014-07-15','2014-07-15 11:33:40',1),(1342,23,'2014-07-15','2014-07-15 11:33:51',1),(1343,2,'2014-07-15','2014-07-15 11:33:59',1),(1344,51,'2014-07-15','2014-07-15 11:34:10',1),(1345,60,'2014-07-15','2014-07-15 11:34:16',1),(1346,60,'2014-07-15','2014-07-15 11:34:24',1),(1347,60,'2014-07-15','2014-07-15 11:34:25',1),(1348,60,'2014-07-15','2014-07-15 11:34:28',1),(1349,1,'2014-07-15','2014-07-15 12:05:35',1),(1350,1,'2014-07-15','2014-07-15 12:06:20',1),(1351,1,'2014-07-15','2014-07-15 12:07:47',1),(1352,1,'2014-07-15','2014-07-15 12:10:00',1),(1353,1,'2014-07-15','2014-07-15 12:10:38',1),(1354,1,'2014-07-15','2014-07-15 12:10:53',1),(1355,1,'2014-07-15','2014-07-15 12:11:06',1),(1356,1,'2014-07-15','2014-07-15 12:11:30',1),(1357,1,'2014-07-15','2014-07-15 12:11:53',1),(1358,1,'2014-07-15','2014-07-15 12:13:13',1),(1359,1,'2014-07-15','2014-07-15 12:13:38',1),(1360,1,'2014-07-15','2014-07-15 12:13:49',1),(1361,1,'2014-07-15','2014-07-15 12:14:10',1),(1362,1,'2014-07-15','2014-07-15 12:21:59',1),(1363,1,'2014-07-15','2014-07-15 12:22:51',1),(1364,1,'2014-07-15','2014-07-15 12:23:05',1),(1365,1,'2014-07-15','2014-07-15 12:24:27',1),(1366,1,'2014-07-15','2014-07-15 13:54:31',1),(1367,2,'2014-07-15','2014-07-15 13:54:41',1),(1368,7,'2014-07-15','2014-07-15 13:54:56',1),(1369,2,'2014-07-15','2014-07-15 13:55:03',1),(1370,50,'2014-07-15','2014-07-15 13:55:20',1),(1371,48,'2014-07-15','2014-07-15 13:55:23',1),(1372,48,'2014-07-15','2014-07-15 13:55:37',1),(1373,48,'2014-07-15','2014-07-15 13:55:38',1),(1374,50,'2014-07-15','2014-07-15 13:55:52',1),(1375,50,'2014-07-15','2014-07-15 13:56:10',1),(1376,46,'2014-07-15','2014-07-15 13:56:42',1),(1377,46,'2014-07-15','2014-07-15 13:56:54',1),(1378,43,'2014-07-15','2014-07-15 13:57:04',1),(1379,43,'2014-07-15','2014-07-15 13:57:11',1),(1380,1,'2014-07-15','2014-07-15 13:57:18',1),(1381,1,'2014-07-15','2014-07-15 13:57:25',1),(1382,1,'2014-07-15','2014-07-15 14:01:35',1),(1383,1,'2014-07-15','2014-07-15 14:01:43',1),(1384,1,'2014-07-15','2014-07-15 14:21:13',1),(1385,1,'2014-07-15','2014-07-15 14:21:13',1),(1386,1,'2014-07-15','2014-07-15 14:21:47',1),(1387,1,'2014-07-15','2014-07-15 14:21:49',1),(1388,1,'2014-07-15','2014-07-15 14:21:59',1),(1389,1,'2014-07-15','2014-07-15 14:22:36',1),(1390,1,'2014-07-15','2014-07-15 14:22:58',1),(1391,1,'2014-07-15','2014-07-15 14:22:58',1),(1392,1,'2014-07-15','2014-07-15 14:23:12',1),(1393,2,'2014-07-15','2014-07-15 14:23:23',1),(1394,7,'2014-07-15','2014-07-15 14:23:27',1),(1395,6,'2014-07-15','2014-07-15 14:24:10',1),(1396,7,'2014-07-15','2014-07-15 14:24:10',1),(1397,1,'2014-07-15','2014-07-15 14:24:14',1),(1398,1,'2014-07-15','2014-07-15 14:24:23',1),(1399,1,'2014-07-15','2014-07-15 14:24:55',1),(1400,129,'2014-07-15','2014-07-15 14:25:00',1),(1401,2,'2014-07-15','2014-07-15 14:25:15',1),(1402,7,'2014-07-15','2014-07-15 14:25:19',1),(1403,6,'2014-07-15','2014-07-15 14:25:46',1),(1404,7,'2014-07-15','2014-07-15 14:25:46',1),(1405,1,'2014-07-15','2014-07-15 14:25:50',1),(1406,130,'2014-07-15','2014-07-15 14:25:59',1),(1407,130,'2014-07-15','2014-07-15 14:26:19',1),(1408,2,'2014-07-15','2014-07-15 14:26:28',1),(1409,32,'2014-07-15','2014-07-15 14:26:32',1),(1410,33,'2014-07-15','2014-07-15 14:26:40',1),(1411,33,'2014-07-15','2014-07-15 14:26:56',1),(1412,32,'2014-07-15','2014-07-15 14:26:56',1),(1413,102,'2014-07-15','2014-07-15 14:27:03',1),(1414,102,'2014-07-15','2014-07-15 14:27:11',1),(1415,102,'2014-07-15','2014-07-15 14:27:11',1),(1416,102,'2014-07-15','2014-07-15 14:27:23',1),(1417,32,'2014-07-15','2014-07-15 14:27:23',1),(1418,32,'2014-07-15','2014-07-15 14:27:27',1),(1419,131,'2014-07-15','2014-07-15 14:27:27',1),(1420,131,'2014-07-15','2014-07-15 14:27:42',1),(1421,131,'2014-07-15','2014-07-15 14:28:13',1),(1422,129,'2014-07-15','2014-07-15 14:28:18',1),(1423,129,'2014-07-15','2014-07-15 14:28:27',1),(1424,129,'2014-07-15','2014-07-15 14:28:39',1),(1425,1,'2014-07-15','2014-07-15 14:29:14',1),(1426,130,'2014-07-15','2014-07-15 14:29:16',1),(1427,130,'2014-07-15','2014-07-15 14:29:20',1),(1428,130,'2014-07-15','2014-07-15 14:29:44',1),(1429,1,'2014-07-15','2014-07-15 14:29:48',1),(1430,130,'2014-07-15','2014-07-15 14:29:56',1),(1431,1,'2014-07-15','2014-07-15 14:29:59',1),(1432,1,'2014-07-15','2014-07-15 14:30:08',1),(1433,1,'2014-07-15','2014-07-15 14:30:54',1),(1434,1,'2014-07-15','2014-07-15 14:31:16',1),(1435,1,'2014-07-15','2014-07-15 14:31:43',1),(1436,1,'2014-07-15','2014-07-15 14:32:09',1),(1437,1,'2014-07-15','2014-07-15 14:32:32',1),(1438,1,'2014-07-15','2014-07-15 14:32:45',1),(1439,130,'2014-07-15','2014-07-15 14:33:05',1),(1440,129,'2014-07-15','2014-07-15 14:33:11',1),(1441,1,'2014-07-15','2014-07-15 14:33:27',1),(1442,1,'2014-07-15','2014-07-15 14:33:55',1),(1443,1,'2014-07-15','2014-07-15 14:36:07',1),(1444,1,'2014-07-15','2014-07-15 14:36:25',1),(1445,1,'2014-07-15','2014-07-15 14:36:30',1),(1446,1,'2014-07-15','2014-07-15 14:37:11',1),(1447,1,'2014-07-15','2014-07-15 14:37:29',1),(1448,1,'2014-07-15','2014-07-15 14:37:54',1),(1449,1,'2014-07-15','2014-07-15 14:38:27',1),(1450,1,'2014-07-15','2014-07-15 14:38:36',1),(1451,1,'2014-07-15','2014-07-15 14:38:49',1),(1452,1,'2014-07-15','2014-07-15 14:39:15',1),(1453,130,'2014-07-15','2014-07-15 14:40:22',1),(1454,32,'2014-07-15','2014-07-15 14:40:30',1),(1455,129,'2014-07-15','2014-07-15 14:40:39',1),(1456,129,'2014-07-15','2014-07-15 14:40:45',1),(1457,129,'2014-07-15','2014-07-15 14:41:03',1),(1458,1,'2014-07-15','2014-07-15 14:41:14',1),(1459,130,'2014-07-15','2014-07-15 14:41:28',1),(1460,129,'2014-07-15','2014-07-15 14:41:37',1),(1461,129,'2014-07-15','2014-07-15 14:41:47',1),(1462,1,'2014-07-15','2014-07-15 14:42:18',1),(1463,130,'2014-07-15','2014-07-15 14:42:23',1),(1464,1,'2014-07-15','2014-07-15 14:42:27',1),(1465,129,'2014-07-15','2014-07-15 14:42:30',1),(1466,1,'2014-07-15','2014-07-15 14:46:18',1),(1467,130,'2014-07-15','2014-07-15 14:46:21',1),(1468,129,'2014-07-15','2014-07-15 14:46:24',1),(1469,129,'2014-07-15','2014-07-15 14:46:53',1),(1470,1,'2014-07-15','2014-07-15 14:46:56',1),(1471,130,'2014-07-15','2014-07-15 14:47:01',1),(1472,130,'2014-07-15','2014-07-15 14:47:04',1),(1473,130,'2014-07-15','2014-07-15 14:50:13',1),(1474,130,'2014-07-15','2014-07-15 14:50:24',1),(1475,130,'2014-07-15','2014-07-15 14:50:33',1),(1476,1,'2014-07-15','2014-07-15 14:51:18',1),(1477,130,'2014-07-15','2014-07-15 14:51:22',1),(1478,130,'2014-07-15','2014-07-15 14:51:25',1),(1479,130,'2014-07-15','2014-07-15 14:51:36',1),(1480,7,'2014-07-15','2014-07-15 14:52:12',1),(1481,1,'2014-07-15','2014-07-15 14:52:50',1),(1482,130,'2014-07-15','2014-07-15 14:52:54',1),(1483,130,'2014-07-15','2014-07-15 14:53:17',1),(1484,24,'2014-07-15','2014-07-15 14:54:17',1),(1485,1,'2014-07-15','2014-07-15 14:54:27',1),(1486,130,'2014-07-15','2014-07-15 14:54:35',1),(1487,130,'2014-07-15','2014-07-15 14:54:44',1),(1488,50,'2014-07-15','2014-07-15 15:00:30',1),(1489,50,'2014-07-15','2014-07-15 15:00:38',1),(1490,46,'2014-07-15','2014-07-15 15:01:11',1),(1491,1,'2014-07-15','2014-07-15 15:01:23',1),(1492,130,'2014-07-15','2014-07-15 15:01:27',1),(1493,1,'2014-07-15','2014-07-15 15:03:23',1),(1494,130,'2014-07-15','2014-07-15 15:03:37',1),(1495,1,'2014-07-15','2014-07-15 15:05:56',1),(1496,130,'2014-07-15','2014-07-15 15:06:09',1),(1497,1,'2014-07-15','2014-07-15 15:07:02',1),(1498,1,'2014-07-15','2014-07-15 15:07:08',1),(1499,1,'2014-07-15','2014-07-15 15:07:15',1),(1500,1,'2014-07-15','2014-07-15 15:07:24',1),(1501,51,'2014-07-15','2014-07-15 15:07:38',1),(1502,60,'2014-07-15','2014-07-15 15:07:48',1),(1503,60,'2014-07-15','2014-07-15 15:08:35',1),(1504,60,'2014-07-15','2014-07-15 15:08:36',1),(1505,60,'2014-07-15','2014-07-15 15:08:39',1),(1506,1,'2014-07-15','2014-07-15 15:08:47',1),(1507,130,'2014-07-15','2014-07-15 15:08:55',1),(1508,130,'2014-07-15','2014-07-15 15:10:00',1),(1509,130,'2014-07-15','2014-07-15 15:10:40',1),(1510,130,'2014-07-15','2014-07-15 15:10:46',1),(1511,130,'2014-07-15','2014-07-15 15:11:02',1),(1512,2,'2014-07-15','2014-07-15 15:13:30',1),(1513,2,'2014-07-15','2014-07-15 15:13:41',1),(1514,28,'2014-07-15','2014-07-15 15:13:50',1),(1515,28,'2014-07-15','2014-07-15 15:13:56',1),(1516,28,'2014-07-15','2014-07-15 15:14:01',1),(1517,1,'2014-07-15','2014-07-15 15:14:07',1),(1518,130,'2014-07-15','2014-07-15 15:14:28',1),(1519,130,'2014-07-15','2014-07-15 15:22:49',1),(1520,130,'2014-07-15','2014-07-15 15:23:53',1),(1521,130,'2014-07-15','2014-07-15 15:24:10',1),(1522,130,'2014-07-15','2014-07-15 15:24:14',1),(1523,1,'2014-07-15','2014-07-15 15:26:15',1),(1524,130,'2014-07-15','2014-07-15 15:36:54',1),(1525,130,'2014-07-15','2014-07-15 15:37:05',1),(1526,130,'2014-07-15','2014-07-15 15:37:14',1),(1527,2,'2014-07-15','2014-07-15 15:48:01',1),(1528,51,'2014-07-15','2014-07-15 15:48:05',1),(1529,60,'2014-07-15','2014-07-15 15:48:11',1),(1530,60,'2014-07-15','2014-07-15 15:48:17',1),(1531,60,'2014-07-15','2014-07-15 15:48:18',1),(1532,60,'2014-07-15','2014-07-15 15:48:22',1),(1533,60,'2014-07-15','2014-07-15 15:48:29',1),(1534,60,'2014-07-15','2014-07-15 15:48:30',1),(1535,1,'2014-07-15','2014-07-15 15:48:41',1),(1536,1,'2014-07-15','2014-07-15 15:48:57',1),(1537,1,'2014-07-15','2014-07-15 15:49:22',1),(1538,2,'2014-07-15','2014-07-15 15:49:31',1),(1539,51,'2014-07-15','2014-07-15 15:50:03',1),(1540,2,'2014-07-15','2014-07-15 15:50:10',1),(1541,7,'2014-07-15','2014-07-15 15:50:14',1),(1542,130,'2014-07-15','2014-07-15 15:50:22',1),(1543,130,'2014-07-15','2014-07-15 15:51:35',1),(1544,130,'2014-07-15','2014-07-15 15:51:46',1),(1545,130,'2014-07-15','2014-07-15 15:52:35',1),(1546,130,'2014-07-15','2014-07-15 15:52:38',1),(1547,130,'2014-07-15','2014-07-15 15:53:09',1),(1548,2,'2014-07-15','2014-07-15 15:53:16',1),(1549,28,'2014-07-15','2014-07-15 15:53:19',1),(1550,28,'2014-07-15','2014-07-15 15:53:23',1),(1551,28,'2014-07-15','2014-07-15 15:53:25',1),(1552,1,'2014-07-15','2014-07-15 15:53:28',1),(1553,1,'2014-07-15','2014-07-15 15:54:20',0),(1554,1,'2014-07-15','2014-07-15 15:54:27',0),(1555,1,'2014-07-15','2014-07-15 15:54:32',0),(1556,111,'2014-07-15','2014-07-15 15:54:39',0),(1557,111,'2014-07-15','2014-07-15 15:54:50',0),(1558,1,'2014-07-15','2014-07-15 15:54:53',1),(1559,51,'2014-07-15','2014-07-15 15:55:15',1),(1560,60,'2014-07-15','2014-07-15 15:55:19',1),(1561,60,'2014-07-15','2014-07-15 15:55:29',1),(1562,60,'2014-07-15','2014-07-15 15:55:29',1),(1563,60,'2014-07-15','2014-07-15 15:55:37',1),(1564,60,'2014-07-15','2014-07-15 15:55:37',1),(1565,1,'2014-07-15','2014-07-15 15:55:42',1),(1566,60,'2014-07-15','2014-07-15 15:56:00',1),(1567,60,'2014-07-15','2014-07-15 15:56:06',1),(1568,60,'2014-07-15','2014-07-15 15:56:07',1),(1569,1,'2014-07-15','2014-07-15 15:56:11',1),(1570,130,'2014-07-15','2014-07-15 15:56:19',1),(1571,49,'2014-07-15','2014-07-15 15:56:53',1),(1572,2,'2014-07-15','2014-07-15 15:57:03',1),(1573,28,'2014-07-15','2014-07-15 15:57:08',1),(1574,1,'2014-07-15','2014-07-15 15:57:22',1),(1575,1,'2014-07-15','2014-07-15 15:57:27',1),(1576,130,'2014-07-15','2014-07-15 15:57:34',1),(1577,1,'2014-07-15','2014-07-15 15:57:43',1),(1578,28,'2014-07-15','2014-07-15 15:58:12',1),(1579,31,'2014-07-15','2014-07-15 15:58:22',1),(1580,31,'2014-07-15','2014-07-15 15:58:32',1),(1581,31,'2014-07-15','2014-07-15 15:58:33',1),(1582,51,'2014-07-15','2014-07-15 15:58:43',1),(1583,67,'2014-07-15','2014-07-15 15:58:51',1),(1584,67,'2014-07-15','2014-07-15 15:58:58',1),(1585,67,'2014-07-15','2014-07-15 15:58:58',1),(1586,1,'2014-07-15','2014-07-15 15:59:02',1),(1587,130,'2014-07-15','2014-07-15 15:59:19',1),(1588,1,'2014-07-15','2014-07-15 16:00:50',1),(1589,51,'2014-07-15','2014-07-15 16:00:57',1),(1590,60,'2014-07-15','2014-07-15 16:01:01',1),(1591,60,'2014-07-15','2014-07-15 16:01:06',1),(1592,60,'2014-07-15','2014-07-15 16:01:06',1),(1593,60,'2014-07-15','2014-07-15 16:01:13',1),(1594,60,'2014-07-15','2014-07-15 16:01:13',1),(1595,1,'2014-07-15','2014-07-15 16:01:18',1),(1596,129,'2014-07-15','2014-07-15 16:01:22',1),(1597,1,'2014-07-15','2014-07-15 16:01:30',1),(1598,130,'2014-07-15','2014-07-15 16:01:34',1),(1599,130,'2014-07-15','2014-07-15 16:01:42',1),(1600,1,'2014-07-15','2014-07-15 16:04:55',1),(1601,1,'2014-07-15','2014-07-15 16:05:00',1),(1602,1,'2014-07-15','2014-07-15 16:06:01',0),(1603,1,'2014-07-15','2014-07-15 16:06:15',0),(1604,1,'2014-07-15','2014-07-15 16:06:28',0),(1605,1,'2014-07-15','2014-07-15 16:06:31',0),(1606,1,'2014-07-15','2014-07-15 16:06:33',1),(1607,1,'2014-07-15','2014-07-15 16:07:30',1),(1608,1,'2014-07-15','2014-07-15 16:07:45',1),(1609,1,'2014-07-15','2014-07-15 16:07:46',0),(1610,1,'2014-07-15','2014-07-15 16:09:14',0),(1611,1,'2014-07-15','2014-07-15 16:09:25',0),(1612,1,'2014-07-15','2014-07-15 16:09:57',1),(1613,1,'2014-07-15','2014-07-15 16:11:33',1),(1614,1,'2014-07-15','2014-07-15 16:12:02',1),(1615,1,'2014-07-15','2014-07-15 16:12:05',1),(1616,1,'2014-07-15','2014-07-15 16:12:54',0),(1617,1,'2014-07-15','2014-07-15 16:12:55',0),(1618,1,'2014-07-15','2014-07-15 16:12:56',0),(1619,1,'2014-07-15','2014-07-15 16:12:57',0),(1620,1,'2014-07-15','2014-07-15 16:12:58',1),(1621,1,'2014-07-15','2014-07-15 16:12:59',0),(1622,1,'2014-07-15','2014-07-15 16:13:00',0),(1623,1,'2014-07-15','2014-07-15 16:13:00',1),(1624,1,'2014-07-15','2014-07-15 16:13:01',0),(1625,1,'2014-07-15','2014-07-15 16:13:02',0),(1626,1,'2014-07-15','2014-07-15 16:13:03',0),(1627,1,'2014-07-15','2014-07-15 16:13:03',0),(1628,1,'2014-07-15','2014-07-15 16:13:04',0),(1629,1,'2014-07-15','2014-07-15 16:13:04',1),(1630,1,'2014-07-15','2014-07-15 16:13:05',0),(1631,1,'2014-07-15','2014-07-15 16:13:06',0),(1632,1,'2014-07-15','2014-07-15 16:13:07',1),(1633,1,'2014-07-15','2014-07-15 16:13:09',0),(1634,1,'2014-07-15','2014-07-15 16:13:10',0),(1635,1,'2014-07-15','2014-07-15 16:13:11',0),(1636,1,'2014-07-15','2014-07-15 16:13:11',0),(1637,1,'2014-07-15','2014-07-15 16:13:12',0),(1638,1,'2014-07-15','2014-07-15 16:13:13',0),(1639,1,'2014-07-15','2014-07-15 16:13:14',0),(1640,1,'2014-07-15','2014-07-15 16:13:14',0),(1641,1,'2014-07-15','2014-07-15 16:13:15',0),(1642,1,'2014-07-15','2014-07-15 16:13:15',0),(1643,1,'2014-07-15','2014-07-15 16:13:16',0),(1644,1,'2014-07-15','2014-07-15 16:13:16',0),(1645,1,'2014-07-15','2014-07-15 16:13:20',1),(1646,1,'2014-07-15','2014-07-15 16:13:20',0),(1647,1,'2014-07-15','2014-07-15 16:13:23',0),(1648,1,'2014-07-15','2014-07-15 16:13:27',1),(1649,1,'2014-07-15','2014-07-15 16:13:35',1),(1650,1,'2014-07-15','2014-07-15 16:13:35',0),(1651,1,'2014-07-15','2014-07-15 16:13:38',0),(1652,1,'2014-07-15','2014-07-15 16:13:40',0),(1653,1,'2014-07-15','2014-07-15 16:13:43',0),(1654,1,'2014-07-15','2014-07-15 16:13:47',0),(1655,1,'2014-07-15','2014-07-15 16:14:02',0),(1656,1,'2014-07-15','2014-07-15 16:14:05',1),(1657,1,'2014-07-15','2014-07-15 16:14:40',1),(1658,1,'2014-07-15','2014-07-15 16:20:35',1),(1659,1,'2014-07-15','2014-07-15 16:20:51',0),(1660,130,'2014-07-15','2014-07-15 16:21:18',0),(1661,1,'2014-07-15','2014-07-15 16:21:43',0),(1662,129,'2014-07-15','2014-07-15 16:29:09',1),(1663,1,'2014-07-15','2014-07-15 16:29:12',1),(1664,130,'2014-07-15','2014-07-15 16:29:33',1),(1665,24,'2014-07-15','2014-07-15 16:30:44',1),(1666,1,'2014-07-15','2014-07-15 16:30:55',1),(1667,7,'2014-07-15','2014-07-15 16:31:12',1),(1668,1,'2014-07-15','2014-07-15 16:31:43',1),(1669,1,'2014-07-15','2014-07-15 16:31:45',0),(1670,130,'2014-07-15','2014-07-15 16:31:57',1),(1671,129,'2014-07-15','2014-07-15 16:32:01',1),(1672,130,'2014-07-15','2014-07-15 16:32:04',1),(1673,130,'2014-07-15','2014-07-15 17:03:41',1),(1674,130,'2014-07-15','2014-07-15 17:04:50',1),(1675,1,'2014-07-15','2014-07-15 17:05:07',1),(1676,130,'2014-07-15','2014-07-15 17:05:09',1),(1677,130,'2014-07-15','2014-07-15 17:05:18',1),(1678,130,'2014-07-15','2014-07-15 17:05:47',1),(1679,1,'2014-07-15','2014-07-15 17:06:38',1),(1680,130,'2014-07-15','2014-07-15 17:06:53',1),(1681,1,'2014-07-15','2014-07-15 17:09:09',1),(1682,130,'2014-07-15','2014-07-15 17:09:11',1),(1683,1,'2014-07-15','2014-07-15 17:09:17',0),(1684,130,'2014-07-15','2014-07-15 17:09:20',0),(1685,1,'2014-07-15','2014-07-15 17:09:30',0),(1686,129,'2014-07-15','2014-07-15 17:09:36',1),(1687,129,'2014-07-15','2014-07-15 17:09:39',1),(1688,129,'2014-07-15','2014-07-15 17:09:56',1),(1689,1,'2015-01-05','2015-01-05 16:02:50',0),(1690,1,'2015-01-05','2015-01-05 16:03:14',0),(1691,1,'2015-01-05','2015-01-05 16:03:20',0),(1692,1,'2015-01-05','2015-01-05 16:03:26',0),(1693,1,'2015-01-05','2015-01-05 16:03:34',0),(1694,1,'2015-01-05','2015-01-05 16:03:39',0),(1695,1,'2015-01-05','2015-01-05 16:03:48',0),(1696,1,'2015-01-05','2015-01-05 16:06:20',0),(1697,1,'2015-01-05','2015-01-05 16:09:27',0),(1698,1,'2015-01-05','2015-01-05 16:09:32',0),(1699,1,'2015-01-05','2015-01-05 16:09:39',0),(1700,1,'2015-01-05','2015-01-05 16:10:42',0),(1701,1,'2015-01-05','2015-01-05 16:10:49',0),(1702,1,'2015-01-05','2015-01-05 16:25:03',0),(1703,1,'2015-01-05','2015-01-05 16:25:42',0),(1704,111,'2015-01-05','2015-01-05 16:25:45',0),(1705,111,'2015-01-05','2015-01-05 16:27:00',0),(1706,1,'2015-01-05','2015-01-05 16:27:02',1),(1707,107,'2015-01-05','2015-01-05 16:27:04',1),(1708,100,'2015-01-05','2015-01-05 16:27:25',1),(1709,100,'2015-01-05','2015-01-05 16:27:32',1),(1710,100,'2015-01-05','2015-01-05 16:28:04',1),(1711,1,'2015-01-05','2015-01-05 16:28:13',1),(1712,2,'2015-01-05','2015-01-05 16:28:44',1),(1713,47,'2015-01-05','2015-01-05 16:28:59',1),(1714,2,'2015-01-05','2015-01-05 16:29:13',1),(1715,2,'2015-01-05','2015-01-05 16:29:28',1),(1716,45,'2015-01-05','2015-01-05 16:29:38',1),(1717,1,'2015-01-05','2015-01-05 16:30:05',1),(1718,1,'2015-01-05','2015-01-05 16:30:22',1),(1719,2,'2015-01-05','2015-01-05 16:30:26',1),(1720,16,'2015-01-05','2015-01-05 16:30:31',1),(1721,1,'2015-01-05','2015-01-05 16:30:39',1),(1722,1,'2015-01-05','2015-01-05 16:30:44',1),(1723,1,'2015-01-05','2015-01-05 16:31:02',1),(1724,129,'2015-01-05','2015-01-05 16:31:05',1),(1725,1,'2015-01-05','2015-01-05 16:31:12',1),(1726,130,'2015-01-05','2015-01-05 16:31:14',1),(1727,1,'2015-01-05','2015-01-05 16:32:09',1),(1728,111,'2015-01-05','2015-01-05 16:32:16',1),(1729,1,'2015-01-05','2015-01-05 16:32:17',0),(1730,130,'2015-01-05','2015-01-05 16:32:37',0),(1731,1,'2015-01-05','2015-01-05 16:33:59',0),(1732,129,'2015-01-05','2015-01-05 16:38:16',0),(1733,1,'2015-01-05','2015-01-05 16:38:20',0),(1734,130,'2015-01-05','2015-01-05 16:38:23',0),(1735,1,'2015-01-05','2015-01-05 17:03:00',0),(1736,1,'2015-01-05','2015-01-05 18:56:03',0),(1737,1,'2015-01-05','2015-01-05 18:56:32',0),(1738,1,'2015-01-05','2015-01-05 20:22:40',0),(1739,130,'2015-01-05','2015-01-05 20:22:48',0),(1740,1,'2015-01-05','2015-01-05 20:23:00',0),(1741,1,'2015-01-05','2015-01-05 20:38:28',0),(1742,1,'2015-01-05','2015-01-05 20:39:53',0),(1743,1,'2015-01-06','2015-01-06 14:40:40',0),(1744,1,'2015-01-06','2015-01-06 14:40:42',0),(1745,1,'2015-01-06','2015-01-06 15:29:18',0),(1746,1,'2015-01-06','2015-01-06 15:29:43',0),(1747,1,'2015-01-06','2015-01-06 15:29:51',0),(1748,130,'2015-01-06','2015-01-06 15:29:53',0),(1749,1,'2015-01-06','2015-01-06 15:29:57',0),(1750,1,'2015-01-06','2015-01-06 15:30:39',0),(1751,1,'2015-01-06','2015-01-06 15:59:21',0),(1752,1,'2015-01-06','2015-01-06 16:03:00',0),(1753,1,'2015-01-06','2015-01-06 16:25:18',0),(1754,1,'2015-01-06','2015-01-06 19:20:50',0),(1755,129,'2015-01-06','2015-01-06 19:31:11',0),(1756,1,'2015-01-07','2015-01-06 23:49:28',0),(1757,130,'2015-01-07','2015-01-06 23:51:08',0),(1758,111,'2015-01-07','2015-01-06 23:51:59',0),(1759,1,'2015-01-07','2015-01-07 10:46:20',0),(1760,1,'2015-01-07','2015-01-07 13:13:59',0),(1761,1,'2015-01-07','2015-01-07 16:25:01',0),(1762,1,'2015-01-07','2015-01-07 17:09:29',0),(1763,1,'2015-01-07','2015-01-07 19:07:00',0),(1764,1,'2015-01-07','2015-01-07 21:05:32',0),(1765,1,'2015-01-07','2015-01-07 21:57:57',0),(1766,1,'2015-01-08','2015-01-07 23:04:32',0),(1767,1,'2015-01-08','2015-01-08 01:01:30',0),(1768,1,'2015-01-08','2015-01-08 01:02:07',0),(1769,1,'2015-01-08','2015-01-08 01:40:16',0),(1770,1,'2015-01-08','2015-01-08 02:45:08',0),(1771,1,'2015-01-08','2015-01-08 03:02:22',0),(1772,1,'2015-01-08','2015-01-08 03:14:25',0),(1773,129,'2015-01-08','2015-01-08 03:25:11',0),(1774,1,'2015-01-08','2015-01-08 04:43:44',0),(1775,1,'2015-01-08','2015-01-08 04:58:20',0),(1776,1,'2015-01-08','2015-01-08 06:59:40',0),(1777,1,'2015-01-08','2015-01-08 07:56:58',0),(1778,1,'2015-01-08','2015-01-08 11:45:55',0),(1779,1,'2015-01-08','2015-01-08 13:48:18',0),(1780,1,'2015-01-08','2015-01-08 14:14:08',0),(1781,1,'2015-01-08','2015-01-08 14:15:07',0),(1782,1,'2015-01-08','2015-01-08 14:17:17',0),(1783,1,'2015-01-08','2015-01-08 16:28:10',0),(1784,1,'2015-01-08','2015-01-08 17:53:25',0),(1785,1,'2015-01-08','2015-01-08 18:51:49',0),(1786,1,'2015-01-09','2015-01-09 01:02:18',0),(1787,1,'2015-01-09','2015-01-09 07:37:39',0),(1788,1,'2015-01-09','2015-01-09 09:29:22',0),(1789,1,'2015-01-09','2015-01-09 11:33:12',0),(1790,1,'2015-01-09','2015-01-09 12:33:34',0),(1791,1,'2015-01-09','2015-01-09 13:28:08',0),(1792,1,'2015-01-09','2015-01-09 15:23:03',0),(1793,1,'2015-01-09','2015-01-09 16:27:54',0),(1794,1,'2015-01-09','2015-01-09 17:45:33',0),(1795,1,'2015-01-09','2015-01-09 20:41:06',0),(1796,1,'2015-01-09','2015-01-09 21:41:10',0),(1797,1,'2015-01-10','2015-01-09 23:33:51',0),(1798,1,'2015-01-10','2015-01-10 01:01:24',0),(1799,1,'2015-01-10','2015-01-10 01:34:21',0),(1800,1,'2015-01-10','2015-01-10 09:44:43',0),(1801,1,'2015-01-10','2015-01-10 10:32:30',0),(1802,1,'2015-01-10','2015-01-10 13:14:09',0),(1803,1,'2015-01-10','2015-01-10 16:15:40',0),(1804,1,'2015-01-10','2015-01-10 16:31:02',0),(1805,1,'2015-01-10','2015-01-10 18:14:05',0),(1806,1,'2015-01-10','2015-01-10 20:11:07',0),(1807,1,'2015-01-10','2015-01-10 21:10:00',0),(1808,1,'2015-01-11','2015-01-10 23:07:23',0),(1809,1,'2015-01-11','2015-01-11 00:08:32',0),(1810,1,'2015-01-11','2015-01-11 01:05:17',0),(1811,1,'2015-01-11','2015-01-11 02:11:53',0),(1812,1,'2015-01-11','2015-01-11 04:08:44',0),(1813,1,'2015-01-11','2015-01-11 06:06:54',0),(1814,1,'2015-01-11','2015-01-11 08:04:58',0),(1815,1,'2015-01-11','2015-01-11 10:03:43',0),(1816,1,'2015-01-11','2015-01-11 10:52:39',0),(1817,1,'2015-01-11','2015-01-11 12:58:16',0),(1818,1,'2015-01-11','2015-01-11 15:54:45',0),(1819,1,'2015-01-11','2015-01-11 16:27:36',0),(1820,1,'2015-01-11','2015-01-11 17:54:29',0),(1821,1,'2015-01-11','2015-01-11 19:52:12',0),(1822,1,'2015-01-11','2015-01-11 20:13:39',0),(1823,129,'2015-01-11','2015-01-11 20:13:40',0),(1824,130,'2015-01-11','2015-01-11 20:13:42',0),(1825,111,'2015-01-11','2015-01-11 20:13:43',0),(1826,1,'2015-01-11','2015-01-11 21:34:58',0),(1827,1,'2015-01-11','2015-01-11 21:50:21',0),(1828,1,'2015-01-12','2015-01-11 23:49:09',0),(1829,1,'2015-01-12','2015-01-12 00:10:10',0),(1830,1,'2015-01-12','2015-01-12 01:03:08',0),(1831,1,'2015-01-12','2015-01-12 01:48:47',0),(1832,1,'2015-01-12','2015-01-12 03:42:52',0),(1833,1,'2015-01-12','2015-01-12 06:12:18',0),(1834,1,'2015-01-12','2015-01-12 10:56:33',0),(1835,1,'2015-01-12','2015-01-12 13:55:56',0),(1836,1,'2015-01-12','2015-01-12 15:38:56',0),(1837,1,'2015-01-12','2015-01-12 16:21:04',0),(1838,1,'2015-01-12','2015-01-12 17:05:22',0),(1839,1,'2015-01-12','2015-01-12 17:06:07',0),(1840,1,'2015-01-12','2015-01-12 17:48:15',0),(1841,1,'2015-01-12','2015-01-12 17:48:20',0),(1842,1,'2015-01-13','2015-01-13 01:12:07',0),(1843,1,'2015-01-13','2015-01-13 04:50:40',0),(1844,1,'2015-01-13','2015-01-13 06:56:34',0),(1845,1,'2015-01-13','2015-01-13 09:22:41',0),(1846,1,'2015-01-13','2015-01-13 16:25:49',0),(1847,1,'2015-01-13','2015-01-13 16:42:26',0),(1848,1,'2015-01-13','2015-01-13 21:48:22',0),(1849,1,'2015-01-14','2015-01-14 02:00:10',0),(1850,1,'2015-01-14','2015-01-14 03:39:29',0),(1851,1,'2015-01-14','2015-01-14 05:14:26',0),(1852,1,'2015-01-14','2015-01-14 05:14:27',0),(1853,1,'2015-01-14','2015-01-14 05:14:27',0),(1854,1,'2015-01-14','2015-01-14 05:14:28',0),(1855,1,'2015-01-14','2015-01-14 05:14:29',0),(1856,1,'2015-01-14','2015-01-14 05:14:29',0),(1857,1,'2015-01-14','2015-01-14 05:14:29',0),(1858,1,'2015-01-14','2015-01-14 05:14:30',0),(1859,1,'2015-01-14','2015-01-14 10:26:35',0),(1860,1,'2015-01-14','2015-01-14 10:28:22',0),(1861,1,'2015-01-14','2015-01-14 10:36:45',0),(1862,1,'2015-01-14','2015-01-14 10:36:55',0),(1863,1,'2015-01-14','2015-01-14 10:37:03',0),(1864,1,'2015-01-14','2015-01-14 10:37:08',0),(1865,1,'2015-01-14','2015-01-14 10:37:14',0),(1866,1,'2015-01-14','2015-01-14 10:37:19',0),(1867,111,'2015-01-14','2015-01-14 10:37:22',0),(1868,111,'2015-01-14','2015-01-14 10:37:32',0),(1869,111,'2015-01-14','2015-01-14 10:37:43',0),(1870,111,'2015-01-14','2015-01-14 10:39:33',0),(1871,111,'2015-01-14','2015-01-14 10:39:40',0),(1872,1,'2015-01-14','2015-01-14 10:39:42',1),(1873,107,'2015-01-14','2015-01-14 10:39:43',1),(1874,1,'2015-01-14','2015-01-14 10:39:50',1),(1875,1,'2015-01-14','2015-01-14 10:39:53',1),(1876,1,'2015-01-14','2015-01-14 10:39:57',1),(1877,1,'2015-01-14','2015-01-14 10:40:00',1),(1878,1,'2015-01-14','2015-01-14 10:40:00',1),(1879,1,'2015-01-14','2015-01-14 10:40:01',1),(1880,1,'2015-01-14','2015-01-14 10:40:01',1),(1881,1,'2015-01-14','2015-01-14 10:40:01',1),(1882,1,'2015-01-14','2015-01-14 10:40:02',1),(1883,1,'2015-01-14','2015-01-14 10:40:05',1),(1884,1,'2015-01-14','2015-01-14 10:40:07',1),(1885,1,'2015-01-14','2015-01-14 10:40:08',1),(1886,1,'2015-01-14','2015-01-14 10:40:09',1),(1887,1,'2015-01-14','2015-01-14 10:40:10',1),(1888,1,'2015-01-14','2015-01-14 10:40:10',1),(1889,1,'2015-01-14','2015-01-14 10:40:11',1),(1890,1,'2015-01-14','2015-01-14 10:40:11',1),(1891,1,'2015-01-14','2015-01-14 10:40:13',1),(1892,1,'2015-01-14','2015-01-14 10:40:14',1),(1893,1,'2015-01-14','2015-01-14 10:40:14',1),(1894,1,'2015-01-14','2015-01-14 10:40:15',1),(1895,1,'2015-01-14','2015-01-14 10:40:15',1),(1896,1,'2015-01-14','2015-01-14 10:40:16',1),(1897,1,'2015-01-14','2015-01-14 10:40:16',1),(1898,1,'2015-01-14','2015-01-14 10:40:18',1),(1899,1,'2015-01-14','2015-01-14 10:40:19',1),(1900,1,'2015-01-14','2015-01-14 10:40:20',1),(1901,1,'2015-01-14','2015-01-14 10:40:20',1),(1902,1,'2015-01-14','2015-01-14 10:40:21',1),(1903,1,'2015-01-14','2015-01-14 10:40:22',1),(1904,1,'2015-01-14','2015-01-14 10:40:23',1),(1905,1,'2015-01-14','2015-01-14 10:40:23',1),(1906,1,'2015-01-14','2015-01-14 10:40:24',1),(1907,1,'2015-01-14','2015-01-14 10:40:25',1),(1908,1,'2015-01-14','2015-01-14 10:40:26',1),(1909,1,'2015-01-14','2015-01-14 10:40:27',1),(1910,1,'2015-01-14','2015-01-14 10:40:27',1),(1911,1,'2015-01-14','2015-01-14 10:40:27',1),(1912,1,'2015-01-14','2015-01-14 10:40:28',1),(1913,1,'2015-01-14','2015-01-14 10:40:28',1),(1914,1,'2015-01-14','2015-01-14 10:40:30',1),(1915,1,'2015-01-14','2015-01-14 10:40:31',1),(1916,1,'2015-01-14','2015-01-14 10:40:32',1),(1917,1,'2015-01-14','2015-01-14 10:40:33',1),(1918,1,'2015-01-14','2015-01-14 10:40:33',1),(1919,1,'2015-01-14','2015-01-14 10:40:34',1),(1920,2,'2015-01-14','2015-01-14 10:40:59',1),(1921,25,'2015-01-14','2015-01-14 10:41:10',1),(1922,2,'2015-01-14','2015-01-14 10:41:15',1),(1923,7,'2015-01-14','2015-01-14 10:41:29',1),(1924,129,'2015-01-14','2015-01-14 10:41:37',1),(1925,2,'2015-01-14','2015-01-14 10:41:48',1),(1926,47,'2015-01-14','2015-01-14 10:41:59',1),(1927,1,'2015-01-14','2015-01-14 10:42:17',1),(1928,1,'2015-01-14','2015-01-14 10:48:18',1),(1929,1,'2015-01-14','2015-01-14 10:48:57',1),(1930,1,'2015-01-14','2015-01-14 10:49:31',1),(1931,1,'2015-01-14','2015-01-14 10:51:55',1),(1932,130,'2015-01-14','2015-01-14 10:51:59',1),(1933,129,'2015-01-14','2015-01-14 10:52:02',1),(1934,129,'2015-01-14','2015-01-14 10:52:09',1),(1935,129,'2015-01-14','2015-01-14 10:54:26',1),(1936,129,'2015-01-14','2015-01-14 10:54:39',1),(1937,2,'2015-01-14','2015-01-14 10:54:48',1),(1938,51,'2015-01-14','2015-01-14 10:55:15',1),(1939,60,'2015-01-14','2015-01-14 10:55:24',1),(1940,60,'2015-01-14','2015-01-14 10:55:30',1),(1941,60,'2015-01-14','2015-01-14 10:55:30',1),(1942,60,'2015-01-14','2015-01-14 10:59:40',1),(1943,60,'2015-01-14','2015-01-14 10:59:40',1),(1944,60,'2015-01-14','2015-01-14 11:02:13',1),(1945,60,'2015-01-14','2015-01-14 11:02:14',1),(1946,1,'2015-01-14','2015-01-14 11:05:26',1),(1947,130,'2015-01-14','2015-01-14 11:05:30',1),(1948,1,'2015-01-14','2015-01-14 11:53:30',1),(1949,1,'2015-01-14','2015-01-14 11:56:13',1),(1950,1,'2015-01-14','2015-01-14 13:03:35',0),(1951,1,'2015-01-14','2015-01-14 20:47:40',0),(1952,1,'2015-01-15','2015-01-15 03:21:51',0),(1953,1,'2015-01-15','2015-01-15 03:31:12',0),(1954,1,'2015-01-15','2015-01-15 03:31:13',0),(1955,1,'2015-01-15','2015-01-15 06:20:36',0),(1956,1,'2015-01-15','2015-01-15 09:37:46',0),(1957,1,'2015-01-15','2015-01-15 13:39:01',0),(1958,1,'2015-01-15','2015-01-15 15:39:00',0),(1959,1,'2015-01-16','2015-01-16 01:44:19',0),(1960,1,'2015-01-16','2015-01-16 01:50:48',0),(1961,1,'2015-01-16','2015-01-16 07:46:08',0),(1962,1,'2015-01-16','2015-01-16 11:27:59',0),(1963,1,'2015-01-16','2015-01-16 21:33:04',0),(1964,1,'2015-01-16','2015-01-16 22:42:48',0),(1965,1,'2015-01-17','2015-01-17 00:23:09',0),(1966,1,'2015-01-17','2015-01-17 03:16:35',0),(1967,1,'2015-01-17','2015-01-17 05:13:08',0),(1968,1,'2015-01-17','2015-01-17 05:43:06',0),(1969,1,'2015-01-17','2015-01-17 07:10:21',0),(1970,1,'2015-01-17','2015-01-17 09:08:39',0),(1971,1,'2015-01-17','2015-01-17 09:54:42',0),(1972,1,'2015-01-17','2015-01-17 11:09:22',0),(1973,1,'2015-01-17','2015-01-17 13:06:00',0),(1974,1,'2015-01-17','2015-01-17 15:24:01',0),(1975,1,'2015-01-17','2015-01-17 17:25:57',0),(1976,1,'2015-01-17','2015-01-17 18:37:09',0),(1977,1,'2015-01-18','2015-01-18 01:30:23',0),(1978,129,'2015-01-18','2015-01-18 03:55:43',0),(1979,1,'2015-01-18','2015-01-18 07:45:42',0),(1980,1,'2015-01-18','2015-01-18 08:52:44',0),(1981,1,'2015-01-18','2015-01-18 08:55:58',0),(1982,1,'2015-01-18','2015-01-18 09:07:04',0),(1983,1,'2015-01-18','2015-01-18 09:16:14',0),(1984,1,'2015-01-18','2015-01-18 10:05:37',0),(1985,1,'2015-01-18','2015-01-18 11:57:05',0),(1986,1,'2015-01-18','2015-01-18 13:16:42',0),(1987,1,'2015-01-18','2015-01-18 15:04:00',0),(1988,1,'2015-01-18','2015-01-18 15:12:00',0),(1989,1,'2015-01-18','2015-01-18 16:09:11',0),(1990,1,'2015-01-18','2015-01-18 16:09:53',0),(1991,1,'2015-01-18','2015-01-18 16:09:55',0),(1992,1,'2015-01-18','2015-01-18 17:03:36',0),(1993,1,'2015-01-18','2015-01-18 18:29:28',0),(1994,1,'2015-01-19','2015-01-19 01:28:17',0),(1995,1,'2015-01-19','2015-01-19 04:42:35',0),(1996,1,'2015-01-19','2015-01-19 05:01:58',0),(1997,129,'2015-01-19','2015-01-19 05:02:28',0),(1998,111,'2015-01-19','2015-01-19 05:02:29',0),(1999,130,'2015-01-19','2015-01-19 05:02:29',0),(2000,1,'2015-01-19','2015-01-19 06:57:45',0),(2001,1,'2015-01-19','2015-01-19 07:18:16',0),(2002,1,'2015-01-19','2015-01-19 07:18:23',0),(2003,129,'2015-01-19','2015-01-19 07:18:34',0),(2004,130,'2015-01-19','2015-01-19 07:18:35',0),(2005,111,'2015-01-19','2015-01-19 07:18:36',0),(2006,1,'2015-01-19','2015-01-19 08:55:29',0),(2007,1,'2015-01-19','2015-01-19 10:52:24',0),(2008,1,'2015-01-19','2015-01-19 12:55:32',0),(2009,1,'2015-01-19','2015-01-19 14:47:21',0),(2010,1,'2015-01-19','2015-01-19 16:01:01',0),(2011,1,'2015-01-19','2015-01-19 16:53:12',0),(2012,1,'2015-01-19','2015-01-19 17:06:49',0),(2013,1,'2015-01-19','2015-01-19 18:48:08',0),(2014,1,'2015-01-19','2015-01-19 21:23:07',0),(2015,1,'2015-01-20','2015-01-20 01:28:14',0),(2016,1,'2015-01-20','2015-01-20 09:39:32',0),(2017,1,'2015-01-20','2015-01-20 19:05:09',0),(2018,1,'2015-01-21','2015-01-21 00:18:06',0),(2019,1,'2015-01-21','2015-01-21 00:56:00',0),(2020,1,'2015-01-21','2015-01-21 01:05:22',0),(2021,1,'2015-01-21','2015-01-21 04:00:39',0),(2022,1,'2015-01-21','2015-01-21 07:02:05',0),(2023,129,'2015-01-21','2015-01-21 09:56:57',0),(2024,1,'2015-01-21','2015-01-21 11:18:05',0),(2025,1,'2015-01-21','2015-01-21 13:13:10',0),(2026,1,'2015-01-21','2015-01-21 17:03:55',0),(2027,1,'2015-01-21','2015-01-21 18:54:45',0),(2028,1,'2015-01-22','2015-01-22 01:39:26',0),(2029,1,'2015-01-22','2015-01-22 06:07:33',0),(2030,1,'2015-01-22','2015-01-22 10:53:47',0),(2031,1,'2015-01-22','2015-01-22 12:28:06',0),(2032,1,'2015-01-23','2015-01-23 13:37:15',0),(2033,1,'2015-01-23','2015-01-23 22:27:11',0),(2034,1,'2015-01-23','2015-01-23 22:27:12',0),(2035,1,'2015-01-23','2015-01-23 22:27:13',0),(2036,1,'2015-01-23','2015-01-23 22:27:14',0),(2037,1,'2015-01-23','2015-01-23 22:27:14',0),(2038,1,'2015-01-23','2015-01-23 22:29:47',0),(2039,1,'2015-01-24','2015-01-24 03:52:22',0),(2040,1,'2015-01-24','2015-01-24 06:52:59',0),(2041,1,'2015-01-24','2015-01-24 17:42:23',0),(2042,1,'2015-01-24','2015-01-24 18:12:31',0),(2043,1,'2015-01-24','2015-01-24 22:43:35',0),(2044,1,'2015-01-25','2015-01-25 01:30:13',0),(2045,1,'2015-01-25','2015-01-25 06:30:45',0),(2046,1,'2015-01-25','2015-01-25 13:07:13',0),(2047,111,'2015-01-25','2015-01-25 13:07:42',0),(2048,111,'2015-01-25','2015-01-25 13:07:53',0),(2049,111,'2015-01-25','2015-01-25 13:08:29',0),(2050,1,'2015-01-25','2015-01-25 13:08:31',1),(2051,107,'2015-01-25','2015-01-25 13:08:36',1),(2052,1,'2015-01-25','2015-01-25 13:09:00',1),(2053,1,'2015-01-25','2015-01-25 13:09:06',1),(2054,1,'2015-01-25','2015-01-25 13:09:14',1),(2055,1,'2015-01-25','2015-01-25 13:10:23',1),(2056,1,'2015-01-25','2015-01-25 13:22:33',1),(2057,129,'2015-01-25','2015-01-25 13:22:44',1),(2058,1,'2015-01-25','2015-01-25 13:41:22',1),(2059,130,'2015-01-25','2015-01-25 13:41:26',1),(2060,1,'2015-01-25','2015-01-25 14:12:43',0),(2061,1,'2015-01-25','2015-01-25 21:24:39',0),(2062,1,'2015-01-26','2015-01-26 01:08:48',0),(2063,1,'2015-01-26','2015-01-26 01:08:48',0),(2064,1,'2015-01-26','2015-01-26 01:08:49',0),(2065,1,'2015-01-26','2015-01-26 01:08:50',0),(2066,1,'2015-01-26','2015-01-26 01:08:51',0),(2067,1,'2015-01-26','2015-01-26 01:08:51',0),(2068,1,'2015-01-26','2015-01-26 01:08:51',0),(2069,1,'2015-01-26','2015-01-26 01:08:51',0),(2070,1,'2015-01-26','2015-01-26 05:45:56',0),(2071,1,'2015-01-26','2015-01-26 07:37:33',0),(2072,1,'2015-01-26','2015-01-26 12:47:06',0),(2073,1,'2015-01-26','2015-01-26 13:20:11',0),(2074,1,'2015-01-26','2015-01-26 19:19:04',0),(2075,1,'2015-01-27','2015-01-27 00:05:16',0),(2076,130,'2015-01-27','2015-01-27 00:05:36',0),(2077,129,'2015-01-27','2015-01-27 00:05:36',0),(2078,111,'2015-01-27','2015-01-27 00:05:37',0),(2079,1,'2015-01-27','2015-01-27 01:25:02',0),(2080,1,'2015-01-27','2015-01-27 05:12:46',0),(2081,1,'2015-01-27','2015-01-27 05:12:46',0),(2082,1,'2015-01-27','2015-01-27 05:13:05',0),(2083,1,'2015-01-27','2015-01-27 05:13:35',0),(2084,1,'2015-01-27','2015-01-27 11:22:32',0),(2085,1,'2015-01-27','2015-01-27 14:47:46',0),(2086,1,'2015-01-28','2015-01-28 05:44:13',0),(2087,1,'2015-01-28','2015-01-28 05:51:24',0),(2088,1,'2015-01-28','2015-01-28 05:51:25',0),(2089,1,'2015-01-28','2015-01-28 07:04:18',0),(2090,1,'2015-01-28','2015-01-28 07:24:54',0),(2091,1,'2015-01-28','2015-01-28 11:06:25',0),(2092,1,'2015-01-28','2015-01-28 15:59:43',0),(2093,1,'2015-01-28','2015-01-28 16:58:02',0),(2094,1,'2015-01-28','2015-01-28 20:39:13',0),(2095,1,'2015-01-29','2015-01-29 00:29:07',0),(2096,130,'2015-01-29','2015-01-29 00:29:27',0),(2097,111,'2015-01-29','2015-01-29 00:29:27',0),(2098,129,'2015-01-29','2015-01-29 00:29:27',0),(2099,1,'2015-01-29','2015-01-29 00:41:17',0),(2100,1,'2015-01-29','2015-01-29 03:27:50',0),(2101,129,'2015-01-29','2015-01-29 03:46:09',0),(2102,1,'2015-01-29','2015-01-29 10:12:54',0),(2103,1,'2015-01-29','2015-01-29 12:29:28',0),(2104,1,'2015-01-29','2015-01-29 12:29:36',0),(2105,1,'2015-01-29','2015-01-29 14:31:09',0),(2106,1,'2015-01-29','2015-01-29 14:32:24',0),(2107,1,'2015-01-29','2015-01-29 14:44:58',0),(2108,1,'2015-01-29','2015-01-29 16:23:03',0),(2109,1,'2015-01-29','2015-01-29 17:44:31',0),(2110,129,'2015-01-29','2015-01-29 17:44:36',0),(2111,1,'2015-01-29','2015-01-29 17:45:05',0),(2112,1,'2015-01-30','2015-01-30 12:47:35',0),(2113,1,'2015-01-30','2015-01-30 16:37:27',0),(2114,1,'2015-01-31','2015-01-31 04:09:39',0),(2115,1,'2015-01-31','2015-01-31 06:27:52',0),(2116,1,'2015-02-01','2015-02-01 01:28:35',0),(2117,1,'2015-02-01','2015-02-01 02:08:06',0),(2118,111,'2015-02-01','2015-02-01 02:08:13',0),(2119,130,'2015-02-01','2015-02-01 02:08:16',0),(2120,129,'2015-02-01','2015-02-01 02:08:20',0),(2121,1,'2015-02-01','2015-02-01 20:23:46',0),(2122,1,'2015-02-02','2015-02-02 05:11:13',0),(2123,1,'2015-02-02','2015-02-02 08:55:16',0),(2124,1,'2015-02-02','2015-02-02 11:55:53',0),(2125,1,'2015-02-02','2015-02-02 22:19:45',0),(2126,1,'2015-02-03','2015-02-03 01:40:42',0),(2127,1,'2015-02-03','2015-02-03 02:35:51',0),(2128,1,'2015-02-03','2015-02-03 02:48:51',0),(2129,1,'2015-02-03','2015-02-03 03:02:13',0),(2130,129,'2015-02-03','2015-02-03 16:03:57',0),(2131,1,'2015-02-03','2015-02-03 17:09:52',0),(2132,1,'2015-02-03','2015-02-03 18:56:51',0),(2133,1,'2015-02-03','2015-02-03 20:54:59',0),(2134,1,'2015-02-04','2015-02-04 02:11:13',0),(2135,1,'2015-02-04','2015-02-04 07:44:08',0),(2136,1,'2015-02-05','2015-02-05 12:17:57',0),(2137,1,'2015-02-05','2015-02-05 12:21:39',0),(2138,1,'2015-02-05','2015-02-05 13:57:38',0),(2139,1,'2015-02-05','2015-02-05 16:29:48',0),(2140,1,'2015-02-05','2015-02-05 17:02:01',0),(2141,1,'2015-02-05','2015-02-05 17:09:13',0),(2142,1,'2015-02-05','2015-02-05 17:38:26',0),(2143,1,'2015-02-05','2015-02-05 22:03:34',0),(2144,1,'2015-02-06','2015-02-05 23:08:04',0),(2145,1,'2015-02-06','2015-02-06 01:42:20',0),(2146,1,'2015-02-06','2015-02-06 08:46:39',0),(2147,1,'2015-02-06','2015-02-06 11:37:33',0),(2148,1,'2015-02-06','2015-02-06 16:28:17',0),(2149,1,'2015-02-06','2015-02-06 16:38:26',0),(2150,1,'2015-02-06','2015-02-06 17:05:11',0),(2151,1,'2015-02-06','2015-02-06 18:29:51',0),(2152,1,'2015-02-06','2015-02-06 21:27:02',0),(2153,1,'2015-02-07','2015-02-06 23:37:55',0),(2154,1,'2015-02-07','2015-02-07 01:14:51',0),(2155,1,'2015-02-07','2015-02-07 01:36:04',0),(2156,129,'2015-02-07','2015-02-07 02:29:18',0),(2157,1,'2015-02-07','2015-02-07 03:27:22',0),(2158,1,'2015-02-07','2015-02-07 05:16:27',0),(2159,129,'2015-02-07','2015-02-07 05:29:57',0),(2160,1,'2015-02-07','2015-02-07 07:25:28',0),(2161,1,'2015-02-07','2015-02-07 08:10:12',0),(2162,1,'2015-02-07','2015-02-07 09:14:28',0),(2163,1,'2015-02-07','2015-02-07 09:53:25',0),(2164,129,'2015-02-07','2015-02-07 12:10:22',0),(2165,1,'2015-02-07','2015-02-07 13:01:37',0),(2166,1,'2015-02-07','2015-02-07 13:10:14',0),(2167,1,'2015-02-07','2015-02-07 16:26:59',0),(2168,1,'2015-02-07','2015-02-07 17:02:57',0),(2169,129,'2015-02-07','2015-02-07 18:07:30',0),(2170,1,'2015-02-07','2015-02-07 21:19:41',0),(2171,1,'2015-02-07','2015-02-07 21:22:34',0),(2172,1,'2015-02-08','2015-02-07 23:43:43',0),(2173,111,'2015-02-08','2015-02-07 23:43:53',0),(2174,130,'2015-02-08','2015-02-07 23:43:54',0),(2175,129,'2015-02-08','2015-02-07 23:43:54',0),(2176,1,'2015-02-08','2015-02-08 00:41:09',0),(2177,1,'2015-02-08','2015-02-08 00:47:27',0),(2178,1,'2015-02-08','2015-02-08 01:23:19',0),(2179,1,'2015-02-08','2015-02-08 04:29:56',0),(2180,1,'2015-02-08','2015-02-08 04:29:56',0),(2181,129,'2015-02-08','2015-02-08 05:00:09',0),(2182,1,'2015-02-08','2015-02-08 06:00:47',0),(2183,1,'2015-02-08','2015-02-08 08:28:13',0),(2184,1,'2015-02-08','2015-02-08 12:14:35',0),(2185,1,'2015-02-08','2015-02-08 14:50:49',0),(2186,1,'2015-02-08','2015-02-08 16:57:59',0),(2187,1,'2015-02-09','2015-02-09 01:34:02',0),(2188,1,'2015-02-09','2015-02-09 03:12:35',0),(2189,1,'2015-02-09','2015-02-09 05:06:14',0),(2190,1,'2015-02-09','2015-02-09 12:06:30',0),(2191,1,'2015-02-09','2015-02-09 14:26:16',0),(2192,1,'2015-02-09','2015-02-09 14:26:17',0),(2193,1,'2015-02-09','2015-02-09 14:26:17',0),(2194,1,'2015-02-09','2015-02-09 14:26:18',0),(2195,1,'2015-02-09','2015-02-09 14:26:20',0),(2196,1,'2015-02-09','2015-02-09 14:26:20',0),(2197,1,'2015-02-09','2015-02-09 14:26:20',0),(2198,1,'2015-02-09','2015-02-09 14:26:20',0),(2199,1,'2015-02-09','2015-02-09 16:59:33',0),(2200,1,'2015-02-09','2015-02-09 17:20:42',0),(2201,1,'2015-02-09','2015-02-09 17:30:59',0),(2202,1,'2015-02-09','2015-02-09 18:59:22',0),(2203,1,'2015-02-10','2015-02-10 00:37:24',0),(2204,1,'2015-02-10','2015-02-10 00:37:24',0),(2205,1,'2015-02-10','2015-02-10 01:27:45',0),(2206,1,'2015-02-10','2015-02-10 07:39:09',0),(2207,1,'2015-02-10','2015-02-10 07:40:48',0),(2208,1,'2015-02-10','2015-02-10 15:35:38',0),(2209,1,'2015-02-10','2015-02-10 15:49:21',0),(2210,129,'2015-02-10','2015-02-10 15:49:24',0),(2211,130,'2015-02-10','2015-02-10 15:49:26',0),(2212,111,'2015-02-10','2015-02-10 15:49:33',0),(2213,1,'2015-02-10','2015-02-10 16:11:43',0),(2214,1,'2015-02-10','2015-02-10 17:10:43',0),(2215,1,'2015-02-10','2015-02-10 17:47:32',0),(2216,1,'2015-02-10','2015-02-10 17:57:00',0),(2217,1,'2015-02-10','2015-02-10 20:16:10',0),(2218,1,'2015-02-10','2015-02-10 22:49:42',0),(2219,1,'2015-02-11','2015-02-11 00:27:33',0),(2220,1,'2015-02-11','2015-02-11 01:28:07',0),(2221,1,'2015-02-11','2015-02-11 02:57:48',0),(2222,1,'2015-02-11','2015-02-11 03:30:07',0),(2223,1,'2015-02-11','2015-02-11 03:39:41',0),(2224,1,'2015-02-11','2015-02-11 05:09:14',0),(2225,1,'2015-02-11','2015-02-11 06:56:35',0),(2226,1,'2015-02-11','2015-02-11 07:10:07',0),(2227,1,'2015-02-11','2015-02-11 09:21:31',0),(2228,1,'2015-02-11','2015-02-11 11:49:49',0),(2229,1,'2015-02-11','2015-02-11 12:25:44',0),(2230,1,'2015-02-11','2015-02-11 16:55:44',0),(2231,1,'2015-02-12','2015-02-12 01:45:54',0),(2232,1,'2015-02-12','2015-02-12 02:18:01',0),(2233,1,'2015-02-12','2015-02-12 07:29:45',0),(2234,1,'2015-02-12','2015-02-12 10:31:06',0),(2235,1,'2015-02-12','2015-02-12 13:50:59',0),(2236,1,'2015-02-12','2015-02-12 13:56:59',0),(2237,130,'2015-02-14','2015-02-14 13:33:52',0),(2238,1,'2015-02-14','2015-02-14 16:22:27',0),(2239,1,'2015-02-14','2015-02-14 17:11:28',0),(2240,1,'2015-02-14','2015-02-14 20:59:02',0),(2241,1,'2015-02-15','2015-02-15 01:31:13',0),(2242,1,'2015-02-15','2015-02-15 01:44:30',0),(2243,1,'2015-02-15','2015-02-15 03:41:32',0),(2244,1,'2015-02-15','2015-02-15 05:54:08',0),(2245,1,'2015-02-15','2015-02-15 09:09:20',0),(2246,1,'2015-02-15','2015-02-15 09:40:55',0),(2247,1,'2015-02-15','2015-02-15 12:11:05',0),(2248,1,'2015-02-15','2015-02-15 17:12:33',0),(2249,1,'2015-02-15','2015-02-15 17:16:58',0),(2250,1,'2015-02-15','2015-02-15 20:51:29',0),(2251,1,'2015-02-16','2015-02-16 00:36:35',0),(2252,1,'2015-02-16','2015-02-16 01:19:12',0),(2253,1,'2015-02-16','2015-02-16 02:50:24',0),(2254,1,'2015-02-16','2015-02-16 02:58:24',0),(2255,1,'2015-02-16','2015-02-16 03:05:42',0),(2256,1,'2015-02-16','2015-02-16 04:09:13',0),(2257,1,'2015-02-16','2015-02-16 08:14:59',0),(2258,1,'2015-02-16','2015-02-16 12:27:39',0),(2259,1,'2015-02-16','2015-02-16 14:03:15',0),(2260,1,'2015-02-16','2015-02-16 17:48:29',0),(2261,1,'2015-02-16','2015-02-16 22:57:51',0),(2262,1,'2015-02-17','2015-02-17 01:23:00',0),(2263,1,'2015-02-17','2015-02-17 12:57:43',0),(2264,1,'2015-02-17','2015-02-17 13:35:31',0),(2265,1,'2015-02-17','2015-02-17 16:57:27',0),(2266,1,'2015-02-17','2015-02-17 19:26:28',0),(2267,1,'2015-02-17','2015-02-17 19:26:56',0),(2268,1,'2015-02-17','2015-02-17 19:31:41',0),(2269,1,'2015-02-18','2015-02-18 01:22:38',0),(2270,1,'2015-02-18','2015-02-18 04:16:55',0),(2271,111,'2015-02-18','2015-02-18 04:17:04',0),(2272,129,'2015-02-18','2015-02-18 04:17:04',0),(2273,130,'2015-02-18','2015-02-18 04:17:04',0),(2274,1,'2015-02-18','2015-02-18 04:27:40',0),(2275,1,'2015-02-18','2015-02-18 07:18:15',0),(2276,1,'2015-02-18','2015-02-18 08:22:53',0),(2277,1,'2015-02-18','2015-02-18 09:21:05',0),(2278,1,'2015-02-18','2015-02-18 13:12:38',0),(2279,1,'2015-02-18','2015-02-18 16:40:11',0),(2280,1,'2015-02-18','2015-02-18 20:03:48',0),(2281,1,'2015-02-18','2015-02-18 20:20:50',0),(2282,129,'2015-02-18','2015-02-18 22:49:01',0),(2283,1,'2015-02-19','2015-02-19 00:10:12',0),(2284,1,'2015-02-19','2015-02-19 02:48:28',0),(2285,1,'2015-02-19','2015-02-19 07:55:01',0),(2286,1,'2015-02-19','2015-02-19 09:01:27',0),(2287,1,'2015-02-19','2015-02-19 13:36:18',0),(2288,1,'2015-02-19','2015-02-19 15:35:43',0),(2289,1,'2015-02-19','2015-02-19 18:33:19',0),(2290,1,'2015-02-19','2015-02-19 21:45:45',0),(2291,1,'2015-02-19','2015-02-19 21:56:59',0),(2292,1,'2015-02-20','2015-02-20 00:20:14',0),(2293,1,'2015-02-20','2015-02-20 00:20:15',0),(2294,1,'2015-02-20','2015-02-20 03:19:04',0),(2295,1,'2015-02-20','2015-02-20 03:25:52',0),(2296,1,'2015-02-20','2015-02-20 09:12:04',0),(2297,1,'2015-02-22','2015-02-22 13:12:12',0),(2298,1,'2015-02-22','2015-02-22 13:41:40',0),(2299,1,'2015-02-22','2015-02-22 14:30:05',0),(2300,1,'2015-02-22','2015-02-22 15:58:48',0),(2301,1,'2015-02-22','2015-02-22 18:49:53',0),(2302,129,'2015-02-22','2015-02-22 19:12:07',0),(2303,1,'2015-02-22','2015-02-22 20:16:48',0),(2304,129,'2015-02-23','2015-02-22 23:30:10',0),(2305,1,'2015-02-23','2015-02-23 04:33:07',0),(2306,1,'2015-02-23','2015-02-23 06:02:58',0),(2307,129,'2015-02-23','2015-02-23 06:22:37',0),(2308,1,'2015-02-23','2015-02-23 08:48:49',0),(2309,1,'2015-02-23','2015-02-23 13:43:30',0),(2310,1,'2015-02-23','2015-02-23 14:39:08',0),(2311,1,'2015-02-23','2015-02-23 16:31:13',0),(2312,1,'2015-02-23','2015-02-23 18:54:00',0),(2313,1,'2015-02-23','2015-02-23 19:22:19',0),(2314,1,'2015-02-23','2015-02-23 20:08:59',0),(2315,1,'2015-02-24','2015-02-24 00:10:43',0),(2316,1,'2015-02-24','2015-02-24 01:34:57',0),(2317,1,'2015-02-24','2015-02-24 04:14:50',0),(2318,1,'2015-02-24','2015-02-24 08:10:47',0),(2319,1,'2015-02-24','2015-02-24 12:16:38',0),(2320,1,'2015-02-24','2015-02-24 14:06:22',0),(2321,1,'2015-02-24','2015-02-24 16:56:00',0),(2322,1,'2015-02-24','2015-02-24 19:28:38',0),(2323,1,'2015-02-24','2015-02-24 22:56:06',0),(2324,1,'2015-02-25','2015-02-25 01:38:25',0),(2325,129,'2015-02-25','2015-02-25 03:11:49',0),(2326,1,'2015-02-25','2015-02-25 04:22:52',0),(2327,1,'2015-02-25','2015-02-25 04:26:28',0),(2328,1,'2015-02-25','2015-02-25 04:43:51',0),(2329,1,'2015-02-25','2015-02-25 08:35:15',0),(2330,1,'2015-02-25','2015-02-25 14:08:43',0),(2331,1,'2015-02-25','2015-02-25 18:23:41',0),(2332,1,'2015-02-25','2015-02-25 19:19:57',0),(2333,1,'2015-02-25','2015-02-25 22:13:44',0),(2334,1,'2015-02-26','2015-02-26 01:33:44',0),(2335,1,'2015-02-26','2015-02-26 02:27:16',0),(2336,1,'2015-02-26','2015-02-26 07:56:33',0),(2337,1,'2015-02-26','2015-02-26 10:10:54',0),(2338,1,'2015-02-26','2015-02-26 11:12:07',0),(2339,1,'2015-02-26','2015-02-26 14:42:49',0),(2340,1,'2015-02-26','2015-02-26 15:48:17',0),(2341,129,'2015-02-26','2015-02-26 17:27:38',0),(2342,1,'2015-02-26','2015-02-26 18:14:16',0),(2343,1,'2015-02-26','2015-02-26 22:57:29',0),(2344,1,'2015-02-27','2015-02-26 23:22:24',0),(2345,1,'2015-02-27','2015-02-27 02:37:22',0),(2346,1,'2015-02-27','2015-02-27 06:22:42',0),(2347,1,'2015-02-27','2015-02-27 10:11:36',0),(2348,1,'2015-02-27','2015-02-27 10:24:25',0),(2349,1,'2015-02-27','2015-02-27 14:17:06',0),(2350,1,'2015-02-27','2015-02-27 18:32:38',0),(2351,1,'2015-02-27','2015-02-27 20:29:49',0),(2352,1,'2015-02-27','2015-02-27 22:12:50',0),(2353,1,'2015-02-28','2015-02-28 00:14:47',0),(2354,1,'2015-02-28','2015-02-28 02:01:20',0),(2355,1,'2015-02-28','2015-02-28 04:00:59',0),(2356,1,'2015-02-28','2015-02-28 04:24:10',0),(2357,1,'2015-02-28','2015-02-28 05:58:24',0),(2358,1,'2015-02-28','2015-02-28 10:36:12',0),(2359,111,'2015-02-28','2015-02-28 10:36:36',0),(2360,111,'2015-02-28','2015-02-28 10:37:00',0),(2361,111,'2015-02-28','2015-02-28 10:37:30',0),(2362,111,'2015-02-28','2015-02-28 10:37:56',0),(2363,1,'2015-02-28','2015-02-28 10:38:20',1),(2364,107,'2015-02-28','2015-02-28 10:38:35',1),(2365,100,'2015-02-28','2015-02-28 10:39:00',1),(2366,100,'2015-02-28','2015-02-28 10:39:10',1),(2367,99,'2015-02-28','2015-02-28 10:53:26',1),(2368,99,'2015-02-28','2015-02-28 10:53:53',1),(2369,99,'2015-02-28','2015-02-28 10:55:18',1),(2370,2,'2015-02-28','2015-02-28 10:58:17',1),(2371,11,'2015-02-28','2015-02-28 10:59:00',1),(2372,2,'2015-02-28','2015-02-28 11:23:51',1),(2373,11,'2015-02-28','2015-02-28 11:24:18',1),(2374,1,'2015-02-28','2015-02-28 11:25:32',1),(2375,100,'2015-02-28','2015-02-28 12:33:10',1),(2376,1,'2015-02-28','2015-02-28 12:35:46',1),(2377,129,'2015-02-28','2015-02-28 12:36:38',1),(2378,129,'2015-02-28','2015-02-28 12:37:00',1),(2379,129,'2015-02-28','2015-02-28 12:37:25',1),(2380,1,'2015-02-28','2015-02-28 12:37:30',1),(2381,130,'2015-02-28','2015-02-28 12:37:38',1),(2382,1,'2015-02-28','2015-02-28 12:37:53',1),(2383,1,'2015-02-28','2015-02-28 12:45:02',1),(2384,2,'2015-02-28','2015-02-28 12:45:36',1),(2385,1,'2015-02-28','2015-02-28 12:45:53',1),(2386,1,'2015-02-28','2015-02-28 12:47:25',1),(2387,1,'2015-02-28','2015-02-28 12:47:59',1),(2388,1,'2015-02-28','2015-02-28 12:49:35',1),(2389,1,'2015-02-28','2015-02-28 12:49:53',0),(2390,1,'2015-02-28','2015-02-28 12:51:07',1),(2391,1,'2015-02-28','2015-02-28 14:02:39',0),(2392,1,'2015-02-28','2015-02-28 14:08:45',0),(2393,1,'2015-02-28','2015-02-28 17:12:43',0),(2394,1,'2015-02-28','2015-02-28 18:07:40',0),(2395,1,'2015-03-01','2015-02-28 23:29:48',0),(2396,1,'2015-03-01','2015-03-01 01:27:58',0),(2397,130,'2015-03-01','2015-03-01 01:28:25',0),(2398,129,'2015-03-01','2015-03-01 01:28:25',0),(2399,111,'2015-03-01','2015-03-01 01:28:25',0),(2400,1,'2015-03-01','2015-03-01 01:31:01',0),(2401,111,'2015-03-01','2015-03-01 01:31:28',0),(2402,130,'2015-03-01','2015-03-01 01:31:28',0),(2403,129,'2015-03-01','2015-03-01 01:31:28',0),(2404,1,'2015-03-01','2015-03-01 01:48:22',0),(2405,1,'2015-03-01','2015-03-01 02:09:02',0),(2406,1,'2015-03-01','2015-03-01 02:57:42',0),(2407,1,'2015-03-01','2015-03-01 03:05:08',0),(2408,1,'2015-03-01','2015-03-01 03:17:54',0),(2409,1,'2015-03-01','2015-03-01 03:28:29',0),(2410,1,'2015-03-01','2015-03-01 07:34:13',0),(2411,1,'2015-03-01','2015-03-01 08:11:31',0),(2412,1,'2015-03-01','2015-03-01 09:54:24',0),(2413,1,'2015-03-01','2015-03-01 11:30:47',0),(2414,1,'2015-03-01','2015-03-01 15:30:31',0),(2415,1,'2015-03-01','2015-03-01 20:46:19',0),(2416,1,'2015-03-01','2015-03-01 20:53:12',0),(2417,1,'2015-03-02','2015-03-01 23:14:20',0),(2418,1,'2015-03-02','2015-03-01 23:25:31',0),(2419,1,'2015-03-02','2015-03-02 03:29:55',0),(2420,1,'2015-03-02','2015-03-02 03:51:20',0),(2421,1,'2015-03-02','2015-03-02 04:15:02',0),(2422,1,'2015-03-02','2015-03-02 08:22:57',0),(2423,1,'2015-03-02','2015-03-02 09:17:32',0),(2424,1,'2015-03-02','2015-03-02 14:15:18',0),(2425,1,'2015-03-02','2015-03-02 18:50:02',0),(2426,1,'2015-03-03','2015-03-03 13:52:01',1),(2427,107,'2015-03-03','2015-03-03 13:52:04',1),(2428,1,'2015-03-03','2015-03-03 13:52:35',1),(2429,1,'2015-03-03','2015-03-03 14:18:30',1),(2430,2,'2015-03-03','2015-03-03 14:18:39',1),(2431,51,'2015-03-03','2015-03-03 14:18:46',1),(2432,54,'2015-03-03','2015-03-03 14:19:08',1),(2433,1,'2015-03-03','2015-03-03 14:19:19',1),(2434,1,'2015-03-03','2015-03-03 14:51:31',1),(2435,1,'2015-03-03','2015-03-03 14:53:47',0),(2436,1,'2015-03-03','2015-03-03 16:20:12',0),(2437,1,'2015-03-03','2015-03-03 17:05:54',0),(2438,1,'2015-03-03','2015-03-03 18:07:26',0),(2439,1,'2015-03-03','2015-03-03 18:30:29',0),(2440,1,'2015-03-03','2015-03-03 18:38:38',0),(2441,1,'2015-03-03','2015-03-03 18:41:23',0),(2442,1,'2015-03-03','2015-03-03 19:02:17',0),(2443,1,'2015-03-03','2015-03-03 19:05:52',0),(2444,1,'2015-03-03','2015-03-03 19:05:56',0),(2445,1,'2015-03-03','2015-03-03 19:06:02',0),(2446,1,'2015-03-03','2015-03-03 19:06:12',0),(2447,1,'2015-03-03','2015-03-03 19:25:25',0),(2448,1,'2015-03-03','2015-03-03 19:25:36',0),(2449,1,'2015-03-03','2015-03-03 19:42:00',0),(2450,1,'2015-03-04','2015-03-04 07:43:50',0),(2451,129,'2015-03-04','2015-03-04 07:44:42',0),(2452,1,'2015-03-04','2015-03-04 08:51:32',0),(2453,1,'2015-03-04','2015-03-04 13:08:30',0),(2454,1,'2015-03-04','2015-03-04 15:59:12',0),(2455,1,'2015-03-04','2015-03-04 15:59:21',0),(2456,130,'2015-03-04','2015-03-04 15:59:37',0),(2457,1,'2015-03-04','2015-03-04 15:59:43',0),(2458,1,'2015-03-04','2015-03-04 16:25:01',0),(2459,1,'2015-03-04','2015-03-04 16:54:55',0),(2460,130,'2015-03-04','2015-03-04 16:56:03',0),(2461,111,'2015-03-04','2015-03-04 16:57:02',0),(2462,1,'2015-03-04','2015-03-04 16:59:51',0),(2463,1,'2015-03-04','2015-03-04 17:50:06',0),(2464,1,'2015-03-04','2015-03-04 17:53:45',0),(2465,1,'2015-03-04','2015-03-04 18:10:40',0),(2466,1,'2015-03-04','2015-03-04 19:22:33',0),(2467,1,'2015-03-04','2015-03-04 19:24:06',0),(2468,1,'2015-03-04','2015-03-04 19:46:45',0),(2469,1,'2015-03-04','2015-03-04 21:27:04',0),(2470,1,'2015-03-05','2015-03-05 01:46:27',0),(2471,1,'2015-03-05','2015-03-05 06:20:38',0),(2472,1,'2015-03-05','2015-03-05 09:50:46',0),(2473,1,'2015-03-05','2015-03-05 10:29:22',0),(2474,1,'2015-03-05','2015-03-05 10:33:32',0),(2475,111,'2015-03-05','2015-03-05 10:34:05',0),(2476,111,'2015-03-05','2015-03-05 10:34:23',0),(2477,111,'2015-03-05','2015-03-05 10:34:29',0),(2478,111,'2015-03-05','2015-03-05 10:37:22',0),(2479,111,'2015-03-05','2015-03-05 10:38:52',0),(2480,111,'2015-03-05','2015-03-05 10:40:05',0),(2481,111,'2015-03-05','2015-03-05 10:40:36',0),(2482,1,'2015-03-05','2015-03-05 10:44:00',0),(2483,111,'2015-03-05','2015-03-05 10:45:04',0),(2484,111,'2015-03-05','2015-03-05 10:45:51',0),(2485,111,'2015-03-05','2015-03-05 10:46:31',0),(2486,1,'2015-03-05','2015-03-05 11:01:10',0),(2487,1,'2015-03-05','2015-03-05 13:06:28',0),(2488,129,'2015-03-05','2015-03-05 16:06:32',0),(2489,1,'2015-03-05','2015-03-05 16:56:01',0),(2490,130,'2015-03-05','2015-03-05 19:22:57',0),(2491,111,'2015-03-05','2015-03-05 19:22:58',0),(2492,129,'2015-03-05','2015-03-05 19:23:00',0),(2493,1,'2015-03-05','2015-03-05 20:06:30',0),(2494,1,'2015-03-05','2015-03-05 22:24:30',0),(2495,1,'2015-03-05','2015-03-05 22:42:09',0),(2496,1,'2015-03-06','2015-03-05 23:51:16',0),(2497,1,'2015-03-06','2015-03-06 00:14:04',0),(2498,1,'2015-03-06','2015-03-06 00:53:39',0),(2499,1,'2015-03-06','2015-03-06 05:56:31',0),(2500,1,'2015-03-06','2015-03-06 13:27:42',0),(2501,1,'2015-03-06','2015-03-06 14:25:48',0),(2502,1,'2015-03-06','2015-03-06 18:56:10',0),(2503,1,'2015-03-06','2015-03-06 19:16:40',0),(2504,1,'2015-03-06','2015-03-06 19:58:05',0),(2505,1,'2015-03-06','2015-03-06 20:57:10',0),(2506,1,'2015-03-06','2015-03-06 21:21:28',0),(2507,1,'2015-03-07','2015-03-06 23:14:31',0),(2508,1,'2015-03-07','2015-03-07 04:09:31',0),(2509,1,'2015-03-07','2015-03-07 06:32:41',0),(2510,1,'2015-03-07','2015-03-07 08:42:17',0),(2511,1,'2015-03-07','2015-03-07 10:52:21',0),(2512,1,'2015-03-07','2015-03-07 11:56:11',0),(2513,1,'2015-03-07','2015-03-07 12:28:54',0),(2514,1,'2015-03-07','2015-03-07 12:32:56',0),(2515,1,'2015-03-07','2015-03-07 12:34:48',0),(2516,1,'2015-03-07','2015-03-07 12:36:46',0),(2517,1,'2015-03-07','2015-03-07 12:43:26',0),(2518,1,'2015-03-07','2015-03-07 13:15:46',0),(2519,1,'2015-03-07','2015-03-07 13:38:32',0),(2520,1,'2015-03-07','2015-03-07 14:10:45',0),(2521,1,'2015-03-07','2015-03-07 14:20:27',0),(2522,1,'2015-03-07','2015-03-07 14:20:28',0),(2523,1,'2015-03-07','2015-03-07 14:27:28',0),(2524,129,'2015-03-07','2015-03-07 14:27:39',0),(2525,129,'2015-03-07','2015-03-07 16:10:44',0),(2526,1,'2015-03-07','2015-03-07 19:28:07',0),(2527,1,'2015-03-07','2015-03-07 21:04:15',0),(2528,1,'2015-03-08','2015-03-08 00:57:51',0),(2529,1,'2015-03-08','2015-03-08 07:52:34',0),(2530,1,'2015-03-08','2015-03-08 09:54:24',0),(2531,1,'2015-03-08','2015-03-08 09:54:24',0),(2532,1,'2015-03-08','2015-03-08 09:54:25',0),(2533,1,'2015-03-08','2015-03-08 09:54:25',0),(2534,1,'2015-03-08','2015-03-08 09:54:26',0),(2535,1,'2015-03-08','2015-03-08 09:54:27',0),(2536,1,'2015-03-08','2015-03-08 09:54:27',0),(2537,1,'2015-03-08','2015-03-08 09:54:27',0),(2538,1,'2015-03-08','2015-03-08 11:50:37',0),(2539,1,'2015-03-08','2015-03-08 12:34:42',0),(2540,1,'2015-03-08','2015-03-08 13:46:12',0),(2541,130,'2015-03-08','2015-03-08 15:47:53',0),(2542,1,'2015-03-08','2015-03-08 15:59:03',0),(2543,1,'2015-03-08','2015-03-08 17:03:10',0),(2544,1,'2015-03-08','2015-03-08 19:56:31',0),(2545,1,'2015-03-09','2015-03-09 00:45:38',0),(2546,1,'2015-03-09','2015-03-09 07:22:44',0),(2547,1,'2015-03-09','2015-03-09 13:10:32',0),(2548,1,'2015-03-09','2015-03-09 14:01:22',0),(2549,1,'2015-03-09','2015-03-09 14:02:10',0),(2550,1,'2015-03-09','2015-03-09 15:55:06',0),(2551,1,'2015-03-09','2015-03-09 15:55:24',0),(2552,1,'2015-03-09','2015-03-09 17:02:55',0),(2553,1,'2015-03-09','2015-03-09 18:21:44',0),(2554,1,'2015-03-10','2015-03-10 00:13:20',0),(2555,1,'2015-03-10','2015-03-10 03:51:45',0),(2556,1,'2015-03-10','2015-03-10 07:12:26',0),(2557,1,'2015-03-10','2015-03-10 10:40:42',0),(2558,111,'2015-03-10','2015-03-10 10:40:59',0),(2559,1,'2015-03-10','2015-03-10 10:41:02',0),(2560,1,'2015-03-10','2015-03-10 11:01:13',0),(2561,129,'2015-03-10','2015-03-10 11:19:54',0),(2562,1,'2015-03-10','2015-03-10 11:19:58',0),(2563,1,'2015-03-10','2015-03-10 11:20:04',0),(2564,111,'2015-03-10','2015-03-10 11:20:36',0),(2565,111,'2015-03-10','2015-03-10 11:20:44',0),(2566,111,'2015-03-10','2015-03-10 11:20:51',0),(2567,1,'2015-03-10','2015-03-10 11:20:52',1),(2568,107,'2015-03-10','2015-03-10 11:20:54',1),(2569,24,'2015-03-10','2015-03-10 11:21:08',1),(2570,24,'2015-03-10','2015-03-10 11:21:11',1),(2571,24,'2015-03-10','2015-03-10 11:21:20',1),(2572,24,'2015-03-10','2015-03-10 11:21:23',1),(2573,24,'2015-03-10','2015-03-10 11:21:26',1),(2574,24,'2015-03-10','2015-03-10 11:21:29',1),(2575,24,'2015-03-10','2015-03-10 11:21:36',1),(2576,2,'2015-03-10','2015-03-10 11:21:39',1),(2577,1,'2015-03-10','2015-03-10 11:21:45',1),(2578,1,'2015-03-10','2015-03-10 14:01:31',1),(2579,1,'2015-03-10','2015-03-10 14:03:07',1),(2580,129,'2015-03-10','2015-03-10 14:20:40',1),(2581,129,'2015-03-10','2015-03-10 14:28:45',1),(2582,129,'2015-03-10','2015-03-10 14:31:22',1),(2583,129,'2015-03-10','2015-03-10 14:33:27',1),(2584,129,'2015-03-10','2015-03-10 14:56:56',1),(2585,1,'2015-03-10','2015-03-10 15:07:05',0),(2586,129,'2015-03-10','2015-03-10 15:07:51',0),(2587,130,'2015-03-10','2015-03-10 15:08:34',0),(2588,111,'2015-03-10','2015-03-10 15:10:41',0),(2589,1,'2015-03-10','2015-03-10 15:50:40',0),(2590,1,'2015-03-10','2015-03-10 15:58:12',0),(2591,1,'2015-03-10','2015-03-10 17:14:46',0),(2592,1,'2015-03-10','2015-03-10 20:23:46',0),(2593,129,'2015-03-10','2015-03-10 21:23:17',0),(2594,1,'2015-03-10','2015-03-10 22:15:15',0),(2595,1,'2015-03-11','2015-03-11 00:22:46',0),(2596,1,'2015-03-11','2015-03-11 04:11:28',0),(2597,1,'2015-03-11','2015-03-11 08:26:12',0),(2598,1,'2015-03-11','2015-03-11 10:11:59',0),(2599,1,'2015-03-11','2015-03-11 15:57:53',0),(2600,1,'2015-03-11','2015-03-11 17:10:26',0),(2601,1,'2015-03-11','2015-03-11 18:32:06',0),(2602,1,'2015-03-11','2015-03-11 19:22:05',0),(2603,1,'2015-03-11','2015-03-11 19:22:07',0),(2604,1,'2015-03-11','2015-03-11 19:22:08',0),(2605,1,'2015-03-11','2015-03-11 19:22:08',0),(2606,1,'2015-03-11','2015-03-11 19:22:09',0),(2607,1,'2015-03-11','2015-03-11 20:13:16',0),(2608,1,'2015-03-12','2015-03-11 23:17:42',0),(2609,1,'2015-03-12','2015-03-12 04:03:11',0),(2610,130,'2015-03-12','2015-03-12 05:57:36',0),(2611,111,'2015-03-12','2015-03-12 07:29:43',0),(2612,1,'2015-03-12','2015-03-12 08:01:39',0),(2613,1,'2015-03-12','2015-03-12 09:53:22',0),(2614,1,'2015-03-12','2015-03-12 13:06:40',0),(2615,1,'2015-03-12','2015-03-12 18:59:58',0),(2616,1,'2015-03-12','2015-03-12 20:14:13',0),(2617,1,'2015-03-12','2015-03-12 20:29:09',0),(2618,1,'2015-03-13','2015-03-13 05:51:28',0),(2619,1,'2015-03-13','2015-03-13 10:29:56',0),(2620,1,'2015-03-13','2015-03-13 12:19:56',0),(2621,1,'2015-03-13','2015-03-13 14:18:44',0),(2622,1,'2015-03-13','2015-03-13 15:25:20',0),(2623,1,'2015-03-13','2015-03-13 18:10:40',0),(2624,1,'2015-03-13','2015-03-13 20:54:05',0),(2625,1,'2015-03-14','2015-03-14 01:35:22',0),(2626,111,'2015-03-14','2015-03-14 01:35:39',0),(2627,130,'2015-03-14','2015-03-14 01:35:40',0),(2628,129,'2015-03-14','2015-03-14 01:35:40',0),(2629,1,'2015-03-14','2015-03-14 05:40:27',0),(2630,1,'2015-03-14','2015-03-14 05:42:35',0),(2631,1,'2015-03-14','2015-03-14 06:07:32',0),(2632,1,'2015-03-14','2015-03-14 06:20:54',0),(2633,1,'2015-03-14','2015-03-14 07:38:35',0),(2634,1,'2015-03-14','2015-03-14 08:16:18',0),(2635,1,'2015-03-14','2015-03-14 08:16:19',0),(2636,1,'2015-03-14','2015-03-14 12:07:06',0),(2637,1,'2015-03-14','2015-03-14 13:58:17',0),(2638,1,'2015-03-14','2015-03-14 19:12:36',0),(2639,1,'2015-03-14','2015-03-14 20:39:35',0),(2640,1,'2015-03-14','2015-03-14 22:06:49',0),(2641,1,'2015-03-15','2015-03-15 07:04:34',0),(2642,1,'2015-03-15','2015-03-15 17:10:52',0),(2643,1,'2015-03-15','2015-03-15 18:04:14',0),(2644,1,'2015-03-16','2015-03-16 05:09:44',0),(2645,1,'2015-03-17','2015-03-17 01:26:32',0),(2646,1,'2015-03-17','2015-03-17 01:45:24',0),(2647,1,'2015-03-17','2015-03-17 12:04:42',0),(2648,1,'2015-03-17','2015-03-17 18:39:17',0),(2649,1,'2015-03-17','2015-03-17 20:08:06',0),(2650,129,'2015-03-17','2015-03-17 20:08:16',0),(2651,1,'2015-03-17','2015-03-17 20:08:20',0),(2652,130,'2015-03-17','2015-03-17 20:08:27',0),(2653,129,'2015-03-17','2015-03-17 20:08:33',0),(2654,1,'2015-03-17','2015-03-17 20:08:36',0),(2655,129,'2015-03-17','2015-03-17 20:08:39',0),(2656,1,'2015-03-17','2015-03-17 20:08:46',0),(2657,129,'2015-03-17','2015-03-17 20:16:19',0),(2658,1,'2015-03-17','2015-03-17 20:16:24',0),(2659,130,'2015-03-17','2015-03-17 20:16:27',0),(2660,111,'2015-03-17','2015-03-17 20:16:38',0),(2661,111,'2015-03-17','2015-03-17 20:16:46',0),(2662,111,'2015-03-17','2015-03-17 20:16:55',0),(2663,111,'2015-03-17','2015-03-17 20:17:02',0),(2664,1,'2015-03-17','2015-03-17 20:17:03',1),(2665,107,'2015-03-17','2015-03-17 20:17:05',1),(2666,23,'2015-03-17','2015-03-17 20:17:17',1),(2667,1,'2015-03-17','2015-03-17 20:17:33',1),(2668,130,'2015-03-17','2015-03-17 20:17:36',1),(2669,130,'2015-03-17','2015-03-17 20:17:39',1),(2670,1,'2015-03-17','2015-03-17 20:18:32',1),(2671,130,'2015-03-17','2015-03-17 20:18:35',1),(2672,1,'2015-03-17','2015-03-17 21:23:16',0),(2673,130,'2015-03-17','2015-03-17 22:44:20',1),(2674,130,'2015-03-17','2015-03-17 22:44:37',1),(2675,1,'2015-03-18','2015-03-18 00:05:09',0),(2676,1,'2015-03-18','2015-03-18 01:37:17',0),(2677,1,'2015-03-18','2015-03-18 08:32:25',0),(2678,130,'2015-03-18','2015-03-18 10:41:06',1),(2679,1,'2015-03-18','2015-03-18 13:36:35',0),(2680,1,'2015-03-18','2015-03-18 15:48:26',0),(2681,1,'2015-03-18','2015-03-18 15:48:28',0),(2682,1,'2015-03-18','2015-03-18 15:48:30',0),(2683,1,'2015-03-18','2015-03-18 15:48:31',0),(2684,1,'2015-03-18','2015-03-18 17:36:38',0),(2685,1,'2015-03-19','2015-03-19 08:26:50',0),(2686,1,'2015-03-19','2015-03-19 08:55:53',0),(2687,1,'2015-03-19','2015-03-19 09:06:41',0),(2688,1,'2015-03-19','2015-03-19 14:56:58',1),(2689,107,'2015-03-19','2015-03-19 14:57:00',1),(2690,2,'2015-03-19','2015-03-19 14:59:51',1),(2691,24,'2015-03-19','2015-03-19 14:59:54',1),(2692,1,'2015-03-19','2015-03-19 15:02:49',1),(2693,129,'2015-03-19','2015-03-19 15:02:53',1),(2694,1,'2015-03-19','2015-03-19 20:42:01',0),(2695,1,'2015-03-20','2015-03-20 01:44:26',0),(2696,1,'2015-03-20','2015-03-20 01:50:50',0),(2697,1,'2015-03-20','2015-03-20 07:41:06',0),(2698,1,'2015-03-20','2015-03-20 17:14:21',0),(2699,1,'2015-03-20','2015-03-20 17:56:47',0),(2700,1,'2015-03-20','2015-03-20 17:56:48',0),(2701,1,'2015-03-20','2015-03-20 17:56:48',0),(2702,1,'2015-03-20','2015-03-20 17:56:49',0),(2703,1,'2015-03-20','2015-03-20 17:56:50',0),(2704,1,'2015-03-20','2015-03-20 17:56:50',0),(2705,1,'2015-03-20','2015-03-20 17:56:51',0),(2706,1,'2015-03-20','2015-03-20 17:56:51',0),(2707,1,'2015-03-20','2015-03-20 18:46:55',0),(2708,1,'2015-03-21','2015-03-21 00:05:11',0),(2709,1,'2015-03-21','2015-03-21 07:35:54',0),(2710,111,'2015-03-21','2015-03-21 07:36:15',0),(2711,130,'2015-03-21','2015-03-21 07:36:15',0),(2712,129,'2015-03-21','2015-03-21 07:36:15',0),(2713,1,'2015-03-21','2015-03-21 20:18:05',0),(2714,1,'2015-03-22','2015-03-22 06:13:29',0),(2715,1,'2015-03-22','2015-03-22 07:11:30',0),(2716,1,'2015-03-22','2015-03-22 07:31:33',0),(2717,1,'2015-03-22','2015-03-22 16:02:18',0),(2718,1,'2015-03-22','2015-03-22 16:32:41',0),(2719,1,'2015-03-22','2015-03-22 18:06:25',0),(2720,1,'2015-03-22','2015-03-22 22:43:02',0),(2721,1,'2015-03-23','2015-03-23 02:02:18',0),(2722,1,'2015-03-23','2015-03-23 02:02:43',0),(2723,1,'2015-03-23','2015-03-23 08:26:28',0),(2724,1,'2015-03-23','2015-03-23 08:32:14',0),(2725,1,'2015-03-23','2015-03-23 11:53:07',0),(2726,1,'2015-03-23','2015-03-23 22:38:38',0),(2727,1,'2015-03-24','2015-03-24 00:05:15',0),(2728,1,'2015-03-24','2015-03-24 07:42:37',0),(2729,1,'2015-03-24','2015-03-24 07:47:01',0),(2730,1,'2015-03-24','2015-03-24 09:06:22',0),(2731,1,'2015-03-25','2015-03-25 03:09:41',0),(2732,1,'2015-03-25','2015-03-25 03:44:23',0),(2733,1,'2015-03-25','2015-03-25 11:52:36',0),(2734,1,'2015-03-25','2015-03-25 14:13:06',0),(2735,1,'2015-03-25','2015-03-25 20:41:22',0),(2736,1,'2015-03-25','2015-03-25 21:42:52',0),(2737,1,'2015-03-26','2015-03-26 01:11:56',0),(2738,1,'2015-03-26','2015-03-26 08:34:57',0),(2739,1,'2015-03-26','2015-03-26 08:59:57',0),(2740,1,'2015-03-26','2015-03-26 18:18:05',0),(2741,1,'2015-03-26','2015-03-26 19:17:52',0),(2742,1,'2015-03-27','2015-03-27 03:11:17',0),(2743,1,'2015-03-27','2015-03-27 15:34:49',0),(2744,1,'2015-03-27','2015-03-27 15:42:38',0),(2745,1,'2015-03-27','2015-03-27 15:53:06',0),(2746,1,'2015-03-27','2015-03-27 19:55:28',0),(2747,1,'2015-03-27','2015-03-27 21:54:28',0),(2748,1,'2015-03-28','2015-03-28 02:03:57',0),(2749,1,'2015-03-28','2015-03-28 04:55:40',0),(2750,1,'2015-03-28','2015-03-28 05:00:50',0),(2751,1,'2015-03-28','2015-03-28 05:55:37',0),(2752,1,'2015-03-28','2015-03-28 08:00:55',0),(2753,1,'2015-03-28','2015-03-28 09:46:49',0),(2754,1,'2015-03-28','2015-03-28 12:41:16',0),(2755,1,'2015-03-28','2015-03-28 19:03:49',0),(2756,1,'2015-03-28','2015-03-28 20:54:31',0),(2757,1,'2015-03-29','2015-03-29 17:02:46',0),(2758,1,'2015-03-30','2015-03-30 02:24:00',0),(2759,1,'2015-03-30','2015-03-30 04:32:37',0),(2760,1,'2015-03-30','2015-03-30 05:29:28',0),(2761,1,'2015-03-30','2015-03-30 07:17:50',0),(2762,1,'2015-03-30','2015-03-30 12:02:51',0),(2763,1,'2015-03-30','2015-03-30 12:22:51',0),(2764,1,'2015-03-30','2015-03-30 14:17:07',0),(2765,1,'2015-03-30','2015-03-30 20:08:24',0),(2766,1,'2015-03-31','2015-03-30 22:33:48',0),(2767,1,'2015-03-31','2015-03-31 09:58:09',0),(2768,1,'2015-03-31','2015-03-31 12:03:28',0),(2769,129,'2015-03-31','2015-03-31 12:03:29',0),(2770,130,'2015-03-31','2015-03-31 12:03:30',0),(2771,1,'2015-03-31','2015-03-31 12:09:00',0),(2772,1,'2015-03-31','2015-03-31 12:11:51',0),(2773,1,'2015-03-31','2015-03-31 12:12:00',0),(2774,1,'2015-03-31','2015-03-31 12:12:02',0),(2775,1,'2015-03-31','2015-03-31 12:12:17',0),(2776,111,'2015-03-31','2015-03-31 12:12:30',0),(2777,111,'2015-03-31','2015-03-31 12:12:38',0),(2778,111,'2015-03-31','2015-03-31 12:12:49',0),(2779,111,'2015-03-31','2015-03-31 12:12:50',0),(2780,111,'2015-03-31','2015-03-31 12:13:30',0),(2781,111,'2015-03-31','2015-03-31 12:15:59',0),(2782,1,'2015-03-31','2015-03-31 12:16:00',1),(2783,107,'2015-03-31','2015-03-31 12:16:01',1),(2784,1,'2015-03-31','2015-03-31 12:16:17',1),(2785,1,'2015-03-31','2015-03-31 12:17:01',1),(2786,1,'2015-03-31','2015-03-31 13:47:20',0),(2787,1,'2015-03-31','2015-03-31 15:45:40',0),(2788,1,'2015-03-31','2015-03-31 15:45:41',0),(2789,1,'2015-03-31','2015-03-31 15:45:42',0),(2790,1,'2015-03-31','2015-03-31 15:45:43',0),(2791,1,'2015-03-31','2015-03-31 19:41:51',0),(2792,1,'2015-04-01','2015-03-31 23:31:51',0),(2793,1,'2015-04-01','2015-04-01 10:05:27',0),(2794,111,'2015-04-01','2015-04-01 10:05:46',0),(2795,130,'2015-04-01','2015-04-01 10:05:46',0),(2796,129,'2015-04-01','2015-04-01 10:05:46',0),(2797,1,'2015-04-01','2015-04-01 17:48:17',0),(2798,1,'2015-04-01','2015-04-01 17:59:28',0),(2799,1,'2015-04-02','2015-04-02 07:12:08',0),(2800,1,'2015-04-02','2015-04-02 07:48:47',0),(2801,1,'2015-04-02','2015-04-02 11:30:23',0),(2802,1,'2015-04-02','2015-04-02 11:39:12',0),(2803,1,'2015-04-02','2015-04-02 11:41:05',0),(2804,1,'2015-04-02','2015-04-02 18:38:30',0),(2805,1,'2015-04-03','2015-04-03 07:28:05',0),(2806,1,'2015-04-03','2015-04-03 08:54:55',0),(2807,1,'2015-04-03','2015-04-03 11:23:28',1),(2808,107,'2015-04-03','2015-04-03 11:23:30',1),(2809,130,'2015-04-03','2015-04-03 11:23:40',1),(2810,130,'2015-04-03','2015-04-03 11:23:49',1),(2811,130,'2015-04-03','2015-04-03 11:23:54',1),(2812,130,'2015-04-03','2015-04-03 11:23:57',1),(2813,1,'2015-04-03','2015-04-03 13:23:28',0),(2814,1,'2015-04-03','2015-04-03 16:37:36',0),(2815,1,'2015-04-03','2015-04-03 18:35:27',0),(2816,1,'2015-04-03','2015-04-03 21:13:48',0),(2817,1,'2015-04-04','2015-04-04 05:23:57',0),(2818,1,'2015-04-04','2015-04-04 08:18:50',0),(2819,1,'2015-04-04','2015-04-04 15:51:55',0),(2820,1,'2015-04-04','2015-04-04 17:57:38',0),(2821,1,'2015-04-05','2015-04-04 23:11:52',0),(2822,1,'2015-04-05','2015-04-05 07:39:20',0),(2823,1,'2015-04-05','2015-04-05 07:39:21',0),(2824,1,'2015-04-05','2015-04-05 07:39:23',0),(2825,1,'2015-04-05','2015-04-05 12:57:01',0),(2826,1,'2015-04-05','2015-04-05 18:02:11',0),(2827,1,'2015-04-06','2015-04-06 03:46:36',0),(2828,1,'2015-04-06','2015-04-06 05:16:39',0),(2829,1,'2015-04-06','2015-04-06 16:53:29',0),(2830,1,'2015-04-06','2015-04-06 17:56:21',0),(2831,1,'2015-04-06','2015-04-06 21:22:22',1),(2832,107,'2015-04-06','2015-04-06 21:22:24',1),(2833,1,'2015-04-07','2015-04-07 10:21:10',0),(2834,1,'2015-04-07','2015-04-07 11:55:44',0),(2835,1,'2015-04-07','2015-04-07 13:25:38',0),(2836,1,'2015-04-07','2015-04-07 13:55:28',0),(2837,129,'2015-04-07','2015-04-07 15:37:06',0),(2838,1,'2015-04-07','2015-04-07 17:59:14',0),(2839,1,'2015-04-07','2015-04-07 18:39:26',0),(2840,1,'2015-04-07','2015-04-07 18:39:27',0),(2841,1,'2015-04-07','2015-04-07 18:39:28',0),(2842,1,'2015-04-07','2015-04-07 18:39:29',0),(2843,1,'2015-04-07','2015-04-07 19:07:06',0),(2844,1,'2015-04-08','2015-04-08 00:02:16',0),(2845,1,'2015-04-08','2015-04-08 00:12:32',0),(2846,1,'2015-04-08','2015-04-08 01:57:35',0),(2847,1,'2015-04-08','2015-04-08 03:24:26',0),(2848,1,'2015-04-08','2015-04-08 05:12:24',0),(2849,130,'2015-04-08','2015-04-08 07:51:51',0),(2850,1,'2015-04-08','2015-04-08 08:14:33',0),(2851,129,'2015-04-08','2015-04-08 08:15:01',0),(2852,111,'2015-04-08','2015-04-08 08:15:01',0),(2853,130,'2015-04-08','2015-04-08 08:15:01',0),(2854,1,'2015-04-08','2015-04-08 08:43:30',0),(2855,1,'2015-04-08','2015-04-08 10:08:33',0),(2856,1,'2015-04-08','2015-04-08 17:58:43',0),(2857,1,'2015-04-08','2015-04-08 19:52:48',0),(2858,111,'2015-04-08','2015-04-08 21:14:24',0),(2859,1,'2015-04-09','2015-04-08 22:36:37',0),(2860,1,'2015-04-09','2015-04-09 02:28:24',0),(2861,1,'2015-04-09','2015-04-09 03:14:20',0),(2862,1,'2015-04-09','2015-04-09 04:21:00',0),(2863,1,'2015-04-09','2015-04-09 06:43:58',1),(2864,107,'2015-04-09','2015-04-09 06:44:00',1),(2865,2,'2015-04-09','2015-04-09 06:44:21',1),(2866,23,'2015-04-09','2015-04-09 06:44:24',1),(2867,1,'2015-04-09','2015-04-09 09:12:50',0),(2868,1,'2015-04-09','2015-04-09 09:28:57',1),(2869,1,'2015-04-09','2015-04-09 13:56:58',0),(2870,1,'2015-04-09','2015-04-09 17:57:52',0),(2871,1,'2015-04-10','2015-04-10 03:44:15',0),(2872,1,'2015-04-10','2015-04-10 03:45:46',0),(2873,1,'2015-04-10','2015-04-10 03:51:20',0),(2874,1,'2015-04-10','2015-04-10 06:05:44',0),(2875,1,'2015-04-10','2015-04-10 06:08:56',0),(2876,1,'2015-04-10','2015-04-10 10:09:35',0),(2877,1,'2015-04-10','2015-04-10 11:55:47',0),(2878,1,'2015-04-10','2015-04-10 13:00:11',0),(2879,129,'2015-04-10','2015-04-10 13:00:13',0),(2880,130,'2015-04-10','2015-04-10 13:00:15',0),(2881,111,'2015-04-10','2015-04-10 13:00:18',0),(2882,1,'2015-04-11','2015-04-11 03:00:29',0),(2883,1,'2015-04-11','2015-04-11 05:35:35',0),(2884,1,'2015-04-11','2015-04-11 05:35:38',0),(2885,1,'2015-04-11','2015-04-11 08:49:33',0),(2886,1,'2015-04-11','2015-04-11 13:14:30',0),(2887,1,'2015-04-11','2015-04-11 14:57:32',0),(2888,1,'2015-04-11','2015-04-11 17:03:12',0),(2889,1,'2015-04-11','2015-04-11 17:52:45',0),(2890,1,'2015-04-11','2015-04-11 19:47:07',0),(2891,1,'2015-04-11','2015-04-11 21:15:23',0),(2892,1,'2015-04-12','2015-04-12 04:03:49',0),(2893,1,'2015-04-12','2015-04-12 06:23:35',0),(2894,1,'2015-04-12','2015-04-12 12:44:54',0),(2895,1,'2015-04-12','2015-04-12 13:25:55',0),(2896,1,'2015-04-12','2015-04-12 13:26:33',0),(2897,1,'2015-04-12','2015-04-12 13:28:54',0),(2898,111,'2015-04-12','2015-04-12 13:31:28',0),(2899,1,'2015-04-12','2015-04-12 13:31:35',0),(2900,1,'2015-04-12','2015-04-12 15:27:36',0),(2901,1,'2015-04-12','2015-04-12 17:14:09',0),(2902,1,'2015-04-12','2015-04-12 17:52:55',0),(2903,1,'2015-04-12','2015-04-12 17:56:04',0),(2904,1,'2015-04-12','2015-04-12 20:47:51',0),(2905,129,'2015-04-12','2015-04-12 20:48:00',0),(2906,1,'2015-04-12','2015-04-12 20:48:11',0),(2907,111,'2015-04-12','2015-04-12 20:48:16',0),(2908,1,'2015-04-12','2015-04-12 20:48:25',0),(2909,129,'2015-04-12','2015-04-12 20:48:53',0),(2910,1,'2015-04-12','2015-04-12 20:49:02',0),(2911,1,'2015-04-13','2015-04-13 08:05:16',0),(2912,111,'2015-04-13','2015-04-13 08:10:17',0),(2913,130,'2015-04-13','2015-04-13 08:10:32',0),(2914,129,'2015-04-13','2015-04-13 08:10:32',0),(2915,1,'2015-04-13','2015-04-13 12:49:11',0),(2916,111,'2015-04-13','2015-04-13 13:42:54',0),(2917,130,'2015-04-13','2015-04-13 14:05:58',0),(2918,1,'2015-04-13','2015-04-13 17:52:44',0),(2919,1,'2015-04-13','2015-04-13 18:06:45',0),(2920,111,'2015-04-13','2015-04-13 18:08:12',0),(2921,111,'2015-04-13','2015-04-13 18:08:19',0),(2922,111,'2015-04-13','2015-04-13 18:08:29',0),(2923,111,'2015-04-13','2015-04-13 18:08:29',0),(2924,111,'2015-04-13','2015-04-13 18:08:50',0),(2925,111,'2015-04-13','2015-04-13 18:09:03',0),(2926,1,'2015-04-13','2015-04-13 18:09:05',1),(2927,107,'2015-04-13','2015-04-13 18:09:07',1),(2928,24,'2015-04-13','2015-04-13 18:09:37',1),(2929,2,'2015-04-13','2015-04-13 18:09:51',1),(2930,23,'2015-04-13','2015-04-13 18:09:56',1),(2931,1,'2015-04-13','2015-04-13 18:10:55',1),(2932,1,'2015-04-13','2015-04-13 18:11:00',1),(2933,1,'2015-04-13','2015-04-13 18:12:37',1),(2934,1,'2015-04-13','2015-04-13 18:12:47',1),(2935,1,'2015-04-13','2015-04-13 18:12:51',1),(2936,1,'2015-04-14','2015-04-13 22:01:07',0),(2937,1,'2015-04-14','2015-04-14 00:51:55',0),(2938,1,'2015-04-14','2015-04-14 02:34:00',0),(2939,1,'2015-04-14','2015-04-14 04:53:10',0),(2940,129,'2015-04-14','2015-04-14 04:53:15',0),(2941,1,'2015-04-14','2015-04-14 04:53:26',0),(2942,130,'2015-04-14','2015-04-14 04:53:28',0),(2943,1,'2015-04-14','2015-04-14 06:38:25',0),(2944,111,'2015-04-14','2015-04-14 06:38:51',0),(2945,130,'2015-04-14','2015-04-14 06:38:51',0),(2946,129,'2015-04-14','2015-04-14 06:38:51',0),(2947,130,'2015-04-14','2015-04-14 14:00:01',0),(2948,1,'2015-04-14','2015-04-14 15:34:39',0),(2949,1,'2015-04-14','2015-04-14 18:21:42',0),(2950,1,'2015-04-14','2015-04-14 21:46:43',0),(2951,1,'2015-04-15','2015-04-15 10:07:45',0),(2952,129,'2015-04-15','2015-04-15 11:29:31',0),(2953,1,'2015-04-15','2015-04-15 14:40:47',0),(2954,1,'2015-04-15','2015-04-15 15:11:07',0),(2955,129,'2015-04-15','2015-04-15 15:11:17',0),(2956,1,'2015-04-15','2015-04-15 15:11:25',0),(2957,1,'2015-04-15','2015-04-15 16:20:42',0),(2958,1,'2015-04-15','2015-04-15 17:29:06',0),(2959,1,'2015-04-15','2015-04-15 18:01:23',0),(2960,1,'2015-04-15','2015-04-15 19:26:21',0),(2961,1,'2015-04-16','2015-04-15 23:12:56',0),(2962,1,'2015-04-16','2015-04-16 09:54:07',0),(2963,129,'2015-04-16','2015-04-16 09:54:16',0),(2964,1,'2015-04-16','2015-04-16 10:36:13',0),(2965,1,'2015-04-16','2015-04-16 12:49:14',0),(2966,1,'2015-04-16','2015-04-16 14:13:43',0),(2967,1,'2015-04-16','2015-04-16 18:09:55',0),(2968,1,'2015-04-16','2015-04-16 18:24:16',0),(2969,1,'2015-04-16','2015-04-16 18:24:17',0),(2970,129,'2015-04-16','2015-04-16 18:24:23',0),(2971,1,'2015-04-16','2015-04-16 18:24:29',0),(2972,1,'2015-04-16','2015-04-16 18:24:33',0),(2973,1,'2015-04-16','2015-04-16 18:25:55',0),(2974,1,'2015-04-16','2015-04-16 19:51:47',0),(2975,1,'2015-04-16','2015-04-16 20:42:56',0),(2976,1,'2015-04-17','2015-04-16 22:58:23',0),(2977,111,'2015-04-17','2015-04-16 22:58:31',0),(2978,130,'2015-04-17','2015-04-16 22:58:31',0),(2979,129,'2015-04-17','2015-04-16 22:58:32',0),(2980,1,'2015-04-17','2015-04-16 23:43:08',0),(2981,1,'2015-04-17','2015-04-17 01:47:14',0),(2982,129,'2015-04-17','2015-04-17 04:01:02',0),(2983,1,'2015-04-17','2015-04-17 06:03:28',0),(2984,1,'2015-04-17','2015-04-17 10:38:55',0),(2985,1,'2015-04-17','2015-04-17 12:39:08',0),(2986,1,'2015-04-18','2015-04-17 22:01:43',0),(2987,1,'2015-04-18','2015-04-18 00:49:14',0),(2988,1,'2015-04-18','2015-04-18 10:16:03',0),(2989,1,'2015-04-18','2015-04-18 12:03:25',0),(2990,1,'2015-04-18','2015-04-18 14:27:05',0),(2991,1,'2015-04-18','2015-04-18 17:53:57',0),(2992,1,'2015-04-18','2015-04-18 20:57:55',0),(2993,1,'2015-04-19','2015-04-19 02:55:35',0),(2994,1,'2015-04-19','2015-04-19 05:54:50',0),(2995,1,'2015-04-19','2015-04-19 12:00:42',0),(2996,1,'2015-04-19','2015-04-19 12:49:17',0),(2997,1,'2015-04-19','2015-04-19 14:34:16',0),(2998,1,'2015-04-19','2015-04-19 15:46:19',0),(2999,1,'2015-04-19','2015-04-19 18:02:46',0),(3000,1,'2015-04-20','2015-04-20 02:54:03',0),(3001,130,'2015-04-20','2015-04-20 07:32:18',0),(3002,1,'2015-04-20','2015-04-20 16:18:10',0),(3003,1,'2015-04-21','2015-04-20 22:08:14',0),(3004,111,'2015-04-21','2015-04-20 22:08:31',0),(3005,129,'2015-04-21','2015-04-20 22:08:31',0),(3006,130,'2015-04-21','2015-04-20 22:08:31',0),(3007,1,'2015-04-21','2015-04-21 01:10:19',0),(3008,1,'2015-04-21','2015-04-21 04:52:15',0),(3009,1,'2015-04-21','2015-04-21 10:35:13',0),(3010,129,'2015-04-21','2015-04-21 10:35:17',0),(3011,1,'2015-04-21','2015-04-21 10:35:25',0),(3012,111,'2015-04-21','2015-04-21 10:35:29',0),(3013,1,'2015-04-21','2015-04-21 12:09:54',0),(3014,1,'2015-04-21','2015-04-21 13:13:53',0),(3015,1,'2015-04-21','2015-04-21 13:32:29',0),(3016,1,'2015-04-21','2015-04-21 16:55:26',0),(3017,1,'2015-04-21','2015-04-21 17:38:44',0),(3018,1,'2015-04-21','2015-04-21 17:38:45',0),(3019,129,'2015-04-21','2015-04-21 17:38:49',0),(3020,1,'2015-04-21','2015-04-21 17:38:54',0),(3021,1,'2015-04-21','2015-04-21 17:42:05',0),(3022,1,'2015-04-22','2015-04-22 02:55:23',0),(3023,1,'2015-04-22','2015-04-22 05:59:52',0),(3024,1,'2015-04-22','2015-04-22 08:12:13',0),(3025,1,'2015-04-22','2015-04-22 12:36:33',0),(3026,1,'2015-04-22','2015-04-22 12:49:20',0),(3027,1,'2015-04-22','2015-04-22 18:39:50',0),(3028,1,'2015-04-22','2015-04-22 19:55:18',0),(3029,1,'2015-04-23','2015-04-23 04:08:27',0),(3030,1,'2015-04-23','2015-04-23 05:51:08',0),(3031,1,'2015-04-23','2015-04-23 07:13:25',0),(3032,1,'2015-04-23','2015-04-23 07:22:09',0),(3033,1,'2015-04-23','2015-04-23 07:52:26',0),(3034,1,'2015-04-23','2015-04-23 07:57:24',0),(3035,1,'2015-04-23','2015-04-23 07:58:07',0),(3036,1,'2015-04-23','2015-04-23 08:03:02',0),(3037,1,'2015-04-23','2015-04-23 08:35:16',0),(3038,1,'2015-04-23','2015-04-23 15:10:04',0),(3039,1,'2015-04-23','2015-04-23 19:58:50',0),(3040,1,'2015-04-24','2015-04-24 01:00:15',0),(3041,130,'2015-04-24','2015-04-24 02:48:21',0),(3042,1,'2015-04-24','2015-04-24 06:07:49',0),(3043,1,'2015-04-24','2015-04-24 10:31:43',0),(3044,1,'2015-04-24','2015-04-24 18:06:30',0),(3045,1,'2015-04-24','2015-04-24 21:28:26',0),(3046,130,'2015-04-24','2015-04-24 21:28:40',0),(3047,129,'2015-04-24','2015-04-24 21:28:40',0),(3048,111,'2015-04-24','2015-04-24 21:28:41',0),(3049,1,'2015-04-25','2015-04-25 06:44:24',0),(3050,1,'2015-04-25','2015-04-25 10:23:02',0),(3051,1,'2015-04-25','2015-04-25 11:19:52',0),(3052,1,'2015-04-25','2015-04-25 18:10:23',0),(3053,1,'2015-04-26','2015-04-26 03:07:45',0),(3054,1,'2015-04-26','2015-04-26 09:42:59',0),(3055,1,'2015-04-26','2015-04-26 11:59:25',0),(3056,111,'2015-04-26','2015-04-26 11:59:33',0),(3057,111,'2015-04-26','2015-04-26 11:59:41',0),(3058,111,'2015-04-26','2015-04-26 11:59:51',0),(3059,111,'2015-04-26','2015-04-26 12:00:02',0),(3060,1,'2015-04-26','2015-04-26 12:00:05',1),(3061,107,'2015-04-26','2015-04-26 12:00:12',1),(3062,2,'2015-04-26','2015-04-26 12:00:29',1),(3063,17,'2015-04-26','2015-04-26 12:00:44',1),(3064,2,'2015-04-26','2015-04-26 12:00:52',1),(3065,16,'2015-04-26','2015-04-26 12:00:56',1),(3066,16,'2015-04-26','2015-04-26 12:01:00',1),(3067,16,'2015-04-26','2015-04-26 12:01:03',1),(3068,16,'2015-04-26','2015-04-26 12:01:14',1),(3069,111,'2015-04-26','2015-04-26 12:01:21',1),(3070,1,'2015-04-26','2015-04-26 12:01:22',0),(3071,111,'2015-04-26','2015-04-26 12:01:25',0),(3072,111,'2015-04-26','2015-04-26 12:01:35',0),(3073,1,'2015-04-26','2015-04-26 12:01:36',1),(3074,129,'2015-04-26','2015-04-26 12:01:45',1),(3075,1,'2015-04-26','2015-04-26 12:01:51',1),(3076,1,'2015-04-26','2015-04-26 12:02:37',1),(3077,1,'2015-04-26','2015-04-26 15:07:46',0),(3078,1,'2015-04-26','2015-04-26 17:42:48',1),(3079,129,'2015-04-26','2015-04-26 17:43:31',1),(3080,1,'2015-04-26','2015-04-26 17:43:33',1),(3081,130,'2015-04-26','2015-04-26 17:43:35',1),(3082,1,'2015-04-26','2015-04-26 17:43:37',1),(3083,1,'2015-04-26','2015-04-26 21:25:13',0),(3084,1,'2015-04-27','2015-04-27 09:43:26',0),(3085,1,'2015-04-27','2015-04-27 10:27:01',0),(3086,129,'2015-04-27','2015-04-27 10:27:06',0),(3087,1,'2015-04-27','2015-04-27 10:27:09',0),(3088,1,'2015-04-27','2015-04-27 10:32:39',1),(3089,1,'2015-04-27','2015-04-27 10:34:47',0),(3090,129,'2015-04-27','2015-04-27 10:34:52',0),(3091,1,'2015-04-27','2015-04-27 10:34:58',0),(3092,130,'2015-04-27','2015-04-27 10:35:02',0),(3093,1,'2015-04-27','2015-04-27 10:35:59',0),(3094,129,'2015-04-27','2015-04-27 10:36:04',0),(3095,1,'2015-04-27','2015-04-27 15:50:55',0),(3096,1,'2015-04-27','2015-04-27 16:25:57',0),(3097,1,'2015-04-28','2015-04-27 22:59:39',0),(3098,1,'2015-04-28','2015-04-28 04:22:13',0),(3099,1,'2015-04-28','2015-04-28 06:51:50',0),(3100,1,'2015-04-28','2015-04-28 11:24:13',0),(3101,129,'2015-04-28','2015-04-28 11:24:16',0),(3102,1,'2015-04-28','2015-04-28 12:28:29',1),(3103,107,'2015-04-28','2015-04-28 12:28:31',1),(3104,129,'2015-04-28','2015-04-28 12:28:40',1),(3105,1,'2015-04-28','2015-04-28 12:28:44',1),(3106,129,'2015-04-28','2015-04-28 12:28:47',1),(3107,1,'2015-04-28','2015-04-28 12:28:48',1),(3108,130,'2015-04-28','2015-04-28 12:28:50',1),(3109,1,'2015-04-28','2015-04-28 12:28:53',1),(3110,1,'2015-04-28','2015-04-28 13:38:35',0),(3111,1,'2015-04-28','2015-04-28 13:38:36',0),(3112,129,'2015-04-28','2015-04-28 13:38:42',0),(3113,1,'2015-04-28','2015-04-28 14:26:59',0),(3114,1,'2015-04-28','2015-04-28 15:26:10',0),(3115,1,'2015-04-28','2015-04-28 15:55:26',0),(3116,1,'2015-04-29','2015-04-28 23:10:48',0),(3117,1,'2015-04-29','2015-04-28 23:59:00',0),(3118,1,'2015-04-29','2015-04-29 10:08:51',0),(3119,1,'2015-04-29','2015-04-29 15:14:55',0),(3120,129,'2015-04-29','2015-04-29 15:14:59',0),(3121,1,'2015-04-29','2015-04-29 15:44:16',0),(3122,1,'2015-04-29','2015-04-29 16:19:03',0),(3123,1,'2015-04-29','2015-04-29 20:44:50',0),(3124,1,'2015-04-30','2015-04-30 04:35:23',0),(3125,1,'2015-04-30','2015-04-30 06:03:37',0),(3126,1,'2015-04-30','2015-04-30 09:58:51',0),(3127,1,'2015-05-01','2015-04-30 22:55:34',0),(3128,1,'2015-05-01','2015-05-01 01:35:30',0),(3129,1,'2015-05-01','2015-05-01 02:21:16',0),(3130,1,'2015-05-01','2015-05-01 03:40:39',0),(3131,1,'2015-05-01','2015-05-01 03:41:04',0),(3132,1,'2015-05-01','2015-05-01 06:08:20',0),(3133,1,'2015-05-01','2015-05-01 08:09:27',0),(3134,1,'2015-05-01','2015-05-01 08:09:31',0),(3135,129,'2015-05-01','2015-05-01 08:09:38',0),(3136,1,'2015-05-01','2015-05-01 11:12:04',0),(3137,1,'2015-05-01','2015-05-01 20:56:23',0),(3138,1,'2015-05-01','2015-05-01 21:47:42',0),(3139,1,'2015-05-01','2015-05-01 21:48:39',0),(3140,1,'2015-05-01','2015-05-01 21:49:40',0),(3141,1,'2015-05-01','2015-05-01 21:49:40',0),(3142,111,'2015-05-01','2015-05-01 21:49:41',0),(3143,130,'2015-05-01','2015-05-01 21:50:08',0),(3144,129,'2015-05-01','2015-05-01 21:50:08',0),(3145,1,'2015-05-02','2015-05-02 00:05:27',0),(3146,1,'2015-05-02','2015-05-02 11:44:52',0),(3147,1,'2015-05-02','2015-05-02 17:10:22',0),(3148,1,'2015-05-02','2015-05-02 18:33:25',0),(3149,1,'2015-05-03','2015-05-03 02:40:19',0),(3150,111,'2015-05-03','2015-05-03 02:40:40',0),(3151,130,'2015-05-03','2015-05-03 02:40:40',0),(3152,129,'2015-05-03','2015-05-03 02:40:40',0),(3153,1,'2015-05-03','2015-05-03 07:55:45',0),(3154,1,'2015-05-03','2015-05-03 13:39:09',0),(3155,1,'2015-05-03','2015-05-03 13:39:12',0),(3156,129,'2015-05-03','2015-05-03 13:39:15',0),(3157,1,'2015-05-03','2015-05-03 13:39:18',0),(3158,1,'2015-05-03','2015-05-03 13:39:19',0),(3159,1,'2015-05-03','2015-05-03 13:39:28',0),(3160,1,'2015-05-03','2015-05-03 18:21:20',0),(3161,1,'2015-05-04','2015-05-04 18:04:45',0),(3162,1,'2015-05-05','2015-05-05 01:52:50',0),(3163,1,'2015-05-05','2015-05-05 03:53:48',0),(3164,1,'2015-05-05','2015-05-05 05:08:34',0),(3165,1,'2015-05-05','2015-05-05 05:28:37',0),(3166,1,'2015-05-05','2015-05-05 18:27:31',0),(3167,1,'2015-05-05','2015-05-05 20:18:06',0),(3168,1,'2015-05-05','2015-05-05 20:18:08',0),(3169,1,'2015-05-05','2015-05-05 21:47:41',0),(3170,130,'2015-05-06','2015-05-05 22:37:04',0),(3171,1,'2015-05-06','2015-05-06 06:21:55',0),(3172,1,'2015-05-06','2015-05-06 10:18:05',0),(3173,1,'2015-05-06','2015-05-06 12:00:02',0),(3174,1,'2015-05-06','2015-05-06 13:42:10',0),(3175,1,'2015-05-06','2015-05-06 13:53:52',0),(3176,1,'2015-05-06','2015-05-06 14:43:06',0),(3177,129,'2015-05-06','2015-05-06 14:43:10',0),(3178,1,'2015-05-06','2015-05-06 15:31:52',0),(3179,1,'2015-05-06','2015-05-06 20:33:27',0),(3180,1,'2015-05-07','2015-05-07 02:07:47',0),(3181,1,'2015-05-07','2015-05-07 07:29:22',0),(3182,1,'2015-05-07','2015-05-07 10:22:00',0),(3183,1,'2015-05-07','2015-05-07 10:35:25',0),(3184,1,'2015-05-07','2015-05-07 11:17:54',0),(3185,1,'2015-05-07','2015-05-07 11:18:40',1),(3186,107,'2015-05-07','2015-05-07 11:18:42',1),(3187,1,'2015-05-07','2015-05-07 11:20:20',1),(3188,129,'2015-05-07','2015-05-07 11:20:22',1),(3189,1,'2015-05-07','2015-05-07 11:20:26',1),(3190,130,'2015-05-07','2015-05-07 11:20:29',1),(3191,1,'2015-05-07','2015-05-07 11:34:26',0),(3192,1,'2015-05-07','2015-05-07 13:54:55',1),(3193,1,'2015-05-07','2015-05-07 13:55:08',1),(3194,1,'2015-05-07','2015-05-07 13:55:36',1),(3195,1,'2015-05-07','2015-05-07 20:12:00',0),(3196,1,'2015-05-08','2015-05-07 22:04:31',0),(3197,1,'2015-05-08','2015-05-08 10:01:02',0),(3198,1,'2015-05-09','2015-05-08 23:58:51',0),(3199,1,'2015-05-09','2015-05-09 12:43:03',0),(3200,1,'2015-05-09','2015-05-09 13:39:19',0),(3201,1,'2015-05-09','2015-05-09 17:14:09',0),(3202,1,'2015-05-10','2015-05-10 11:50:16',0),(3203,1,'2015-05-11','2015-05-10 23:00:06',0),(3204,1,'2015-05-11','2015-05-11 01:33:53',0),(3205,1,'2015-05-11','2015-05-11 08:02:56',0),(3206,129,'2015-05-11','2015-05-11 08:03:04',0),(3207,1,'2015-05-11','2015-05-11 08:03:12',0),(3208,130,'2015-05-11','2015-05-11 08:03:14',0),(3209,111,'2015-05-11','2015-05-11 08:03:19',0),(3210,111,'2015-05-11','2015-05-11 08:03:28',0),(3211,1,'2015-05-11','2015-05-11 08:03:30',1),(3212,107,'2015-05-11','2015-05-11 08:03:31',1),(3213,130,'2015-05-11','2015-05-11 08:04:30',1),(3214,130,'2015-05-11','2015-05-11 08:04:34',1),(3215,130,'2015-05-11','2015-05-11 08:05:41',1),(3216,1,'2015-05-11','2015-05-11 14:27:04',0),(3217,130,'2015-05-12','2015-05-11 22:32:28',0),(3218,130,'2015-05-12','2015-05-11 23:44:18',0),(3219,1,'2015-05-12','2015-05-12 03:38:02',0),(3220,1,'2015-05-12','2015-05-12 15:04:38',0),(3221,1,'2015-05-12','2015-05-12 16:53:26',0),(3222,1,'2015-05-13','2015-05-13 04:58:52',0),(3223,1,'2015-05-13','2015-05-13 17:57:22',0),(3224,1,'2015-05-14','2015-05-14 06:20:52',0),(3225,1,'2015-05-14','2015-05-14 07:33:46',0),(3226,111,'2015-05-14','2015-05-14 12:42:00',0),(3227,1,'2015-05-14','2015-05-14 13:25:27',0),(3228,129,'2015-05-14','2015-05-14 13:33:16',0),(3229,130,'2015-05-14','2015-05-14 16:42:46',0),(3230,1,'2015-05-14','2015-05-14 17:39:16',0),(3231,1,'2015-05-14','2015-05-14 19:07:06',0),(3232,1,'2015-05-14','2015-05-14 19:42:01',0),(3233,1,'2015-05-15','2015-05-14 22:35:45',0),(3234,1,'2015-05-15','2015-05-15 03:42:58',0),(3235,1,'2015-05-15','2015-05-15 07:38:37',0),(3236,1,'2015-05-15','2015-05-15 20:46:23',0),(3237,1,'2015-05-16','2015-05-16 13:11:54',0),(3238,1,'2015-05-16','2015-05-16 16:32:48',0),(3239,111,'2015-05-16','2015-05-16 17:48:09',0),(3240,129,'2015-05-16','2015-05-16 17:50:01',0),(3241,130,'2015-05-16','2015-05-16 17:51:53',0),(3242,1,'2015-05-16','2015-05-16 19:17:22',0),(3243,1,'2015-05-17','2015-05-17 00:09:16',0),(3244,1,'2015-05-17','2015-05-17 05:30:13',0),(3245,111,'2015-05-17','2015-05-17 07:00:12',0),(3246,1,'2015-05-17','2015-05-17 07:53:32',0),(3247,1,'2015-05-17','2015-05-17 10:46:34',0),(3248,1,'2015-05-17','2015-05-17 20:59:02',0),(3249,130,'2015-05-18','2015-05-17 23:23:01',0),(3250,1,'2015-05-18','2015-05-18 00:07:47',0),(3251,111,'2015-05-18','2015-05-18 05:17:19',0),(3252,1,'2015-05-18','2015-05-18 08:10:29',0),(3253,1,'2015-05-18','2015-05-18 10:10:56',0),(3254,1,'2015-05-18','2015-05-18 10:22:05',0),(3255,1,'2015-05-18','2015-05-18 14:04:04',0),(3256,1,'2015-05-18','2015-05-18 21:32:42',0),(3257,1,'2015-05-19','2015-05-18 22:04:03',0),(3258,111,'2015-05-19','2015-05-19 00:38:40',0),(3259,111,'2015-05-19','2015-05-19 02:16:02',0),(3260,1,'2015-05-19','2015-05-19 02:16:02',0),(3261,129,'2015-05-19','2015-05-19 02:16:03',0),(3262,1,'2015-05-19','2015-05-19 03:16:19',0),(3263,1,'2015-05-19','2015-05-19 07:43:05',0),(3264,1,'2015-05-19','2015-05-19 11:01:08',0),(3265,1,'2015-05-20','2015-05-20 00:40:20',0),(3266,1,'2015-05-20','2015-05-20 12:46:52',0),(3267,1,'2015-05-20','2015-05-20 19:07:33',0),(3268,1,'2015-05-21','2015-05-21 01:26:36',0),(3269,1,'2015-05-21','2015-05-21 04:25:59',0),(3270,1,'2015-05-21','2015-05-21 06:07:37',0),(3271,1,'2015-05-21','2015-05-21 06:16:41',0),(3272,1,'2015-05-21','2015-05-21 14:42:29',0),(3273,1,'2015-05-21','2015-05-21 18:38:31',0),(3274,1,'2015-05-22','2015-05-21 23:40:56',0),(3275,1,'2015-05-22','2015-05-22 03:57:21',0),(3276,130,'2015-05-22','2015-05-22 07:14:07',0),(3277,1,'2015-05-22','2015-05-22 18:17:00',0),(3278,1,'2015-05-23','2015-05-23 06:41:37',0),(3279,1,'2015-05-23','2015-05-23 14:27:23',0),(3280,1,'2015-05-23','2015-05-23 19:13:55',0),(3281,1,'2015-05-24','2015-05-24 08:10:09',0),(3282,1,'2015-05-24','2015-05-24 08:17:21',0),(3283,1,'2015-05-25','2015-05-25 04:04:30',0),(3284,1,'2015-05-25','2015-05-25 16:24:08',0),(3285,1,'2015-05-26','2015-05-26 01:51:17',0),(3286,1,'2015-05-26','2015-05-26 14:13:36',0),(3287,130,'2015-05-26','2015-05-26 16:18:49',0),(3288,1,'2015-05-27','2015-05-27 02:37:13',0),(3289,1,'2015-05-27','2015-05-27 14:23:34',0),(3290,1,'2015-05-27','2015-05-27 15:33:34',0),(3291,1,'2015-05-28','2015-05-28 03:33:23',0),(3292,1,'2015-05-28','2015-05-28 18:30:12',0),(3293,1,'2015-05-29','2015-05-29 21:33:47',0),(3294,1,'2015-05-30','2015-05-30 12:18:33',0),(3295,1,'2015-05-31','2015-05-30 23:51:24',0),(3296,1,'2015-05-31','2015-05-31 12:47:11',0),(3297,1,'2015-05-31','2015-05-31 13:28:00',0),(3298,1,'2015-06-01','2015-06-01 07:25:08',0),(3299,1,'2015-06-01','2015-06-01 08:03:44',0),(3300,1,'2015-06-02','2015-06-01 22:11:54',0),(3301,129,'2015-06-02','2015-06-02 03:51:51',0),(3302,111,'2015-06-02','2015-06-02 03:51:52',0),(3303,1,'2015-06-02','2015-06-02 10:53:28',0),(3304,1,'2015-06-03','2015-06-02 23:58:27',0),(3305,1,'2015-06-04','2015-06-03 22:40:00',0),(3306,1,'2015-06-04','2015-06-04 11:42:25',0),(3307,1,'2015-06-05','2015-06-05 17:12:54',0),(3308,1,'2015-06-06','2015-06-06 06:32:18',0),(3309,1,'2015-06-06','2015-06-06 10:55:00',0),(3310,1,'2015-06-06','2015-06-06 20:00:32',0),(3311,1,'2015-06-08','2015-06-08 05:34:02',0),(3312,1,'2015-06-08','2015-06-08 20:25:31',0),(3313,1,'2015-06-09','2015-06-09 06:05:51',0),(3314,130,'2015-06-09','2015-06-09 08:47:08',0),(3315,1,'2015-06-09','2015-06-09 10:35:40',0),(3316,1,'2015-06-10','2015-06-09 23:17:39',0),(3317,1,'2015-06-10','2015-06-10 05:43:34',0),(3318,1,'2015-06-10','2015-06-10 11:20:44',0),(3319,1,'2015-06-11','2015-06-11 00:24:02',0),(3320,1,'2015-06-11','2015-06-11 12:30:07',0),(3321,1,'2015-06-12','2015-06-12 02:59:30',0),(3322,111,'2015-06-12','2015-06-12 08:13:46',0),(3323,1,'2015-06-12','2015-06-12 10:40:21',0),(3324,1,'2015-06-12','2015-06-12 14:58:44',0),(3325,1,'2015-06-13','2015-06-13 05:29:42',0),(3326,1,'2015-06-13','2015-06-13 19:17:00',0),(3327,1,'2015-06-14','2015-06-14 06:25:13',0),(3328,1,'2015-06-14','2015-06-14 20:16:06',0),(3329,1,'2015-06-15','2015-06-15 11:44:39',0),(3330,1,'2015-06-15','2015-06-15 13:09:55',0),(3331,1,'2015-06-15','2015-06-15 18:00:13',0),(3332,130,'2015-06-15','2015-06-15 21:38:20',0),(3333,1,'2015-06-16','2015-06-16 02:30:14',0),(3334,1,'2015-06-16','2015-06-16 18:48:36',0),(3335,1,'2015-06-17','2015-06-17 08:53:40',0),(3336,1,'2015-06-17','2015-06-17 13:04:47',0),(3337,1,'2015-06-18','2015-06-18 04:27:14',0),(3338,1,'2015-06-19','2015-06-19 06:37:40',0),(3339,1,'2015-06-19','2015-06-19 14:26:50',0),(3340,1,'2015-06-19','2015-06-19 14:26:52',0),(3341,130,'2015-06-19','2015-06-19 14:27:17',0),(3342,1,'2015-06-19','2015-06-19 18:20:28',0),(3343,129,'2015-06-20','2015-06-20 03:28:30',0),(3344,1,'2015-06-20','2015-06-20 11:22:55',0),(3345,1,'2015-06-21','2015-06-21 00:10:42',0),(3346,1,'2015-06-21','2015-06-21 14:48:46',0),(3347,1,'2015-06-21','2015-06-21 20:06:45',0),(3348,1,'2015-06-22','2015-06-22 05:02:00',0),(3349,1,'2015-06-22','2015-06-22 17:49:33',0),(3350,1,'2015-06-23','2015-06-23 06:07:21',0),(3351,1,'2015-06-23','2015-06-23 18:07:06',0),(3352,1,'2015-06-23','2015-06-23 19:33:16',0),(3353,130,'2015-06-23','2015-06-23 19:33:20',0),(3354,129,'2015-06-23','2015-06-23 19:33:23',0),(3355,1,'2015-06-27','2015-06-27 04:17:43',0),(3356,1,'2015-06-27','2015-06-27 11:48:59',0),(3357,1,'2015-06-27','2015-06-27 15:52:37',0),(3358,1,'2015-06-28','2015-06-28 19:29:05',0),(3359,1,'2015-06-29','2015-06-29 05:28:08',0),(3360,1,'2015-06-29','2015-06-29 17:28:14',0),(3361,1,'2015-06-30','2015-06-30 10:25:27',0),(3362,1,'2015-06-30','2015-06-30 19:42:40',0),(3363,1,'2015-07-01','2015-07-01 03:45:15',0),(3364,1,'2015-07-01','2015-07-01 03:58:34',0),(3365,129,'2015-07-01','2015-07-01 06:16:48',0),(3366,130,'2015-07-01','2015-07-01 07:32:36',0),(3367,111,'2015-07-01','2015-07-01 15:07:23',0),(3368,1,'2015-07-01','2015-07-01 15:52:57',0),(3369,1,'2015-07-03','2015-07-03 06:07:07',0),(3370,111,'2015-07-03','2015-07-03 15:49:22',0),(3371,130,'2015-07-04','2015-07-04 09:02:41',0),(3372,1,'2015-07-05','2015-07-05 06:19:42',0),(3373,1,'2015-07-05','2015-07-05 18:21:04',0),(3374,1,'2015-07-06','2015-07-06 18:30:36',0),(3375,1,'2015-07-07','2015-07-07 07:02:57',0),(3376,1,'2015-07-08','2015-07-07 22:39:33',0),(3377,1,'2015-07-08','2015-07-08 02:51:56',0),(3378,1,'2015-07-08','2015-07-08 10:20:16',0),(3379,1,'2015-07-08','2015-07-08 16:17:12',0),(3380,1,'2015-07-08','2015-07-08 21:49:20',0),(3381,1,'2015-07-09','2015-07-09 10:41:33',0),(3382,1,'2015-07-10','2015-07-09 22:13:35',0),(3383,1,'2015-07-10','2015-07-10 06:00:30',0),(3384,1,'2015-07-10','2015-07-10 10:41:01',0),(3385,1,'2015-07-11','2015-07-10 22:16:42',0),(3386,1,'2015-07-11','2015-07-11 00:04:07',0),(3387,1,'2015-07-11','2015-07-11 10:22:00',0),(3388,1,'2015-07-11','2015-07-11 21:50:58',0),(3389,1,'2015-07-12','2015-07-12 10:21:04',0),(3390,1,'2015-07-12','2015-07-12 21:44:29',0),(3391,1,'2015-07-13','2015-07-13 09:13:48',0),(3392,1,'2015-07-13','2015-07-13 20:46:12',0),(3393,1,'2015-07-14','2015-07-14 08:23:29',0),(3394,1,'2015-07-14','2015-07-14 19:53:36',0),(3395,1,'2015-07-15','2015-07-15 07:27:23',0),(3396,1,'2015-07-15','2015-07-15 18:46:08',0),(3397,1,'2015-07-16','2015-07-16 08:22:03',0),(3398,1,'2015-07-17','2015-07-16 23:40:35',0),(3399,1,'2015-07-17','2015-07-17 05:13:12',0),(3400,1,'2015-07-17','2015-07-17 13:32:25',0),(3401,130,'2015-07-19','2015-07-19 11:22:21',0),(3402,1,'2015-07-19','2015-07-19 14:54:00',0),(3403,129,'2015-07-19','2015-07-19 16:37:39',0),(3404,1,'2015-07-19','2015-07-19 17:39:48',0),(3405,111,'2015-07-20','2015-07-19 22:07:19',0),(3406,1,'2015-07-20','2015-07-20 03:24:42',0),(3407,1,'2015-07-20','2015-07-20 14:49:54',0),(3408,1,'2015-07-21','2015-07-21 02:16:27',0),(3409,1,'2015-07-21','2015-07-21 14:07:48',0),(3410,111,'2015-07-21','2015-07-21 19:25:30',0),(3411,111,'2015-07-22','2015-07-22 10:39:27',0),(3412,1,'2015-07-23','2015-07-23 01:17:05',0),(3413,130,'2015-07-23','2015-07-23 11:58:47',0),(3414,1,'2015-07-23','2015-07-23 12:57:49',0),(3415,1,'2015-07-23','2015-07-23 19:34:26',0),(3416,1,'2015-07-24','2015-07-24 00:44:32',0),(3417,1,'2015-07-24','2015-07-24 12:41:11',0),(3418,1,'2015-07-25','2015-07-25 01:00:09',0),(3419,1,'2015-07-25','2015-07-25 14:48:05',0),(3420,1,'2015-07-26','2015-07-26 04:09:20',0),(3421,1,'2015-07-26','2015-07-26 10:48:58',0),(3422,1,'2015-07-26','2015-07-26 10:49:01',0),(3423,129,'2015-07-26','2015-07-26 16:15:14',0),(3424,1,'2015-07-26','2015-07-26 16:47:19',0),(3425,1,'2015-07-27','2015-07-26 23:02:59',0),(3426,1,'2015-07-27','2015-07-27 04:30:01',0),(3427,1,'2015-07-27','2015-07-27 12:37:06',0),(3428,1,'2015-07-28','2015-07-28 04:24:49',0),(3429,1,'2015-07-28','2015-07-28 13:44:05',0),(3430,1,'2015-07-29','2015-07-29 00:30:28',0),(3431,1,'2015-07-29','2015-07-29 04:27:38',0),(3432,1,'2015-07-29','2015-07-29 06:39:23',0),(3433,1,'2015-07-29','2015-07-29 16:28:33',0),(3434,1,'2015-07-29','2015-07-29 19:40:57',0),(3435,130,'2015-07-30','2015-07-30 00:51:40',0),(3436,1,'2015-07-30','2015-07-30 06:41:06',0),(3437,1,'2015-07-30','2015-07-30 16:27:28',0),(3438,1,'2015-07-31','2015-07-30 22:32:27',0),(3439,1,'2015-07-31','2015-07-31 04:37:05',0),(3440,1,'2015-07-31','2015-07-31 16:23:44',0),(3441,1,'2015-07-31','2015-07-31 21:23:18',0),(3442,1,'2015-08-01','2015-07-31 23:43:39',0),(3443,1,'2015-08-01','2015-08-01 03:02:31',0),(3444,1,'2015-08-01','2015-08-01 05:26:54',0),(3445,129,'2015-08-01','2015-08-01 13:21:04',0),(3446,1,'2015-08-01','2015-08-01 21:54:26',0),(3447,1,'2015-08-02','2015-08-01 22:04:43',0),(3448,1,'2015-08-02','2015-08-02 03:54:38',0),(3449,1,'2015-08-02','2015-08-02 07:11:52',0),(3450,1,'2015-08-03','2015-08-03 02:31:12',0),(3451,1,'2015-08-03','2015-08-03 07:02:22',0),(3452,1,'2015-08-04','2015-08-04 18:42:33',0),(3453,1,'2015-08-05','2015-08-05 13:22:54',0),(3454,1,'2015-08-05','2015-08-05 16:54:43',0),(3455,1,'2015-08-06','2015-08-06 03:54:37',0),(3456,1,'2015-08-06','2015-08-06 06:59:38',0),(3457,1,'2015-08-06','2015-08-06 18:19:53',0),(3458,1,'2015-08-07','2015-08-07 01:48:11',0),(3459,1,'2015-08-07','2015-08-07 06:54:35',0),(3460,1,'2015-08-07','2015-08-07 12:07:11',0),(3461,1,'2015-08-07','2015-08-07 14:43:09',0),(3462,1,'2015-08-07','2015-08-07 14:43:10',0),(3463,1,'2015-08-07','2015-08-07 18:07:22',0),(3464,1,'2015-08-08','2015-08-07 23:01:32',0),(3465,1,'2015-08-08','2015-08-08 00:19:39',0),(3466,1,'2015-08-08','2015-08-08 03:22:32',0),(3467,1,'2015-08-08','2015-08-08 05:33:31',0),(3468,1,'2015-08-08','2015-08-08 09:11:04',0),(3469,1,'2015-08-08','2015-08-08 11:53:25',0),(3470,1,'2015-08-08','2015-08-08 18:35:45',0),(3471,1,'2015-08-09','2015-08-09 00:22:15',0),(3472,1,'2015-08-09','2015-08-09 06:28:31',0),(3473,1,'2015-08-09','2015-08-09 18:36:41',0),(3474,1,'2015-08-10','2015-08-10 06:27:54',0),(3475,1,'2015-08-10','2015-08-10 18:31:13',0),(3476,1,'2015-08-10','2015-08-10 20:47:58',0),(3477,1,'2015-08-11','2015-08-11 01:57:13',0),(3478,1,'2015-08-11','2015-08-11 18:06:37',0),(3479,1,'2015-08-12','2015-08-11 22:54:13',0),(3480,1,'2015-08-12','2015-08-12 01:02:56',0),(3481,1,'2015-08-12','2015-08-12 07:14:52',0),(3482,1,'2015-08-12','2015-08-12 14:17:38',0),(3483,1,'2015-08-12','2015-08-12 16:45:30',0),(3484,1,'2015-08-12','2015-08-12 20:27:19',0),(3485,1,'2015-08-12','2015-08-12 21:50:21',0),(3486,1,'2015-08-13','2015-08-13 00:11:36',0),(3487,1,'2015-08-13','2015-08-13 20:37:13',0),(3488,130,'2015-08-14','2015-08-14 07:48:33',0),(3489,1,'2015-08-15','2015-08-14 22:01:48',0),(3490,1,'2015-08-15','2015-08-15 11:07:34',0),(3491,1,'2015-08-16','2015-08-16 11:02:21',0),(3492,1,'2015-08-16','2015-08-16 14:58:20',0),(3493,1,'2015-08-17','2015-08-16 22:57:56',0),(3494,1,'2015-08-17','2015-08-17 06:38:37',0),(3495,1,'2015-08-18','2015-08-17 23:37:30',0),(3496,1,'2015-08-18','2015-08-18 02:21:48',0),(3497,1,'2015-08-20','2015-08-20 02:18:32',0),(3498,1,'2015-08-20','2015-08-20 12:30:09',0),(3499,1,'2015-08-21','2015-08-21 00:47:28',0),(3500,1,'2015-08-21','2015-08-21 18:17:28',0),(3501,1,'2015-08-22','2015-08-21 22:26:38',0),(3502,1,'2015-08-22','2015-08-22 03:59:43',0),(3503,1,'2015-08-22','2015-08-22 06:59:45',0),(3504,1,'2015-08-22','2015-08-22 08:14:25',0),(3505,1,'2015-08-23','2015-08-23 16:25:36',0),(3506,1,'2015-08-24','2015-08-24 00:51:32',0),(3507,1,'2015-08-24','2015-08-24 04:38:58',0),(3508,1,'2015-08-24','2015-08-24 17:52:33',0),(3509,1,'2015-08-25','2015-08-24 23:00:58',0),(3510,1,'2015-08-25','2015-08-25 10:23:15',0),(3511,1,'2015-08-26','2015-08-26 04:45:19',0),(3512,111,'2015-08-26','2015-08-26 08:59:51',0),(3513,1,'2015-08-26','2015-08-26 16:36:44',0),(3514,1,'2015-08-27','2015-08-27 05:03:20',0),(3515,1,'2015-08-27','2015-08-27 21:50:04',0),(3516,1,'2015-08-28','2015-08-28 03:03:32',0),(3517,130,'2015-08-28','2015-08-28 03:52:41',0),(3518,129,'2015-08-28','2015-08-28 03:53:49',0),(3519,111,'2015-08-28','2015-08-28 04:36:28',0),(3520,1,'2015-08-29','2015-08-28 22:11:25',0),(3521,1,'2015-08-29','2015-08-29 04:17:02',0),(3522,1,'2015-08-29','2015-08-29 20:42:27',0),(3523,1,'2015-08-31','2015-08-30 22:15:20',0),(3524,129,'2015-08-31','2015-08-31 00:35:30',0),(3525,130,'2015-08-31','2015-08-31 01:48:29',0),(3526,1,'2015-08-31','2015-08-31 01:50:02',0),(3527,111,'2015-08-31','2015-08-31 02:04:01',0),(3528,130,'2015-08-31','2015-08-31 03:11:45',0),(3529,1,'2015-08-31','2015-08-31 03:30:18',0),(3530,1,'2015-09-01','2015-09-01 01:34:45',0),(3531,1,'2015-09-02','2015-09-02 14:22:36',0),(3532,1,'2015-09-03','2015-09-03 04:59:41',0),(3533,1,'2015-09-03','2015-09-03 16:45:49',0),(3534,1,'2015-09-03','2015-09-03 19:24:15',0);
/*!40000 ALTER TABLE `PageStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemeStyles`
--

DROP TABLE IF EXISTS `PageThemeStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemeStyles`
--

LOCK TABLES `PageThemeStyles` WRITE;
/*!40000 ALTER TABLE `PageThemeStyles` DISABLE KEYS */;
INSERT INTO `PageThemeStyles` VALUES (8,'link','color:#08c;','1'),(8,'link_hover','color:#08c;','1'),(8,'miscellaneous','','20');
/*!40000 ALTER TABLE `PageThemeStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemes`
--

DROP TABLE IF EXISTS `PageThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemes`
--

LOCK TABLES `PageThemes` WRITE;
/*!40000 ALTER TABLE `PageThemes` DISABLE KEYS */;
INSERT INTO `PageThemes` VALUES (1,'default','Plain Yogurt','Plain Yogurt is concrete5\'s default theme.',0),(2,'greensalad','Green Salad Theme','This is concrete5\'s Green Salad site theme.',0),(3,'dark_chocolate','Dark Chocolate','Dark Chocolate is concrete5\'s default theme in black.',0),(4,'greek_yogurt','Greek Yogurt','An elegant theme for concrete5.',0),(5,'theme_bootswatch','Bootswatch use Bootstrap 2.3.2','by Guillaume Agresta',1),(6,'long_story_short','Long Story Short','A simple, basic theme for single-page websites and presentations.',2),(7,'soul_mate','Soul Mate','COPYRIGHT STYLISHTEMPLATE.COM. Converted by www.rynomediaonline.com',3),(8,'sv','SV < Soul Mate','COPYRIGHT COTE7.com & STYLISHTEMPLATE.COM. Converted by www.rynomediaonline.com',0);
/*!40000 ALTER TABLE `PageThemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeAttributes`
--

DROP TABLE IF EXISTS `PageTypeAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeAttributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeAttributes`
--

LOCK TABLES `PageTypeAttributes` WRITE;
/*!40000 ALTER TABLE `PageTypeAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageTypeAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypes`
--

DROP TABLE IF EXISTS `PageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypes`
--

LOCK TABLES `PageTypes` WRITE;
/*!40000 ALTER TABLE `PageTypes` DISABLE KEYS */;
INSERT INTO `PageTypes` VALUES (1,'core_stack','main.png','Stack',1,0),(2,'dashboard_primary_five','main.png','Dashboard Primary + Five',1,0),(3,'dashboard_header_four_col','main.png','Dashboard Header + Four Column',1,0),(4,'right_sidebar','right_sidebar.png','Right Sidebar',0,0),(5,'left_sidebar','main.png','Left Sidebar',0,0),(6,'full','main.png','Full',0,0),(7,'two_column','main.png','Two Column',0,0),(8,'blog_entry','main.png','Blog Entry',0,0),(9,'home','main.png','Home',0,0),(10,'fullsv','main.png','FullSV',0,0);
/*!40000 ALTER TABLE `PageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageWorkflowProgress`
--

DROP TABLE IF EXISTS `PageWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageWorkflowProgress`
--

LOCK TABLES `PageWorkflowProgress` WRITE;
/*!40000 ALTER TABLE `PageWorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageWorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pages`
--

LOCK TABLES `Pages` WRITE;
/*!40000 ALTER TABLE `Pages` DISABLE KEYS */;
INSERT INTO `Pages` VALUES (1,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,12,0,0,0,-1,'0',0,0),(2,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,13,0,0,0,-1,'0',0,1),(3,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/view.php',0,NULL,0,1,2,0,2,0,-1,'0',0,1),(4,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/write.php',0,NULL,0,1,0,0,3,0,-1,'0',0,1),(5,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/drafts.php',0,NULL,0,1,0,1,3,0,-1,'0',0,1),(6,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,-1,'0',0,1),(7,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,6,0,-1,'0',0,1),(8,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,6,0,-1,'0',0,1),(9,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,6,0,-1,'0',0,1),(10,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,-1,'0',0,1),(11,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,10,0,-1,'0',0,1),(12,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,10,0,-1,'0',0,1),(13,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,10,0,-1,'0',0,1),(14,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,10,0,-1,'0',0,1),(15,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,6,3,2,0,-1,'0',0,1),(16,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,15,0,-1,'0',0,1),(17,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,0,1,15,0,-1,'0',0,1),(18,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,15,0,-1,'0',0,1),(19,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,15,0,-1,'0',0,1),(20,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,15,0,-1,'0',0,1),(21,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,15,0,-1,'0',0,1),(22,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,4,4,2,0,-1,'0',0,1),(23,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/statistics.php',0,NULL,0,1,0,0,22,0,-1,'0',0,1),(24,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,1,22,0,-1,'0',0,1),(25,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,2,22,0,-1,'0',0,1),(26,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,3,22,0,-1,'0',0,1),(27,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,5,5,2,0,-1,'0',0,1),(28,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,3,0,27,0,-1,'0',0,1),(29,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/add.php',0,NULL,0,1,0,0,28,0,-1,'0',0,1),(30,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,1,28,0,-1,'0',0,1),(31,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/customize.php',0,NULL,0,1,0,2,28,0,-1,'0',0,1),(32,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,2,1,27,0,-1,'0',0,1),(33,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,0,32,0,-1,'0',0,1),(34,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,2,27,0,-1,'0',0,1),(35,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,3,27,0,-1,'0',0,1),(36,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/view.php',0,NULL,0,1,2,6,2,0,-1,'0',0,1),(37,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/list.php',0,NULL,0,1,0,0,36,0,-1,'0',0,1),(38,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/me.php',0,NULL,0,1,0,1,36,0,-1,'0',0,1),(39,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,3,7,2,0,-1,'0',0,1),(40,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,39,0,-1,'0',0,1),(41,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,39,0,-1,'0',0,1),(42,0,1,0,NULL,NULL,NULL,1,42,'OVERRIDE','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,40,0,-1,'0',0,1),(43,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,39,0,-1,'0',0,1),(44,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,8,2,0,-1,'0',0,1),(45,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,9,2,0,-1,'0',0,1),(46,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,44,0,-1,'0',0,1),(47,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,44,0,-1,'0',0,1),(48,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,44,0,-1,'0',0,1),(49,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,44,0,-1,'0',0,1),(50,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/add-ons.php',0,NULL,0,1,0,4,44,0,-1,'0',0,1),(51,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,9,10,2,0,-1,'0',0,1),(52,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,6,0,51,0,-1,'0',0,1),(53,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/site_name.php',0,NULL,0,1,0,0,52,0,-1,'0',0,1),(54,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,1,52,0,-1,'0',0,1),(55,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,2,52,0,-1,'0',0,1),(56,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,3,52,0,-1,'0',0,1),(57,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,4,52,0,-1,'0',0,1),(58,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/interface.php',0,NULL,0,1,0,5,52,0,-1,'0',0,1),(59,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,6,1,51,0,-1,'0',0,1),(60,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,59,0,-1,'0',0,1),(61,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk_seo_tool.php',0,NULL,0,1,0,1,59,0,-1,'0',0,1),(62,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/tracking_codes.php',0,NULL,0,1,0,2,59,0,-1,'0',0,1),(63,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/excluded.php',0,NULL,0,1,0,3,59,0,-1,'0',0,1),(64,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/statistics.php',0,NULL,0,1,0,4,59,0,-1,'0',0,1),(65,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/search_index.php',0,NULL,0,1,0,5,59,0,-1,'0',0,1),(66,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,3,2,51,0,-1,'0',0,1),(67,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,66,0,-1,'0',0,1),(68,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clear_cache.php',0,NULL,0,1,0,1,66,0,-1,'0',0,1),(69,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,66,0,-1,'0',0,1),(70,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,10,3,51,0,-1,'0',0,1),(71,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,70,0,-1,'0',0,1),(72,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/files.php',0,NULL,0,1,0,1,70,0,-1,'0',0,1),(73,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/file_types.php',0,NULL,0,1,0,2,70,0,-1,'0',0,1),(74,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,3,70,0,-1,'0',0,1),(75,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,4,70,0,-1,'0',0,1),(76,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,5,70,0,-1,'0',0,1),(77,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/ip_blacklist.php',0,NULL,0,1,0,6,70,0,-1,'0',0,1),(78,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,7,70,0,-1,'0',0,1),(79,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,8,70,0,-1,'0',0,1),(80,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance_mode.php',0,NULL,0,1,0,9,70,0,-1,'0',0,1),(81,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,3,4,51,0,-1,'0',0,1),(82,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,81,0,-1,'0',0,1),(83,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,81,0,-1,'0',0,1),(84,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/public_registration.php',0,NULL,0,1,0,2,81,0,-1,'0',0,1),(85,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,5,51,0,-1,'0',0,1),(86,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,1,0,85,0,-1,'0',0,1),(87,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method/test_settings.php',0,NULL,0,1,0,0,86,0,-1,'0',0,1),(88,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,85,0,-1,'0',0,1),(89,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,2,6,51,0,-1,'0',0,1),(90,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,89,0,-1,'0',0,1),(91,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,89,0,-1,'0',0,1),(92,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,7,51,0,-1,'0',0,1),(93,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,92,0,-1,'0',0,1),(94,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,92,0,-1,'0',0,1),(95,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,92,0,-1,'0',0,1),(96,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/file_storage_locations.php',0,NULL,0,1,0,3,92,0,-1,'0',0,1),(97,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,4,92,0,-1,'0',0,1),(98,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/view.php',0,NULL,0,1,3,8,51,0,-1,'0',0,1),(99,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/backup.php',0,NULL,0,1,0,0,98,0,-1,'0',0,1),(100,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/update.php',0,NULL,0,1,0,1,98,0,-1,'0',0,1),(101,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/database.php',0,NULL,0,1,0,2,98,0,-1,'0',0,1),(102,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/composer.php',0,NULL,0,1,0,1,32,0,-1,'0',0,1),(103,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(104,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(105,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(106,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,-1,'0',0,1),(107,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,12,2,0,-1,'0',0,1),(108,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!drafts/view.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(109,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(110,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(111,0,1,0,NULL,NULL,NULL,1,111,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(112,0,1,0,NULL,NULL,NULL,1,112,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(113,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/view.php',0,NULL,0,1,4,0,1,0,-1,'0',0,1),(114,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/edit.php',0,NULL,0,1,0,0,113,0,-1,'0',0,1),(115,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/avatar.php',0,NULL,0,1,0,1,113,0,-1,'0',0,1),(116,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/messages.php',0,NULL,0,1,0,2,113,0,-1,'0',0,1),(117,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/friends.php',0,NULL,0,1,0,3,113,0,-1,'0',0,1),(118,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1),(119,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1),(120,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,-1,'0',0,1),(122,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(123,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/template_theme.php',0,NULL,0,1,0,4,27,1,-1,'0',0,1),(124,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(125,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(126,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(127,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(128,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(129,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,1,0,-1,'0',0,0),(130,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,1,0,-1,'0',0,0),(131,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0);
/*!40000 ALTER TABLE `Pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccess`
--

DROP TABLE IF EXISTS `PermissionAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccess`
--

LOCK TABLES `PermissionAccess` WRITE;
/*!40000 ALTER TABLE `PermissionAccess` DISABLE KEYS */;
INSERT INTO `PermissionAccess` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1);
/*!40000 ALTER TABLE `PermissionAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntities`
--

DROP TABLE IF EXISTS `PermissionAccessEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntities`
--

LOCK TABLES `PermissionAccessEntities` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntities` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntities` VALUES (1,1),(2,1),(3,1),(4,5),(5,6);
/*!40000 ALTER TABLE `PermissionAccessEntities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroupSets`
--

LOCK TABLES `PermissionAccessEntityGroupSets` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroups`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

LOCK TABLES `PermissionAccessEntityGroups` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityGroups` VALUES (1,1,3),(2,2,1),(3,3,2);
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

LOCK TABLES `PermissionAccessEntityTypeCategories` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypeCategories` VALUES (1,1),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(2,1),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(3,1),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(4,1),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(5,1),(6,6),(6,7);
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypes`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

LOCK TABLES `PermissionAccessEntityTypes` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypes` VALUES (1,'group','Group',0),(2,'user','User',0),(3,'group_set','Group Set',0),(4,'group_combination','Group Combination',0),(5,'page_owner','Page Owner',0),(6,'file_uploader','File Uploader',0);
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityUsers`
--

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityUsers`
--

LOCK TABLES `PermissionAccessEntityUsers` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessList`
--

DROP TABLE IF EXISTS `PermissionAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessList`
--

LOCK TABLES `PermissionAccessList` WRITE;
/*!40000 ALTER TABLE `PermissionAccessList` DISABLE KEYS */;
INSERT INTO `PermissionAccessList` VALUES (1,1,0,10),(2,1,0,10),(3,1,0,10),(4,1,0,10),(5,1,0,10),(6,1,0,10),(7,1,0,10),(8,1,0,10),(9,1,0,10),(10,1,0,10),(11,1,0,10),(12,1,0,10),(13,1,0,10),(14,1,0,10),(15,1,0,10),(16,1,0,10),(17,1,0,10),(18,1,0,10),(19,1,0,10),(20,1,0,10),(21,1,0,10),(22,1,0,10),(23,1,0,10),(24,1,0,10),(25,1,0,10),(26,1,0,10),(27,1,0,10),(28,1,0,10),(29,1,0,10),(30,1,0,10),(31,1,0,10),(32,1,0,10),(33,1,0,10),(34,1,0,10),(35,2,0,10),(36,2,0,10),(37,2,0,10),(38,2,0,10),(39,2,0,10),(39,3,0,10),(40,2,0,10),(40,3,0,10),(41,2,0,10),(42,2,0,10),(43,2,0,10),(44,2,0,10),(44,1,0,10),(45,1,0,10),(46,1,0,10),(47,1,0,10),(48,1,0,10),(49,1,0,10),(50,1,0,10),(51,1,0,10),(52,1,0,10),(53,2,0,10),(54,1,0,10),(55,1,0,10),(56,1,0,10),(57,1,0,10),(58,1,0,10),(59,1,0,10),(60,1,0,10),(61,1,0,10),(62,1,0,10),(63,1,0,10),(64,1,0,10),(65,1,0,10),(66,1,0,10),(67,1,0,10),(68,1,0,10);
/*!40000 ALTER TABLE `PermissionAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessWorkflows`
--

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessWorkflows`
--

LOCK TABLES `PermissionAccessWorkflows` WRITE;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAssignments`
--

DROP TABLE IF EXISTS `PermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAssignments`
--

LOCK TABLES `PermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PermissionAssignments` DISABLE KEYS */;
INSERT INTO `PermissionAssignments` VALUES (1,17),(2,18),(3,55),(4,56),(5,57),(6,58),(7,60),(8,61),(9,62),(10,63),(11,64),(12,66),(13,67),(14,68),(15,69),(16,70),(17,71),(18,72);
/*!40000 ALTER TABLE `PermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionDurationObjects`
--

DROP TABLE IF EXISTS `PermissionDurationObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionDurationObjects`
--

LOCK TABLES `PermissionDurationObjects` WRITE;
/*!40000 ALTER TABLE `PermissionDurationObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionDurationObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeyCategories`
--

DROP TABLE IF EXISTS `PermissionKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeyCategories`
--

LOCK TABLES `PermissionKeyCategories` WRITE;
/*!40000 ALTER TABLE `PermissionKeyCategories` DISABLE KEYS */;
INSERT INTO `PermissionKeyCategories` VALUES (1,'page',NULL),(2,'single_page',NULL),(3,'stack',NULL),(4,'composer_page',NULL),(5,'user',NULL),(6,'file_set',NULL),(7,'file',NULL),(8,'area',NULL),(9,'block_type',NULL),(10,'block',NULL),(11,'admin',NULL),(12,'sitemap',NULL),(13,'marketplace_newsflow',NULL),(14,'basic_workflow',NULL);
/*!40000 ALTER TABLE `PermissionKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeys`
--

DROP TABLE IF EXISTS `PermissionKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeys`
--

LOCK TABLES `PermissionKeys` WRITE;
/*!40000 ALTER TABLE `PermissionKeys` DISABLE KEYS */;
INSERT INTO `PermissionKeys` VALUES (1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0),(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0),(3,'view_page_in_sitemap','View Page in Sitemap',0,0,'Controls whether a user can see a page in the sitemap or intelligent search.',1,0),(4,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0),(5,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0),(6,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0),(7,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0),(8,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0),(9,'edit_page_type','Change Page Type',0,0,'Ability to change just the page type for this page, also check out Theme permissions.',1,0),(10,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0),(11,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0),(12,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0),(13,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0),(14,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0),(15,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0),(16,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0),(17,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',9,0),(18,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',9,0),(19,'view_area','View Area',0,0,'Can view the area and its contents.',8,0),(20,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',8,0),(21,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',8,0),(22,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',8,0),(23,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',8,0),(24,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',8,0),(25,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',8,0),(26,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',8,0),(27,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',8,0),(28,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',10,0),(29,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',10,0),(30,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',10,0),(31,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',10,0),(32,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',10,0),(33,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',10,0),(34,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',10,0),(35,'view_file_set_file','View Files',0,0,'Can view and download files in the site.',6,0),(36,'search_file_set','Search Files in File Manager',0,0,'Can access the file manager',6,0),(37,'edit_file_set_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0),(38,'edit_file_set_file_contents','Edit File Contents',0,0,'Can edit or replace files in set.',6,0),(39,'copy_file_set_files','Copy File',0,0,'Can copy files in file set.',6,0),(40,'edit_file_set_permissions','Edit File Access',0,0,'Can edit access to file sets.',6,0),(41,'delete_file_set','Delete File Set',0,0,'Can delete file set.',6,0),(42,'delete_file_set_files','Delete File',0,0,'Can delete files in set.',6,0),(43,'add_file','Add File',0,1,'Can add files to set.',6,0),(44,'view_file','View Files',0,0,'Can view and download files.',7,0),(45,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',7,0),(46,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',7,0),(47,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',7,0),(48,'copy_file','Copy File',0,0,'Can copy file.',7,0),(49,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',7,0),(50,'delete_file','Delete File',0,0,'Can delete file.',7,0),(51,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',14,0),(52,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',14,0),(53,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',14,0),(54,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',14,0),(55,'access_user_search','Access User Search',0,1,'',5,0),(56,'edit_user_properties','Edit User Details',0,1,NULL,5,0),(57,'view_user_attributes','View User Attributes',0,1,NULL,5,0),(58,'activate_user','Activate/Deactivate User',0,0,NULL,5,0),(59,'sudo','Sign in as User',0,0,NULL,5,0),(60,'delete_user','Delete User',0,0,NULL,5,0),(61,'access_group_search','Access Group Search',0,0,'',5,0),(62,'edit_groups','Edit Groups',0,0,'',5,0),(63,'assign_user_groups','Assign Groups to User',0,1,'',5,0),(64,'backup','Perform Backups',0,0,NULL,11,0),(65,'access_task_permissions','Access Task Permissions',0,0,NULL,11,0),(66,'access_sitemap','Access Sitemap',0,0,NULL,12,0),(67,'access_page_defaults','Access Page Type Defaults',0,0,NULL,11,0),(68,'empty_trash','Empty Trash',0,0,NULL,11,0),(69,'uninstall_packages','Uninstall Packages',0,0,NULL,13,0),(70,'install_packages','Install Packages',0,0,NULL,13,0),(71,'view_newsflow','View Newsflow',0,0,NULL,13,0),(72,'access_user_search_export','Export Site Users',0,0,'Controls whether a user can export site users or not',5,0);
/*!40000 ALTER TABLE `PermissionKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PileContents`
--

DROP TABLE IF EXISTS `PileContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PileContents`
--

LOCK TABLES `PileContents` WRITE;
/*!40000 ALTER TABLE `PileContents` DISABLE KEYS */;
INSERT INTO `PileContents` VALUES (1,1,39,'BLOCK',1,'2014-07-15 14:45:41',1),(2,1,46,'BLOCK',1,'2014-07-15 17:03:49',2),(3,1,46,'BLOCK',1,'2014-07-15 17:03:50',3);
/*!40000 ALTER TABLE `PileContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Piles`
--

DROP TABLE IF EXISTS `Piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piles`
--

LOCK TABLES `Piles` WRITE;
/*!40000 ALTER TABLE `Piles` DISABLE KEYS */;
INSERT INTO `Piles` VALUES (1,1,1,'2014-07-14 15:31:57',NULL,'READY');
/*!40000 ALTER TABLE `Piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueueMessages`
--

DROP TABLE IF EXISTS `QueueMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueueMessages` (
  `message_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) DEFAULT NULL,
  `body` longtext,
  `md5` varchar(32) NOT NULL,
  `timeout` decimal(14,0) unsigned DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueueMessages`
--

LOCK TABLES `QueueMessages` WRITE;
/*!40000 ALTER TABLE `QueueMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueueMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuePageDuplicationRelations`
--

DROP TABLE IF EXISTS `QueuePageDuplicationRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuePageDuplicationRelations`
--

LOCK TABLES `QueuePageDuplicationRelations` WRITE;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Queues`
--

DROP TABLE IF EXISTS `Queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) NOT NULL,
  `timeout` int(5) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Queues`
--

LOCK TABLES `Queues` WRITE;
/*!40000 ALTER TABLE `Queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `Queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SignupRequests`
--

DROP TABLE IF EXISTS `SignupRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SignupRequests`
--

LOCK TABLES `SignupRequests` WRITE;
/*!40000 ALTER TABLE `SignupRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `SignupRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stacks`
--

DROP TABLE IF EXISTS `Stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stacks`
--

LOCK TABLES `Stacks` WRITE;
/*!40000 ALTER TABLE `Stacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `Stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemAntispamLibraries`
--

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemAntispamLibraries`
--

LOCK TABLES `SystemAntispamLibraries` WRITE;
/*!40000 ALTER TABLE `SystemAntispamLibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemAntispamLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemCaptchaLibraries`
--

DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

LOCK TABLES `SystemCaptchaLibraries` WRITE;
/*!40000 ALTER TABLE `SystemCaptchaLibraries` DISABLE KEYS */;
INSERT INTO `SystemCaptchaLibraries` VALUES ('securimage','SecurImage (Default)',1,0);
/*!40000 ALTER TABLE `SystemCaptchaLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemNotifications`
--

DROP TABLE IF EXISTS `SystemNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemNotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemNotifications`
--

LOCK TABLES `SystemNotifications` WRITE;
/*!40000 ALTER TABLE `SystemNotifications` DISABLE KEYS */;
INSERT INTO `SystemNotifications` VALUES (1,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2015-01-05 17:27:06',0,1,'Une nouvelle version de concrete5 est disponible.','','\n\n                <h2>5.6.3.2 Release Notes</h2>\n\n                <p>\n                    Version 5.6.3.2 introduces a lot of bug fixes. It is highly recommended for all users of concrete5.\n               </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-2/\" target=\"_blank\">Full 5.6.3.2 Release Notes</a></h3>\n\n\n                '),(2,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2015-02-28 11:38:43',0,1,'Une nouvelle version de concrete5 est disponible.','','\n\n                <h2>5.6.3.3 Release Notes</h2>\n\n                <p>\n                    Version 5.6.3.3 introduces a lot of bug fixes and some security improvements. It is recommended for all users of concrete5 5.6.x\n               </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-3/\" target=\"_blank\">Full 5.6.3.3 Release Notes</a></h3>\n\n\n                ');
/*!40000 ALTER TABLE `SystemNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeKeys`
--

DROP TABLE IF EXISTS `UserAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeKeys`
--

LOCK TABLES `UserAttributeKeys` WRITE;
/*!40000 ALTER TABLE `UserAttributeKeys` DISABLE KEYS */;
INSERT INTO `UserAttributeKeys` VALUES (10,0,0,1,0,1,0,1,1),(11,0,0,1,0,1,0,2,1);
/*!40000 ALTER TABLE `UserAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeValues`
--

DROP TABLE IF EXISTS `UserAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeValues`
--

LOCK TABLES `UserAttributeValues` WRITE;
/*!40000 ALTER TABLE `UserAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserBannedIPs`
--

DROP TABLE IF EXISTS `UserBannedIPs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserBannedIPs`
--

LOCK TABLES `UserBannedIPs` WRITE;
/*!40000 ALTER TABLE `UserBannedIPs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserBannedIPs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups`
--

LOCK TABLES `UserGroups` WRITE;
/*!40000 ALTER TABLE `UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserOpenIDs`
--

DROP TABLE IF EXISTS `UserOpenIDs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserOpenIDs`
--

LOCK TABLES `UserOpenIDs` WRITE;
/*!40000 ALTER TABLE `UserOpenIDs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserOpenIDs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionAssignGroupAccessList`
--

DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionAssignGroupAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionAssignGroupAccessList`
--

LOCK TABLES `UserPermissionAssignGroupAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionAssignGroupAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionAssignGroupAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionAssignGroupAccessListCustom`
--

LOCK TABLES `UserPermissionAssignGroupAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAccessList`
--

LOCK TABLES `UserPermissionEditPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionEditPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionUserSearchAccessList`
--

DROP TABLE IF EXISTS `UserPermissionUserSearchAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionUserSearchAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionUserSearchAccessList`
--

LOCK TABLES `UserPermissionUserSearchAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionUserSearchAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionUserSearchAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionUserSearchAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionUserSearchAccessListCustom`
--

LOCK TABLES `UserPermissionUserSearchAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessList`
--

LOCK TABLES `UserPermissionViewAttributeAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionViewAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPointHistory`
--

DROP TABLE IF EXISTS `UserPointHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPointHistory`
--

LOCK TABLES `UserPointHistory` WRITE;
/*!40000 ALTER TABLE `UserPointHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPointHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessages`
--

DROP TABLE IF EXISTS `UserPrivateMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessages`
--

LOCK TABLES `UserPrivateMessages` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessagesTo`
--

DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessagesTo`
--

LOCK TABLES `UserPrivateMessagesTo` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSearchIndexAttributes`
--

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSearchIndexAttributes`
--

LOCK TABLES `UserSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserValidationHashes`
--

DROP TABLE IF EXISTS `UserValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserValidationHashes`
--

LOCK TABLES `UserValidationHashes` WRITE;
/*!40000 ALTER TABLE `UserValidationHashes` DISABLE KEYS */;
INSERT INTO `UserValidationHashes` VALUES (1,1,'rmj9oCNfMast4HI5h9s0pVoNgLBWZ2mFQYsMIFHLGOr2neASBTEyUGDFiDtC5RAU',2,1405156662,0),(2,1,'oXA043vKcqCtxtLeOHB6Cb6JMraq0OFCNRG8mEr89RHR3juI0XT5hG4wVwcv9o4E',2,1405329993,0),(3,1,'tTe6aU749c8rMUQ98Ht1QhD597Di1hVwfAwG08qsUkXNKIMviRSTKeRlyx2CrMSB',2,1405331553,0),(4,1,'ENq7x8CCcBikS2vve4lx0cY5bGFWF6fCBBGDHVqZMSwJRcOUKGmkXauI1SfPv8AL',2,1405332139,0),(5,1,'EbX7mmoOn3lazBmEII0m4u9O3mg0UqJBGureCuhxQFh016WWHmMZGh7hhxRxW8VJ',2,1405332685,0),(6,1,'f4DBBiEtayl2xiRjyxS0HRl18w6QSoNapYTqQgJGhHFefv9kWSJX35si349RcspK',2,1405333568,0),(7,1,'TZP60R0p5w0o9pWDQhj9XnteHG73froI7xeHogYJjuryPuwx1FS4Nv5FjK7H7ccF',2,1405333734,0),(8,1,'ag5kM3msy5ykWfITBlnYQ4EfjnR5FFD2MUVxVcF080cLhfBH4tzKKzWNSgzmwHuN',2,1405439692,0),(9,1,'IFcNBl3U1zEZ4v8rSgfhKp83OyMFJk40HTzq0DC3vfHkQJJQaR75EBKKnmto9vEj',2,1425119893,0),(16,1,'EUBDIZyA9zrjEpQHV7TQMBA8xqx75pZh1lR7W5AOhnUjK1MBArjkDpxTKQt2Xp4o',2,1430049696,0);
/*!40000 ALTER TABLE `UserValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(255) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Aadminli','GrCOTE7@GMail.com','$2a$12$CWEkpg7Po27m7JN5CcUli.n14sIiuvBWHTyigLfeVDnQ82HOmL6iu','1',-1,1,'2014-07-12 11:16:53',0,1431331410,1431331409,1375110466,1430997520,26,NULL,NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersFriends`
--

DROP TABLE IF EXISTS `UsersFriends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsersFriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersFriends`
--

LOCK TABLES `UsersFriends` WRITE;
/*!40000 ALTER TABLE `UsersFriends` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsersFriends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgress`
--

DROP TABLE IF EXISTS `WorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wrID` (`wrID`),
  KEY `wpIsCompleted` (`wpIsCompleted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgress`
--

LOCK TABLES `WorkflowProgress` WRITE;
/*!40000 ALTER TABLE `WorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressCategories`
--

DROP TABLE IF EXISTS `WorkflowProgressCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressCategories`
--

LOCK TABLES `WorkflowProgressCategories` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressCategories` DISABLE KEYS */;
INSERT INTO `WorkflowProgressCategories` VALUES (1,'page',NULL),(2,'file',NULL),(3,'user',NULL);
/*!40000 ALTER TABLE `WorkflowProgressCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressHistory`
--

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressHistory`
--

LOCK TABLES `WorkflowProgressHistory` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressHistory` DISABLE KEYS */;
INSERT INTO `WorkflowProgressHistory` VALUES (1,1,'2014-07-12 09:43:01','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"1\";}'),(2,2,'2014-07-12 10:22:04','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"2\";}'),(3,3,'2014-07-14 09:54:43','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"3\";}'),(4,4,'2014-07-14 09:59:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:1:\"4\";}'),(5,5,'2014-07-14 11:22:19','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:1:\"5\";}'),(6,6,'2014-07-14 13:24:49','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:1:\"6\";}'),(7,7,'2014-07-14 14:44:58','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:1:\"7\";}'),(8,8,'2014-07-14 15:27:26','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:1:\"8\";}'),(9,9,'2014-07-14 15:29:18','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:1:\"9\";}'),(10,10,'2014-07-14 15:34:19','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"10\";}'),(11,11,'2014-07-14 16:15:20','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"11\";}'),(12,12,'2014-07-14 16:21:18','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"12\";}'),(13,13,'2014-07-15 10:14:39','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"13\";}'),(14,14,'2014-07-15 10:26:39','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:2:\"14\";}'),(15,15,'2014-07-15 10:33:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:2:\"15\";}'),(16,16,'2014-07-15 14:22:36','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:2:\"16\";}'),(17,17,'2014-07-15 14:24:09','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"17\";}'),(18,18,'2014-07-15 14:24:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:2:\"18\";}'),(19,19,'2014-07-15 14:25:45','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"19\";}'),(20,20,'2014-07-15 14:28:12','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"131\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"20\";}'),(21,21,'2014-07-15 14:28:39','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"21\";}'),(22,22,'2014-07-15 14:29:03','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"22\";}'),(23,23,'2014-07-15 14:29:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"23\";}'),(24,24,'2014-07-15 14:36:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:2:\"24\";}'),(25,25,'2014-07-15 14:37:11','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"20\";s:4:\"wrID\";s:2:\"25\";}'),(26,26,'2014-07-15 14:38:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"21\";s:4:\"wrID\";s:2:\"26\";}'),(27,27,'2014-07-15 14:39:15','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"22\";s:4:\"wrID\";s:2:\"27\";}'),(28,28,'2014-07-15 14:41:03','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"28\";}'),(29,29,'2014-07-15 14:46:53','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"29\";}'),(30,30,'2014-07-15 14:50:13','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"30\";}'),(31,31,'2014-07-15 14:52:33','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"31\";}'),(32,32,'2014-07-15 14:52:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"32\";}'),(33,33,'2014-07-15 15:37:05','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"33\";}'),(34,34,'2014-07-15 15:51:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"34\";}'),(35,35,'2014-07-15 15:52:35','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"35\";}'),(36,36,'2014-07-15 15:53:09','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"36\";}'),(37,37,'2014-07-15 16:31:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"37\";}'),(38,38,'2014-07-15 16:31:40','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"38\";}'),(39,39,'2014-07-15 17:04:50','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"39\";}'),(40,40,'2014-07-15 17:05:47','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"40\";}'),(41,41,'2014-07-15 17:09:31','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"41\";}'),(42,42,'2014-07-15 17:09:56','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"42\";}'),(43,43,'2015-01-14 10:49:30','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"23\";s:4:\"wrID\";s:2:\"43\";}'),(44,44,'2015-01-14 10:54:25','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"44\";}'),(45,45,'2015-01-25 13:10:22','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"24\";s:4:\"wrID\";s:2:\"45\";}'),(46,46,'2015-02-28 12:51:03','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"25\";s:4:\"wrID\";s:2:\"46\";}'),(47,1,'2015-03-31 12:17:01','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"26\";s:4:\"wrID\";s:1:\"1\";}');
/*!40000 ALTER TABLE `WorkflowProgressHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowRequestObjects`
--

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowRequestObjects`
--

LOCK TABLES `WorkflowRequestObjects` WRITE;
/*!40000 ALTER TABLE `WorkflowRequestObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowRequestObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTypes`
--

DROP TABLE IF EXISTS `WorkflowTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTypes`
--

LOCK TABLES `WorkflowTypes` WRITE;
/*!40000 ALTER TABLE `WorkflowTypes` DISABLE KEYS */;
INSERT INTO `WorkflowTypes` VALUES (1,'basic','Basic Workflow',0);
/*!40000 ALTER TABLE `WorkflowTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Workflows`
--

DROP TABLE IF EXISTS `Workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Workflows`
--

LOCK TABLES `Workflows` WRITE;
/*!40000 ALTER TABLE `Workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `Workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddress`
--

DROP TABLE IF EXISTS `atAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddress`
--

LOCK TABLES `atAddress` WRITE;
/*!40000 ALTER TABLE `atAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressCustomCountries`
--

DROP TABLE IF EXISTS `atAddressCustomCountries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressCustomCountries`
--

LOCK TABLES `atAddressCustomCountries` WRITE;
/*!40000 ALTER TABLE `atAddressCustomCountries` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressCustomCountries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressSettings`
--

DROP TABLE IF EXISTS `atAddressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressSettings`
--

LOCK TABLES `atAddressSettings` WRITE;
/*!40000 ALTER TABLE `atAddressSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBoolean`
--

DROP TABLE IF EXISTS `atBoolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBoolean`
--

LOCK TABLES `atBoolean` WRITE;
/*!40000 ALTER TABLE `atBoolean` DISABLE KEYS */;
INSERT INTO `atBoolean` VALUES (20,1),(31,1),(34,1),(64,1),(65,1),(68,1),(69,1),(75,1),(109,1),(118,1),(119,1),(120,1),(128,0),(129,1),(130,1),(131,1),(132,1);
/*!40000 ALTER TABLE `atBoolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBooleanSettings`
--

DROP TABLE IF EXISTS `atBooleanSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBooleanSettings`
--

LOCK TABLES `atBooleanSettings` WRITE;
/*!40000 ALTER TABLE `atBooleanSettings` DISABLE KEYS */;
INSERT INTO `atBooleanSettings` VALUES (5,0),(6,0),(8,0),(9,0),(10,1),(11,1),(15,0);
/*!40000 ALTER TABLE `atBooleanSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTime`
--

DROP TABLE IF EXISTS `atDateTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTime`
--

LOCK TABLES `atDateTime` WRITE;
/*!40000 ALTER TABLE `atDateTime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTimeSettings`
--

DROP TABLE IF EXISTS `atDateTimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTimeSettings`
--

LOCK TABLES `atDateTimeSettings` WRITE;
/*!40000 ALTER TABLE `atDateTimeSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTimeSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDefault`
--

DROP TABLE IF EXISTS `atDefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDefault`
--

LOCK TABLES `atDefault` WRITE;
/*!40000 ALTER TABLE `atDefault` DISABLE KEYS */;
INSERT INTO `atDefault` VALUES (1,'blog, blogging'),(2,'icon-book'),(3,'new blog, write blog, blogging'),(4,'icon-pencil'),(5,'blog drafts, composer'),(6,'icon-book'),(7,'pages, add page, delete page, copy, move, alias'),(8,'pages, add page, delete page, copy, move, alias'),(9,'icon-home'),(10,'pages, add page, delete page, copy, move, alias, bulk'),(11,'icon-road'),(12,'find page, search page, search, find, pages, sitemap'),(13,'icon-search'),(14,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),(15,'icon-picture'),(16,'file, file attributes, title, attribute, description, rename'),(17,'icon-cog'),(18,'files, category, categories'),(19,'icon-list-alt'),(21,'new file set'),(22,'icon-plus-sign'),(23,'users, groups, people, find, delete user, remove user, change password, password'),(24,'find, search, people, delete user, remove user, change password, password'),(25,'icon-user'),(26,'user, group, people, permissions, access, expire'),(27,'icon-globe'),(28,'user attributes, user data, gather data, registration data'),(29,'icon-cog'),(30,'new user, create'),(32,'icon-plus-sign'),(33,'new user group, new group, group, create'),(35,'icon-plus'),(36,'group set'),(37,'icon-list'),(38,'forms, log, error, email, mysql, exception, survey'),(39,'hits, pageviews, visitors, activity'),(40,'icon-signal'),(41,'forms, questions, response, data'),(42,'icon-briefcase'),(43,'questions, quiz, response'),(44,'icon-tasks'),(45,'forms, log, error, email, mysql, exception, survey, history'),(46,'icon-time'),(47,'new theme, theme, active theme, change theme, template, css'),(48,'icon-font'),(49,'theme'),(50,'page types'),(51,'custom theme, change theme, custom css, css'),(52,'page type defaults, global block, global area, starter, template'),(53,'icon-file'),(54,'page attributes, custom'),(55,'icon-cog'),(56,'single, page, custom, application'),(57,'icon-wrench'),(58,'add workflow, remove workflow'),(59,'icon-list'),(60,'icon-user'),(61,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),(62,'icon-th'),(63,'icon-lock'),(66,'block, refresh, custom'),(67,'icon-wrench'),(70,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),(71,'update, upgrade'),(72,'concrete5.org, my account, marketplace'),(73,'buy theme, new theme, marketplace, template'),(74,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),(76,'website name, title'),(77,'logo, favicon, iphone, icon, bookmark'),(78,'tinymce, content block, fonts, editor, content, overlay'),(79,'translate, translation, internationalization, multilingual'),(80,'timezone, profile, locale'),(81,'interface, quick nav, dashboard background, background image'),(82,'vanity, pretty url, seo, pageview, view'),(83,'bulk, seo, change keywords, engine, optimization, search'),(84,'traffic, statistics, google analytics, quant, pageviews, hits'),(85,'pretty, slug'),(86,'turn off statistics, tracking, statistics, pageviews, hits'),(87,'configure search, site search, search option'),(88,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),(89,'cache option, turn off cache, no cache, page cache, caching'),(90,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),(91,'editors, hide site, offline, private, public, access'),(92,'file options, file manager, upload, modify'),(93,'security, files, media, extension, manager, upload'),(94,'security, actions, administrator, admin, package, marketplace, search'),(95,'security, lock ip, lock out, block ip, address, restrict, access'),(96,'security, registration'),(97,'antispam, block spam, security'),(98,'lock site, under construction, hide, hidden'),(99,'profile, login, redirect, specific, dashboard, administrators'),(100,'member profile, member page, community, forums, social, avatar'),(101,'signup, new user, community'),(102,'smtp, mail settings'),(103,'email server, mail settings, mail configuration, external, internal'),(104,'test smtp, test mail'),(105,'email server, mail settings, mail configuration, private message, message system, import, email, message'),(106,'attribute configuration'),(107,'attributes, sets'),(108,'attributes, types'),(110,'overrides, system info, debug, support, help'),(111,'errors, exceptions, develop, support, help'),(112,'email, logging, logs, smtp, pop, errors, mysql, log'),(113,'security, alternate storage, hide files'),(114,'network, proxy server'),(115,'export, backup, database, sql, mysql, encryption, restore'),(116,'upgrade, new version, update'),(117,'export, database, xml, starting, points, schema, refresh, custom, tables'),(121,'icon-picture'),(126,'voyance belgique luxembourg téléphone'),(127,'voyance belgique luxembourg téléphone');
/*!40000 ALTER TABLE `atDefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFile`
--

DROP TABLE IF EXISTS `atFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFile`
--

LOCK TABLES `atFile` WRITE;
/*!40000 ALTER TABLE `atFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `atFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atNumber`
--

DROP TABLE IF EXISTS `atNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atNumber`
--

LOCK TABLES `atNumber` WRITE;
/*!40000 ALTER TABLE `atNumber` DISABLE KEYS */;
INSERT INTO `atNumber` VALUES (122,199.0000),(123,300.0000),(124,550.0000),(125,711.0000);
/*!40000 ALTER TABLE `atNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptions`
--

DROP TABLE IF EXISTS `atSelectOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptions`
--

LOCK TABLES `atSelectOptions` WRITE;
/*!40000 ALTER TABLE `atSelectOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionsSelected`
--

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionsSelected`
--

LOCK TABLES `atSelectOptionsSelected` WRITE;
/*!40000 ALTER TABLE `atSelectOptionsSelected` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptionsSelected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectSettings`
--

DROP TABLE IF EXISTS `atSelectSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectSettings`
--

LOCK TABLES `atSelectSettings` WRITE;
/*!40000 ALTER TABLE `atSelectSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextareaSettings`
--

DROP TABLE IF EXISTS `atTextareaSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextareaSettings`
--

LOCK TABLES `atTextareaSettings` WRITE;
/*!40000 ALTER TABLE `atTextareaSettings` DISABLE KEYS */;
INSERT INTO `atTextareaSettings` VALUES (2,''),(3,''),(4,''),(7,'');
/*!40000 ALTER TABLE `atTextareaSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootswatch_theme`
--

DROP TABLE IF EXISTS `bootswatch_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootswatch_theme` (
  `cID` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) DEFAULT NULL,
  `template_typography` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`cID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootswatch_theme`
--

LOCK TABLES `bootswatch_theme` WRITE;
/*!40000 ALTER TABLE `bootswatch_theme` DISABLE KEYS */;
INSERT INTO `bootswatch_theme` VALUES (1,'spacelab.bootstrap.min',1);
/*!40000 ALTER TABLE `bootswatch_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btAmiantCss3Menu`
--

DROP TABLE IF EXISTS `btAmiantCss3Menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btAmiantCss3Menu` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btAmiantCss3Menu`
--

LOCK TABLES `btAmiantCss3Menu` WRITE;
/*!40000 ALTER TABLE `btAmiantCss3Menu` DISABLE KEYS */;
INSERT INTO `btAmiantCss3Menu` VALUES (31,'display_asc','top',0,0,'relevant','all',0,0),(32,'display_asc','top',0,0,'all','all',0,0),(33,'display_asc','top',0,0,'all','all',0,0),(34,'display_asc','top',0,0,'all','all',0,0);
/*!40000 ALTER TABLE `btAmiantCss3Menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentFile`
--

DROP TABLE IF EXISTS `btContentFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentFile`
--

LOCK TABLES `btContentFile` WRITE;
/*!40000 ALTER TABLE `btContentFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentImage`
--

DROP TABLE IF EXISTS `btContentImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentImage`
--

LOCK TABLES `btContentImage` WRITE;
/*!40000 ALTER TABLE `btContentImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentLocal`
--

DROP TABLE IF EXISTS `btContentLocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentLocal`
--

LOCK TABLES `btContentLocal` WRITE;
/*!40000 ALTER TABLE `btContentLocal` DISABLE KEYS */;
INSERT INTO `btContentLocal` VALUES (1,'	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add pages using in-context editing.</h2></div>\n						'),(2,'<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>'),(3,'<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>'),(4,'<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>'),(5,'\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>'),(14,'<a href=\'/login\'>Administration</a>'),(16,'<h1>Titre H1</h1>\r\n<h2>Titre H2</h2>\r\n<h3>Titre H3</h3>\r\n<h4>Titre H4</h4>\r\n<h5>Titre H5</h5>\r\n<p>Paragraphe P</p>'),(19,'<p>Left</p>'),(20,'<p>Contenu Left</p>'),(21,'<p>Center</p>'),(22,'<p>Center Détail</p>'),(23,'<p>Center Bottom</p>'),(24,'<p>Right</p>'),(25,'<p>Right Détail</p>'),(28,'<style>\r\n\r\n.presentationAlexandra{\r\n  display: block;\r\n  background-image: url(\"../img/fond.png\");\r\n  font-family: \"Comic Sans Ms\";\r\n  font-size: 17px;\r\n  position: relative;\r\n  background-color: white;\r\n  letter-spacing: 0.1em;\r\n  color:black;\r\n  margin: 10px auto;\r\n  padding: 10px 20px;\r\n  opacity: 1;\r\n  width: 700px;\r\n  height: 450px;\r\n  border-radius: 20px;\r\n}\r\n.presentationAlexandra a{\r\n  text-decoration: none;\r\n}\r\n.photoAlexandra{\r\n  float: left;\r\n  display: inline-block;\r\n  width:200px;\r\n  height: 300px;\r\n  margin: 10px 10px 20px 0px;\r\n  border: 10px orange groove;\r\n  border-radius: 20px;\r\n}\r\n\r\n.laius p {\r\n  margin-top: -10px;\r\n  padding: 0;\r\n  margin-left: 230px;\r\n  line-height: 1.4;\r\n  font-style: italic;\r\n}\r\n.laius .lettrine p{\r\n  /*border:1px solid red;*/\r\n  margin: 10px 0;\r\n}\r\n\r\n.laius .lettrine p:first-letter {\r\n  display: inline;\r\n  margin-top: -10px;\r\n  margin-left: 100px;\r\n  font-family: trebuchet MS;\r\n  font-size:80px;\r\n  color:#0000fe;\r\n  width:55px;\r\n  float:left;\r\n}\r\n.laius .lettrine p:first-of-type{\r\n  display: inline-block;\r\n  color: #42326c;\r\n  font-size: 30px;\r\n  line-height: 1.2;\r\n  margin-top: 10px;\r\n  font-style: normal;\r\n}\r\n\r\n.numTel{\r\n  display: inline-block;\r\n  /*display: block;*/\r\n  /*padding: 0;*/\r\n  width: 100%;\r\n  font-size: 12px;\r\n  /*border:1px solid red;*/\r\n  /*text-align: left;*/\r\n  line-height: 1;\r\n  vertical-align: middle;\r\n  /*margin: 5px 10px;*/\r\n}\r\n\r\n.boutonTel{\r\n  position: relative;\r\n  display: inline-block;\r\n  background-color: #00f;\r\n  border-radius: 20px;\r\n  width: 330px;\r\n  height: 70px;\r\n  vertical-align: middle;\r\n  border: 5px groove orange;\r\n  background: linear-gradient( #000, #2C2C2C, #777);\r\n  margin: 5px 3px;\r\n}\r\n.boutonTel img{\r\n  display: inline-block;\r\n  position: relative;\r\n  border:1px solid red;\r\n  /*float:left;*/\r\n  margin: 7px 0 7px 10px;\r\n  padding: 0;\r\n  border-radius: 7px;\r\n  border:1px solid yellow;\r\n}\r\n.boutonTel p{\r\n  position: relative;\r\n  display: inline-block;\r\n  color:gold;\r\n  width: 72%;\r\n    /*font-family: arial;*/\r\n  letter-spacing: 3px;\r\n  font-weight: bold;\r\n  margin: 0 auto;\r\n  padding: 0;\r\n  font-size: 25px;\r\n  /*border:1px solid greenyellow;*/\r\n  margin-left: 5px;\r\n  top: 5px;\r\n  text-align: center;\r\n  vertical-align: top;\r\n  line-height: 1.3;\r\n}\r\n.boutonTel .prix{\r\n  position: relative;\r\n  display: block;\r\n  margin: 0;\r\n  padding: 0;\r\n  font-style: italic;\r\n  top:5px;\r\n  font-size: 12px;\r\n  text-align: right;\r\n}\r\n\r\n</style>\r\n\r\n\r\n<div class=\"presentationAlexandra\">\r\n        <a href=\"http://alexandra.sublime-voyance.com\" alt=\" Site Alexandra \" title =\" Plus d\'infos sur Alexandra... \">\r\n          <img class=\"photoAlexandra\" src=\"img/alexandra.jpg\" width=\"333\" height=\"500\" alt=\"alexandra\"/>\r\n\r\n          <div class=\"laius\">\r\n            <div class=\"lettrine\">\r\n              <p>Aloâ, je suis<br>lexandra.</p>\r\n            </div>\r\n\r\n            <div class=\"presentation\">\r\n              <p>Mes grands-mères tant paternelles que maternelles possédaient un don de voyance...</p>\r\n              <p>Après plusieurs années de réflexion, j’ai décidé de vous faire bénéficier de ce don qu\'ils m\'ont transmis et ainsi apporter des réponses claires à vos questions.</p>\r\n              <p>Profitez d\'une réponse GRATUITE à la question de VOTRE choix !</p>\r\n              <p>À très bientôt…</p>\r\n            </div>\r\n          </div>\r\n          <div class=\"numTel\">\r\n\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/be.gif\" width=\"60\" height=\"53\" alt=\"belgique\" title=\" N° BELGIQUE \" />\r\n              <p>090-788-371<span class=\"prix\">(Belgique - 1,50€/min)</span></p>\r\n            </div>\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/lu.gif\" width=\"60\" height=\"53\" alt=\"luxembourg\" title=\" N° LUXEMBOURG \" />\r\n              <p>901-470-28<span class=\"prix\">(Luxembourg 1,15€/min)</span></p>\r\n            </div>\r\n\r\n            <!--<div class=\"boutonTel\">Luxembourg:<br>901-470-28 (1,15€/min)</div>-->\r\n\r\n          </div>\r\n        </a>\r\n      </div>'),(29,'<style>\r\n\r\n.presentationAlexandra{\r\n  display: block;\r\n  background-image: url(\"img/fond.png\");\r\n  font-family: \"Comic Sans Ms\";\r\n  font-size: 17px;\r\n  position: relative;\r\n  background-color: white;\r\n  letter-spacing: 0.1em;\r\n  color:black;\r\n  margin: 10px auto;\r\n  padding: 10px 20px;\r\n  opacity: 1;\r\n  width: 700px;\r\n  height: 450px;\r\n  border-radius: 20px;\r\n}\r\n.presentationAlexandra a{\r\n  text-decoration: none;\r\ncolor:purple;\r\ntext-align:justify;\r\n}\r\n\r\np {\r\nmargin:5px 0;\r\n}\r\n\r\n.photoAlexandra{\r\n  float: left;\r\n  display: inline-block;\r\n  width:200px;\r\n  height: 300px;\r\n  margin: 10px 10px 20px 0px;\r\n  border: 10px orange groove;\r\n  border-radius: 20px;\r\n}\r\n\r\n.laius a p{\r\n  margin-top: 10px;\r\n  padding: 0;\r\n  margin-left: 230px;\r\n  line-height: 1.4;\r\n  font-style: italic;\r\n}\r\n.laius .lettrine a p{\r\n  /*border:1px solid red;*/\r\n  margin: 10px 0;\r\n}\r\n\r\n.laius .lettrine p:first-letter {\r\n  display: inline;\r\n  margin-top: -10px;\r\n  margin-left: 100px;\r\n  font-family: trebuchet MS;\r\n  font-size:80px;\r\n  color:#0000fe;\r\n  width:55px;\r\n  float:left;\r\n}\r\n.laius .lettrine p:first-of-type{\r\n  display: inline-block;\r\n  color: #42326c;\r\n  font-size: 30px;\r\n  line-height: 1.2;\r\n  margin-top: 10px;\r\n  font-style: normal;\r\n}\r\n\r\n.numTel{\r\n  display: inline-block;\r\n  width: 100%;\r\n  font-size: 12px;\r\n  /*border:1px solid red;*/\r\n  line-height: 1;\r\n  vertical-align: middle;\r\n  /*margin: 5px 10px;*/\r\n}\r\n\r\n.boutonTel{\r\n  position: relative;\r\n  display: inline-block;\r\n  background-color: #00f;\r\n  border-radius: 20px;\r\n  width: 320px;\r\n  height: 70px;\r\n  vertical-align: middle;\r\n  border: 5px groove orange;\r\n  background: linear-gradient( #000, #2C2C2C, #777);\r\n  margin: 5px 3px;\r\n}\r\n.boutonTel img{\r\n  display: inline-block;\r\n  position: relative;\r\n  border:1px solid red;\r\n  /*float:left;*/\r\n  margin: 7px 0 7px 10px;\r\n  padding: 0;\r\n  border-radius: 7px;\r\n  border:1px solid yellow;\r\n}\r\n.boutonTel p{\r\n  position: relative;\r\n  display: inline-block;\r\n  color:gold;\r\n  width: 72%;\r\n    /*font-family: arial;*/\r\n  letter-spacing: 3px;\r\n  font-weight: bold;\r\n  margin: 0 auto;\r\n  padding: 0;\r\n  font-size: 25px;\r\n  /*border:1px solid greenyellow;*/\r\n  margin-left: 5px;\r\n  top: 5px;\r\n  text-align: center;\r\n  vertical-align: top;\r\n  line-height: 1.3;\r\n}\r\n.boutonTel .prix{\r\n  position: relative;\r\n  display: block;\r\n  margin: 0;\r\n  padding: 0;\r\n  font-style: italic;\r\n  top:5px;\r\n  font-size: 12px;\r\n  text-align: right;\r\n}\r\n\r\n</style>\r\n\r\n\r\n<div class=\"presentationAlexandra\">\r\n        <a href=\"http://alexandra.sublime-voyance.com\" alt=\" Site Alexandra \" title =\" Plus d\'infos sur Alexandra... \">\r\n          <img class=\"photoAlexandra\" src=\"img/alexandra.jpg\" width=\"333\" height=\"500\" alt=\"alexandra\"/>\r\n\r\n          <div class=\"laius\">\r\n            <div class=\"lettrine\">\r\n              <p>Aloâ, je suis<br>lexandra.</p>\r\n            </div>\r\n\r\n            <div class=\"presentation\">\r\n              <p>Mes grands-mères tant paternelles que maternelles possédaient un don de voyance...</p>\r\n              <p>Après plusieurs années de réflexion, j’ai décidé de vous faire bénéficier de ce don qu\'ils m\'ont transmis et ainsi apporter des réponses claires à vos questions.</p>\r\n              <p>Profitez d\'une réponse GRATUITE à la question de VOTRE choix !</p>\r\n              <p>À très bientôt…</p>\r\n            </div>\r\n          </div>\r\n          <div class=\"numTel\">\r\n\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/be.gif\" width=\"60\" height=\"53\" alt=\"belgique\" title=\" N° BELGIQUE \" />\r\n              <p>090-788-371<span class=\"prix\">(Belgique - 1,50€/min)</span></p>\r\n            </div>\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/lu.gif\" width=\"60\" height=\"53\" alt=\"luxembourg\" title=\" N° LUXEMBOURG \" />\r\n              <p>901-470-28<span class=\"prix\">(Luxembourg 1,15€/min)</span></p>\r\n            </div>\r\n\r\n            <!--<div class=\"boutonTel\">Luxembourg:<br>901-470-28 (1,15€/min)</div>-->\r\n\r\n          </div>\r\n        </a>\r\n      </div>'),(35,'<style>\r\n\r\n.presentationAlexandra{\r\n  display: block;\r\n  background-image: url(\"img/fond.png\");\r\n  font-family: \"Comic Sans Ms\";\r\n  font-size: 16px;\r\n  position: relative;\r\n  background-color: white;\r\n  letter-spacing: 0.1em;\r\n  color:black;\r\n  margin: 10px auto;\r\n  padding: 10px 20px;\r\n  opacity: 1;\r\n  width: 700px;\r\n  height: 450px;\r\n  border-radius: 20px;\r\n}\r\n.presentationAlexandra a{\r\n  text-decoration: none;\r\ncolor:purple;\r\ntext-align:justify;\r\n}\r\n\r\np {\r\nmargin:5px 0;\r\n}\r\n\r\n.photoAlexandra{\r\n  float: left;\r\n  display: inline-block;\r\n  width:200px;\r\n  height: 300px;\r\n  margin: 10px 10px 20px 0px;\r\n  border: 10px orange groove;\r\n  border-radius: 20px;\r\n}\r\n\r\n.laius a p{\r\n  margin-top: 10px;\r\n  padding: 0;\r\n  margin-left: 230px;\r\n  line-height: 1.4;\r\n  font-style: italic;\r\n}\r\n.laius .lettrine a p{\r\n  /*border:1px solid red;*/\r\n  margin: 10px 0;\r\n}\r\n\r\n.laius .lettrine p:first-letter {\r\n  display: inline;\r\n  margin-top: -10px;\r\n  margin-left: 100px;\r\n  font-family: trebuchet MS;\r\n  font-size:80px;\r\n  color:#0000fe;\r\n  width:55px;\r\n  float:left;\r\n}\r\n.laius .lettrine p:first-of-type{\r\n  display: inline-block;\r\n  color: #42326c;\r\n  font-size: 30px;\r\n  line-height: 1.2;\r\n  margin-top: 10px;\r\n  font-style: normal;\r\n}\r\n\r\n.numTel{\r\n  display: inline-block;\r\n  width: 100%;\r\n  font-size: 12px;\r\n  /*border:1px solid red;*/\r\n  line-height: 1;\r\n  vertical-align: middle;\r\n  /*margin: 5px 10px;*/\r\n}\r\n\r\n.boutonTel{\r\n  position: relative;\r\n  display: inline-block;\r\n  background-color: #00f;\r\n  border-radius: 20px;\r\n  width: 320px;\r\n  height: 70px;\r\n  vertical-align: middle;\r\n  border: 5px groove orange;\r\n  background: linear-gradient( #000, #2C2C2C, #777);\r\n  margin: 5px 3px;\r\n}\r\n.boutonTel img{\r\n  display: inline-block;\r\n  position: relative;\r\n  border:1px solid red;\r\n  /*float:left;*/\r\n  margin: 7px 0 7px 10px;\r\n  padding: 0;\r\n  border-radius: 7px;\r\n  border:1px solid yellow;\r\n}\r\n.boutonTel p{\r\n  position: relative;\r\n  display: inline-block;\r\n  color:gold;\r\n  width: 72%;\r\n    /*font-family: arial;*/\r\n  letter-spacing: 3px;\r\n  font-weight: bold;\r\n  margin: 0 auto;\r\n  padding: 0;\r\n  font-size: 24px;\r\n  /*border:1px solid greenyellow;*/\r\n  margin-left: 5px;\r\n  top: 5px;\r\n  text-align: center;\r\n  vertical-align: top;\r\n  line-height: 1.3;\r\n}\r\n.boutonTel .prix{\r\n  position: relative;\r\n  display: block;\r\n  margin: 0;\r\n  padding: 0;\r\n  font-style: italic;\r\n  top:5px;\r\n  font-size: 12px;\r\n  text-align: right;\r\n}\r\n\r\n</style>\r\n\r\n\r\n<div class=\"presentationAlexandra\">\r\n        <a href=\"http://alexandra.sublime-voyance.com\" alt=\" Site Alexandra \" title =\" Plus d\'infos sur Alexandra... \">\r\n          <img class=\"photoAlexandra\" src=\"img/alexandra.jpg\" width=\"333\" height=\"500\" alt=\"alexandra\"/>\r\n\r\n          <div class=\"laius\">\r\n            <div class=\"lettrine\">\r\n              <p>Aloâ, je suis<br>lexandra.</p>\r\n            </div>\r\n\r\n            <div class=\"presentation\">\r\n              <p>Mes grands-mères tant paternelles que maternelles possédaient un don de voyance...</p>\r\n              <p>Après plusieurs années de réflexion, j’ai décidé de vous faire bénéficier de ce don qu\'ils m\'ont transmis et ainsi apporter des réponses claires à vos questions... (Cliquez ICI !)</p>\r\n              <p>Profitez d\'une réponse GRATUITE à la question de VOTRE choix !</p>\r\n              <p>À très bientôt…</p>\r\n            </div>\r\n          </div>\r\n          <div class=\"numTel\">\r\n\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/be.gif\" width=\"60\" height=\"53\" alt=\"belgique\" title=\" N° BELGIQUE \" />\r\n              <p>090-788-371<span class=\"prix\">(Belgique - 1,50€/min)</span></p>\r\n            </div>\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/lu.gif\" width=\"60\" height=\"53\" alt=\"luxembourg\" title=\" N° LUXEMBOURG \" />\r\n              <p>901-470-28<span class=\"prix\">(Luxembourg 1,15€/min)</span></p>\r\n            </div>\r\n\r\n            <!--<div class=\"boutonTel\">Luxembourg:<br>901-470-28 (1,15€/min)</div>-->\r\n\r\n          </div>\r\n        </a>\r\n      </div>'),(36,'<style>\r\n\r\n.presentationAlexandra{\r\n  display: block;\r\n  background-image: url(\"img/fond.png\");\r\n  font-family: \"Comic Sans Ms\";\r\n  font-size: 16px;\r\n  position: relative;\r\n  background-color: white;\r\n  letter-spacing: 0.1em;\r\n  color:black;\r\n  margin: 10px auto;\r\n  padding: 10px 20px;\r\n  opacity: 1;\r\n  width: 700px;\r\n  height: 450px;\r\n  border-radius: 20px;\r\n}\r\n.presentationAlexandra a{\r\n  text-decoration: none;\r\ncolor:purple;\r\ntext-align:justify;\r\n}\r\n\r\np {\r\nmargin:5px 0;\r\n}\r\n\r\n.photoAlexandra{\r\n  float: left;\r\n  display: inline-block;\r\n  width:200px;\r\n  height: 300px;\r\n  margin: 10px 10px 20px 0px;\r\n  border: 10px orange groove;\r\n  border-radius: 20px;\r\n}\r\n\r\n.laius a p{\r\n  margin-top: 10px;\r\n  padding: 0;\r\n  margin-left: 230px;\r\n  line-height: 1.4;\r\n  font-style: italic;\r\n}\r\n.laius .lettrine a p{\r\n  /*border:1px solid red;*/\r\n  margin: 10px 0;\r\n}\r\n\r\n.laius .lettrine p:first-letter {\r\n  display: inline;\r\n  margin-top: -10px;\r\n  margin-left: 100px;\r\n  font-family: trebuchet MS;\r\n  font-size:80px;\r\n  color:#0000fe;\r\n  width:55px;\r\n  float:left;\r\n}\r\n.laius .lettrine p:first-of-type{\r\n  display: inline-block;\r\n  color: #42326c;\r\n  font-size: 30px;\r\n  line-height: 1.2;\r\n  margin-top: 10px;\r\n  font-style: normal;\r\n}\r\n\r\n.numTel{\r\n  display: inline-block;\r\n  width: 100%;\r\n  font-size: 12px;\r\n  /*border:1px solid red;*/\r\n  line-height: 1;\r\n  vertical-align: middle;\r\n  /*margin: 5px 10px;*/\r\n}\r\n\r\n.boutonTel{\r\n  position: relative;\r\n  display: inline-block;\r\n  background-color: #00f;\r\n  border-radius: 20px;\r\n  width: 320px;\r\n  height: 70px;\r\n  vertical-align: middle;\r\n  border: 5px groove orange;\r\n  background: linear-gradient( #000, #2C2C2C, #777);\r\n  margin: 5px 3px;\r\n}\r\n.boutonTel img{\r\n  display: inline-block;\r\n  position: relative;\r\n  border:1px solid red;\r\n  /*float:left;*/\r\n  margin: 7px 0 7px 10px;\r\n  padding: 0;\r\n  border-radius: 7px;\r\n  border:1px solid yellow;\r\n}\r\n.boutonTel p{\r\n  position: relative;\r\n  display: inline-block;\r\n  color:gold;\r\n  width: 72%;\r\n    /*font-family: arial;*/\r\n  letter-spacing: 3px;\r\n  font-weight: bold;\r\n  margin: 0 auto;\r\n  padding: 0;\r\n  font-size: 24px;\r\n  /*border:1px solid greenyellow;*/\r\n  margin-left: 5px;\r\n  top: 5px;\r\n  text-align: center;\r\n  vertical-align: top;\r\n  line-height: 1.3;\r\n}\r\n.boutonTel .prix{\r\n  position: relative;\r\n  display: block;\r\n  margin: 0;\r\n  padding: 0;\r\n  font-style: italic;\r\n  top:5px;\r\n  font-size: 12px;\r\n  text-align: right;\r\n}\r\n\r\n</style>\r\n\r\n\r\n<div class=\"presentationAlexandra\">\r\n        <a href=\"http://alexandra.sublime-voyance.com\" alt=\" Site Alexandra \" title =\" Plus d\'infos sur Alexandra... \">\r\n          <img class=\"photoAlexandra\" src=\"img/alexandra.jpg\" width=\"333\" height=\"500\" alt=\"alexandra\"/>\r\n\r\n          <div class=\"laius\">\r\n            <div class=\"lettrine\">\r\n              <p>Aloâ, je suis<br>lexandra.</p>\r\n            </div>\r\n\r\n            <div class=\"presentation\">\r\n              <p>Mes grands-mères tant paternelles que maternelles possédaient un don de voyance...</p>\r\n              <p>Après plusieurs années de réflexion, j’ai décidé de vous faire bénéficier de ce don qu\'ils m\'ont transmis et ainsi apporter des réponses claires à vos questions... <i><em>(Cliquez ICI !)</em></i></p>\r\n              <p>Profitez d\'une réponse GRATUITE à la question de VOTRE choix !</p>\r\n              <p>À très bientôt…</p>\r\n            </div>\r\n          </div>\r\n          <div class=\"numTel\">\r\n\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/be.gif\" width=\"60\" height=\"53\" alt=\"belgique\" title=\" N° BELGIQUE \" />\r\n              <p>090-788-371<span class=\"prix\">(Belgique - 1,50€/min)</span></p>\r\n            </div>\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/lu.gif\" width=\"60\" height=\"53\" alt=\"luxembourg\" title=\" N° LUXEMBOURG \" />\r\n              <p>901-470-28<span class=\"prix\">(Luxembourg 1,15€/min)</span></p>\r\n            </div>\r\n\r\n            <!--<div class=\"boutonTel\">Luxembourg:<br>901-470-28 (1,15€/min)</div>-->\r\n\r\n          </div>\r\n        </a>\r\n      </div>'),(37,'<style>\r\n\r\n.presentationAlexandra{\r\n  display: block;\r\n  background-image: url(\"img/fond.png\");\r\n  font-family: \"Comic Sans Ms\";\r\n  font-size: 16px;\r\n  position: relative;\r\n  background-color: white;\r\n  letter-spacing: 0.1em;\r\n  color:black;\r\n  margin: 10px auto;\r\n  padding: 10px 20px;\r\n  opacity: 1;\r\n  width: 700px;\r\n  height: 450px;\r\n  border-radius: 20px;\r\n}\r\n.presentationAlexandra a{\r\n  text-decoration: none;\r\ncolor:purple;\r\ntext-align:justify;\r\n}\r\n\r\np {\r\nmargin:5px 0;\r\n}\r\n\r\n.photoAlexandra{\r\n  float: left;\r\n  display: inline-block;\r\n  width:200px;\r\n  height: 300px;\r\n  margin: 10px 10px 20px 0px;\r\n  border: 10px orange groove;\r\n  border-radius: 20px;\r\n}\r\n\r\n.laius a p{\r\n  margin-top: 10px;\r\n  padding: 0;\r\n  margin-left: 230px;\r\n  line-height: 1.4;\r\n  font-style: italic;\r\n}\r\n.laius .lettrine a p{\r\n  /*border:1px solid red;*/\r\n  margin: 10px 0;\r\n}\r\n\r\n.laius .lettrine p:first-letter {\r\n  display: inline;\r\n  margin-top: -10px;\r\n  margin-left: 100px;\r\n  font-family: trebuchet MS;\r\n  font-size:80px;\r\n  color:#0000fe;\r\n  width:55px;\r\n  float:left;\r\n}\r\n.laius .lettrine p:first-of-type{\r\n  display: inline-block;\r\n  color: #42326c;\r\n  font-size: 30px;\r\n  line-height: 1.2;\r\n  margin-top: 10px;\r\n  font-style: normal;\r\n}\r\n\r\n.numTel{\r\n  display: inline-block;\r\n  width: 100%;\r\n  font-size: 12px;\r\n  /*border:1px solid red;*/\r\n  line-height: 1;\r\n  vertical-align: middle;\r\n  /*margin: 5px 10px;*/\r\n}\r\n\r\n.boutonTel{\r\n  position: relative;\r\n  display: inline-block;\r\n  background-color: #00f;\r\n  border-radius: 20px;\r\n  width: 320px;\r\n  height: 70px;\r\n  vertical-align: middle;\r\n  border: 5px groove orange;\r\n  background: linear-gradient( #000, #2C2C2C, #777);\r\n  margin: 5px 3px;\r\n}\r\n.boutonTel img{\r\n  display: inline-block;\r\n  position: relative;\r\n  border:1px solid red;\r\n  /*float:left;*/\r\n  margin: 7px 0 7px 10px;\r\n  padding: 0;\r\n  border-radius: 7px;\r\n  border:1px solid yellow;\r\n}\r\n.boutonTel p{\r\n  position: relative;\r\n  display: inline-block;\r\n  color:gold;\r\n  width: 72%;\r\n    /*font-family: arial;*/\r\n  letter-spacing: 3px;\r\n  font-weight: bold;\r\n  margin: 0 auto;\r\n  padding: 0;\r\n  font-size: 24px;\r\n  /*border:1px solid greenyellow;*/\r\n  margin-left: 5px;\r\n  top: 5px;\r\n  text-align: center;\r\n  vertical-align: top;\r\n  line-height: 1.3;\r\n}\r\n.boutonTel .prix{\r\n  position: relative;\r\n  display: block;\r\n  margin: 0;\r\n  padding: 0;\r\n  font-style: italic;\r\n  top:5px;\r\n  font-size: 12px;\r\n  text-align: right;\r\n}\r\n\r\n</style>\r\n\r\n\r\n<div class=\"presentationAlexandra\">\r\n        <a href=\"http://alexandra.sublime-voyance.com\" alt=\" Site Alexandra \" title =\" Plus d\'infos sur Alexandra... \">\r\n          <img class=\"photoAlexandra\" src=\"img/alexandra.jpg\" width=\"333\" height=\"500\" alt=\"alexandra\"/>\r\n\r\n          <div class=\"laius\">\r\n            <div class=\"lettrine\">\r\n              <p>Aloâ, je suis<br>lexandra.</p>\r\n            </div>\r\n\r\n            <div class=\"presentation\">\r\n              <p>Mes grands-mères tant paternelles que maternelles possédaient un don de voyance...</p>\r\n              <p>Après plusieurs années de réflexion, j’ai décidé de vous faire bénéficier de ce don qu\'ils m\'ont transmis et ainsi apporter des réponses claires à vos questions... <i><em>(En savoir plus...)</em></i></p>\r\n              <p>Profitez d\'une réponse GRATUITE à la question de VOTRE choix !</p>\r\n              <p>À très bientôt…</p>\r\n            </div>\r\n          </div>\r\n          <div class=\"numTel\">\r\n\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/be.gif\" width=\"60\" height=\"53\" alt=\"belgique\" title=\" N° BELGIQUE \" />\r\n              <p>090-788-371<span class=\"prix\">(Belgique - 1,50€/min)</span></p>\r\n            </div>\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/lu.gif\" width=\"60\" height=\"53\" alt=\"luxembourg\" title=\" N° LUXEMBOURG \" />\r\n              <p>901-470-28<span class=\"prix\">(Luxembourg 1,15€/min)</span></p>\r\n            </div>\r\n\r\n            <!--<div class=\"boutonTel\">Luxembourg:<br>901-470-28 (1,15€/min)</div>-->\r\n\r\n          </div>\r\n        </a>\r\n      </div>'),(38,'<style>\r\n\r\n.presentationAlexandra{\r\n  display: block;\r\n  background-image: url(\"img/fond.png\");\r\n  font-family: \"Comic Sans Ms\";\r\n  font-size: 16px;\r\n  position: relative;\r\n  background-color: white;\r\n  letter-spacing: 0.1em;\r\n  color:black;\r\n  margin: 10px auto;\r\n  padding: 10px 20px;\r\n  opacity: 1;\r\n  width: 700px;\r\n  height: 450px;\r\n  border-radius: 20px;\r\n}\r\n.presentationAlexandra a{\r\n  text-decoration: none;\r\ncolor:purple;\r\ntext-align:justify;\r\n}\r\n\r\np {\r\nmargin:5px 0;\r\n}\r\n\r\n.photoAlexandra{\r\n  float: left;\r\n  display: inline-block;\r\n  width:200px;\r\n  height: 300px;\r\n  margin: 10px 10px 20px 0px;\r\n  border: 10px orange groove;\r\n  border-radius: 20px;\r\n}\r\n\r\n.laius a p{\r\n  margin-top: 10px;\r\n  padding: 0;\r\n  margin-left: 230px;\r\n  line-height: 1.4;\r\n  font-style: italic;\r\n}\r\n.laius .lettrine a p{\r\n  /*border:1px solid red;*/\r\n  margin: 10px 0;\r\n}\r\n\r\n.laius .lettrine p:first-letter {\r\n  display: inline;\r\n  margin-top: -10px;\r\n  margin-left: 100px;\r\n  font-family: trebuchet MS;\r\n  font-size:80px;\r\n  color:#0000fe;\r\n  width:55px;\r\n  float:left;\r\n}\r\n.laius .lettrine p:first-of-type{\r\n  display: inline-block;\r\n  color: #42326c;\r\n  font-size: 30px;\r\n  line-height: 1.2;\r\n  margin-top: 10px;\r\n  font-style: normal;\r\n}\r\n\r\n.numTel{\r\n  display: inline-block;\r\n  width: 100%;\r\n  font-size: 12px;\r\n  /*border:1px solid red;*/\r\n  line-height: 1;\r\n  vertical-align: middle;\r\n  /*margin: 5px 10px;*/\r\n}\r\n\r\n.boutonTel{\r\n  position: relative;\r\n  display: inline-block;\r\n  background-color: #00f;\r\n  border-radius: 20px;\r\n  width: 320px;\r\n  height: 70px;\r\n  vertical-align: middle;\r\n  border: 5px groove orange;\r\n  background: linear-gradient( #000, #2C2C2C, #777);\r\n  margin: 5px 3px;\r\n}\r\n.boutonTel img{\r\n  display: inline-block;\r\n  position: relative;\r\n  border:1px solid red;\r\n  /*float:left;*/\r\n  margin: 7px 0 7px 10px;\r\n  padding: 0;\r\n  border-radius: 7px;\r\n  border:1px solid yellow;\r\n}\r\n.boutonTel p{\r\n  position: relative;\r\n  display: inline-block;\r\n  color:gold;\r\n  width: 72%;\r\n    /*font-family: arial;*/\r\n  letter-spacing: 3px;\r\n  font-weight: bold;\r\n  margin: 0 auto;\r\n  padding: 0;\r\n  font-size: 24px;\r\n  /*border:1px solid greenyellow;*/\r\n  margin-left: 5px;\r\n  top: 5px;\r\n  text-align: center;\r\n  vertical-align: top;\r\n  line-height: 1.3;\r\n}\r\n.boutonTel .prix{\r\n  position: relative;\r\n  display: block;\r\n  margin: 0;\r\n  padding: 0;\r\n  font-style: italic;\r\n  top:5px;\r\n  font-size: 12px;\r\n  text-align: right;\r\n}\r\n\r\n</style>\r\n\r\n\r\n<div class=\"presentationAlexandra\">\r\n        <a href=\"http://alexandra.sublime-voyance.com\" alt=\" Site Alexandra \" title =\" Plus d\'infos sur Alexandra... \">\r\n          <img class=\"photoAlexandra\" src=\"img/alexandra.jpg\" width=\"333\" height=\"500\" alt=\"alexandra\"/>\r\n\r\n          <div class=\"laius\">\r\n            <div class=\"lettrine\">\r\n              <p>Aloâ, je suis<br>lexandra.</p>\r\n            </div>\r\n\r\n            <div class=\"presentation\">\r\n              <p>Mes grands-mères tant paternelles que maternelles possédaient un don de voyance...</p>\r\n              <p>Après plusieurs années de réflexion, j’ai décidé de vous faire bénéficier de ce don qu\'ils m\'ont transmis et ainsi apporter des réponses claires à vos questions... <i><em><b>(En savoir plus...)</b></em></i></p>\r\n              <p>Profitez d\'une réponse GRATUITE à la question de VOTRE choix !</p>\r\n              <p>À très bientôt…</p>\r\n            </div>\r\n          </div>\r\n          <div class=\"numTel\">\r\n\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/be.gif\" width=\"60\" height=\"53\" alt=\"belgique\" title=\" N° BELGIQUE \" />\r\n              <p>090-788-371<span class=\"prix\">(Belgique - 1,50€/min)</span></p>\r\n            </div>\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/lu.gif\" width=\"60\" height=\"53\" alt=\"luxembourg\" title=\" N° LUXEMBOURG \" />\r\n              <p>901-470-28<span class=\"prix\">(Luxembourg 1,15€/min)</span></p>\r\n            </div>\r\n\r\n            <!--<div class=\"boutonTel\">Luxembourg:<br>901-470-28 (1,15€/min)</div>-->\r\n\r\n          </div>\r\n        </a>\r\n      </div>'),(40,'Dévenez-vous aussi conseiller/ère.\n\nLaissez-nous ci-dessous quelques lignes, nous vous recontacterons dans quelques jours... '),(42,'Dévenez-vous aussi conseiller/ère.\n\nLaissez-nous ci-dessous quelques lignes, nous vous recontacterons dans quelques jours... '),(49,'<style>\r\n\r\n.presentationAlexandra{\r\n  display: block;\r\n  background-image: url(\"img/fond.png\");\r\n  font-family: \"Comic Sans Ms\";\r\n  font-size: 16px;\r\n  position: relative;\r\n  background-color: white;\r\n  letter-spacing: 0.1em;\r\n  color:black;\r\n  margin: 10px auto;\r\n  padding: 10px 20px;\r\n  opacity: 1;\r\n  width: 700px;\r\n  height: 450px;\r\n  border-radius: 20px;\r\n}\r\n.presentationAlexandra a{\r\n  text-decoration: none;\r\ncolor:purple;\r\ntext-align:justify;\r\n}\r\n\r\np {\r\nmargin:5px 0;\r\n}\r\n\r\n.photoAlexandra{\r\n  float: left;\r\n  display: inline-block;\r\n  width:200px;\r\n  height: 300px;\r\n  margin: 10px 10px 20px 0px;\r\n  border: 10px orange groove;\r\n  border-radius: 20px;\r\n}\r\n\r\n.laius a p{\r\n  margin-top: 10px;\r\n  padding: 0;\r\n  margin-left: 230px;\r\n  line-height: 1.4;\r\n  font-style: italic;\r\n}\r\n.laius .lettrine a p{\r\n  /*border:1px solid red;*/\r\n  margin: 10px 0;\r\n}\r\n\r\n.laius .lettrine p:first-letter {\r\n  display: inline;\r\n  margin-top: -10px;\r\n  margin-left: 100px;\r\n  font-family: trebuchet MS;\r\n  font-size:80px;\r\n  color:#0000fe;\r\n  width:55px;\r\n  float:left;\r\n}\r\n.laius .lettrine p:first-of-type{\r\n  display: inline-block;\r\n  color: #42326c;\r\n  font-size: 30px;\r\n  line-height: 1.2;\r\n  margin-top: 10px;\r\n  font-style: normal;\r\n}\r\n\r\n.numTel{\r\n  display: inline-block;\r\n  width: 100%;\r\n  font-size: 12px;\r\n  /*border:1px solid red;*/\r\n  line-height: 1;\r\n  vertical-align: middle;\r\n  /*margin: 5px 10px;*/\r\n}\r\n\r\n.boutonTel{\r\n  position: relative;\r\n  display: inline-block;\r\n  background-color: #00f;\r\n  border-radius: 20px;\r\n  width: 320px;\r\n  height: 70px;\r\n  vertical-align: middle;\r\n  border: 5px groove orange;\r\n  background: linear-gradient( #000, #2C2C2C, #777);\r\n  margin: 5px 3px;\r\n}\r\n.boutonTel img{\r\n  display: inline-block;\r\n  position: relative;\r\n  border:1px solid red;\r\n  /*float:left;*/\r\n  margin: 7px 0 7px 10px;\r\n  padding: 0;\r\n  border-radius: 7px;\r\n  border:1px solid yellow;\r\n}\r\n.boutonTel p{\r\n  position: relative;\r\n  display: inline-block;\r\n  color:gold;\r\n  width: 72%;\r\n    /*font-family: arial;*/\r\n  letter-spacing: 3px;\r\n  font-weight: bold;\r\n  margin: 0 auto;\r\n  padding: 0;\r\n  font-size: 24px;\r\n  /*border:1px solid greenyellow;*/\r\n  margin-left: 5px;\r\n  top: 5px;\r\n  text-align: center;\r\n  vertical-align: top;\r\n  line-height: 1.3;\r\n}\r\n.boutonTel .prix{\r\n  position: relative;\r\n  display: block;\r\n  margin: 0;\r\n  padding: 0;\r\n  font-style: italic;\r\n  top:5px;\r\n  font-size: 12px;\r\n  text-align: right;\r\n}\r\n\r\n</style>\r\n\r\n\r\n<div class=\"presentationAlexandra\">\r\n        <a href=\"http://alexandra.sublime-voyance.be\" alt=\" Site Alexandra \" title =\" Plus d\'infos sur Alexandra... \">\r\n          <img class=\"photoAlexandra\" src=\"img/alexandra.jpg\" width=\"333\" height=\"500\" alt=\"alexandra\"/>\r\n\r\n          <div class=\"laius\">\r\n            <div class=\"lettrine\">\r\n              <p>Aloâ, je suis<br>lexandra.</p>\r\n            </div>\r\n\r\n            <div class=\"presentation\">\r\n              <p>Mes grands-mères tant paternelles que maternelles possédaient un don de voyance...</p>\r\n              <p>Après plusieurs années de réflexion, j’ai décidé de vous faire bénéficier de ce don qu\'ils m\'ont transmis et ainsi apporter des réponses claires à vos questions... <i><em><b>(En savoir plus...)</b></em></i></p>\r\n              <p>Profitez d\'une réponse GRATUITE à la question de VOTRE choix !</p>\r\n              <p>À très bientôt…</p>\r\n            </div>\r\n          </div>\r\n          <div class=\"numTel\">\r\n\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/be.gif\" width=\"60\" height=\"53\" alt=\"belgique\" title=\" N° BELGIQUE \" />\r\n              <p>090-788-371<span class=\"prix\">(Belgique - 1,50€/min)</span></p>\r\n            </div>\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/lu.gif\" width=\"60\" height=\"53\" alt=\"luxembourg\" title=\" N° LUXEMBOURG \" />\r\n              <p>901-470-28<span class=\"prix\">(Luxembourg 1,15€/min)</span></p>\r\n            </div>\r\n\r\n            <!--<div class=\"boutonTel\">Luxembourg:<br>901-470-28 (1,15€/min)</div>-->\r\n\r\n          </div>\r\n        </a>\r\n      </div>'),(50,'<p>...</p>'),(51,'<style>\r\n\r\n.presentationAlexandra{\r\n  display: block;\r\n  background-image: url(\"img/fond.png\");\r\n  font-family: \"Comic Sans Ms\";\r\n  font-size: 16px;\r\n  position: relative;\r\n  background-color: white;\r\n  letter-spacing: 0.1em;\r\n  color:black;\r\n  margin: 10px auto;\r\n  padding: 10px 20px;\r\n  opacity: 1;\r\n  width: 700px;\r\n  height: 450px;\r\n  border-radius: 20px;\r\n}\r\n.presentationAlexandra a{\r\n  text-decoration: none;\r\ncolor:purple;\r\ntext-align:justify;\r\n}\r\n\r\np {\r\nmargin:5px 0;\r\n}\r\n\r\n.photoAlexandra{\r\n  float: left;\r\n  display: inline-block;\r\n  width:200px;\r\n  height: 300px;\r\n  margin: 10px 10px 20px 0px;\r\n  border: 10px orange groove;\r\n  border-radius: 20px;\r\n}\r\n\r\n.laius a p{\r\n  margin-top: 10px;\r\n  padding: 0;\r\n  margin-left: 230px;\r\n  line-height: 1.4;\r\n  font-style: italic;\r\n}\r\n.laius .lettrine a p{\r\n  /*border:1px solid red;*/\r\n  margin: 10px 0;\r\n}\r\n\r\n.laius .lettrine p:first-letter {\r\n  display: inline;\r\n  margin-top: -10px;\r\n  margin-left: 100px;\r\n  font-family: trebuchet MS;\r\n  font-size:80px;\r\n  color:#0000fe;\r\n  width:55px;\r\n  float:left;\r\n}\r\n.laius .lettrine p:first-of-type{\r\n  display: inline-block;\r\n  color: #42326c;\r\n  font-size: 30px;\r\n  line-height: 1.2;\r\n  margin-top: 10px;\r\n  font-style: normal;\r\n}\r\n\r\n.numTel{\r\n  display: inline-block;\r\n  width: 100%;\r\n  font-size: 12px;\r\n  /*border:1px solid red;*/\r\n  line-height: 1;\r\n  vertical-align: middle;\r\n  /*margin: 5px 10px;*/\r\n}\r\n\r\n.boutonTel{\r\n  position: relative;\r\n  display: inline-block;\r\n  background-color: #00f;\r\n  border-radius: 20px;\r\n  width: 320px;\r\n  height: 70px;\r\n  vertical-align: middle;\r\n  border: 5px groove orange;\r\n  background: linear-gradient( #000, #2C2C2C, #777);\r\n  margin: 5px 3px;\r\n}\r\n.boutonTel img{\r\n  display: inline-block;\r\n  position: relative;\r\n  border:1px solid red;\r\n  /*float:left;*/\r\n  margin: 7px 0 7px 10px;\r\n  padding: 0;\r\n  border-radius: 7px;\r\n  border:1px solid yellow;\r\n}\r\n.boutonTel p{\r\n  position: relative;\r\n  display: inline-block;\r\n  color:gold;\r\n  width: 72%;\r\n    /*font-family: arial;*/\r\n  letter-spacing: 3px;\r\n  font-weight: bold;\r\n  margin: 0 auto;\r\n  padding: 0;\r\n  font-size: 24px;\r\n  /*border:1px solid greenyellow;*/\r\n  margin-left: 5px;\r\n  top: 5px;\r\n  text-align: center;\r\n  vertical-align: top;\r\n  line-height: 1.3;\r\n}\r\n.boutonTel .prix{\r\n  position: relative;\r\n  display: block;\r\n  margin: 0;\r\n  padding: 0;\r\n  font-style: italic;\r\n  top:5px;\r\n  font-size: 12px;\r\n  text-align: right;\r\n}\r\n\r\n</style>\r\n\r\n\r\n<div class=\"presentationAlexandra\">\r\n        <a href=\"http://alexandra.sublime-voyance.be\" alt=\" Site Alexandra \" title =\" Plus d\'infos sur Alexandra... \">\r\n          <img class=\"photoAlexandra\" src=\"img/alexandra.jpg\" width=\"333\" height=\"500\" alt=\"alexandra\"/>\r\n\r\n          <div class=\"laius\">\r\n            <div class=\"lettrine\">\r\n              <p>Aloâ, je suis<br>lexandra.</p>\r\n            </div>\r\n\r\n            <div class=\"presentation\">\r\n              <p>Mes grands-mères tant paternelles que maternelles possédaient un don de voyance...</p>\r\n              <p>Après plusieurs années de réflexion, j’ai décidé de vous faire bénéficier de ce don qu\'ils m\'ont transmis et ainsi apporter des réponses claires à vos questions... <i><em><b>(En savoir plus...)</b></em></i></p>\r\n              <p>Profitez d\'une réponse GRATUITE à la question de VOTRE choix !</p>\r\n              <p>À très bientôt…</p>\r\n            </div>\r\n          </div>\r\n          <div class=\"numTel\">\r\n\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/be.gif\" width=\"60\" height=\"53\" alt=\"belgique\" title=\" N° BELGIQUE \" />\r\n              <p>0907-88-371<span class=\"prix\">(Belgique - 1,50€/min)</span></p>\r\n            </div>\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/lu.gif\" width=\"60\" height=\"53\" alt=\"luxembourg\" title=\" N° LUXEMBOURG \" />\r\n              <p>0901-470-28<span class=\"prix\">(Luxembourg 1,15€/min)</span></p>\r\n            </div>\r\n\r\n            <!--<div class=\"boutonTel\">Luxembourg:<br>901-470-28 (1,15€/min)</div>-->\r\n\r\n          </div>\r\n        </a>\r\n      </div>'),(52,'<style>\r\n\r\n.presentationAlexandra{\r\n  display: block;\r\n  background-image: url(\"img/fond.png\");\r\n  font-family: \"Comic Sans Ms\";\r\n  font-size: 16px;\r\n  position: relative;\r\n  background-color: white;\r\n  letter-spacing: 0.1em;\r\n  color:black;\r\n  margin: 10px auto;\r\n  padding: 10px 20px;\r\n  opacity: 1;\r\n  width: 700px;\r\n  height: 450px;\r\n  border-radius: 20px;\r\n}\r\n.presentationAlexandra a{\r\n  text-decoration: none;\r\ncolor:purple;\r\ntext-align:justify;\r\n}\r\n\r\np {\r\nmargin:5px 0;\r\n}\r\n\r\n.photoAlexandra{\r\n  float: left;\r\n  display: inline-block;\r\n  width:200px;\r\n  height: 300px;\r\n  margin: 10px 10px 20px 0px;\r\n  border: 10px orange groove;\r\n  border-radius: 20px;\r\n}\r\n\r\n.laius a p{\r\n  margin-top: 10px;\r\n  padding: 0;\r\n  margin-left: 230px;\r\n  line-height: 1.4;\r\n  font-style: italic;\r\n}\r\n.laius .lettrine a p{\r\n  /*border:1px solid red;*/\r\n  margin: 10px 0;\r\n}\r\n\r\n.laius .lettrine p:first-letter {\r\n  display: inline;\r\n  margin-top: -10px;\r\n  margin-left: 100px;\r\n  font-family: trebuchet MS;\r\n  font-size:80px;\r\n  color:#0000fe;\r\n  width:55px;\r\n  float:left;\r\n}\r\n.laius .lettrine p:first-of-type{\r\n  display: inline-block;\r\n  color: #42326c;\r\n  font-size: 30px;\r\n  line-height: 1.2;\r\n  margin-top: 10px;\r\n  font-style: normal;\r\n}\r\n\r\n.numTel{\r\n  display: inline-block;\r\n  width: 100%;\r\n  font-size: 12px;\r\n  /*border:1px solid red;*/\r\n  line-height: 1;\r\n  vertical-align: middle;\r\n  /*margin: 5px 10px;*/\r\n}\r\n\r\n.boutonTel{\r\n  position: relative;\r\n  display: inline-block;\r\n  background-color: #00f;\r\n  border-radius: 20px;\r\n  width: 320px;\r\n  height: 70px;\r\n  vertical-align: middle;\r\n  border: 5px groove orange;\r\n  background: linear-gradient( #000, #2C2C2C, #777);\r\n  margin: 5px 3px;\r\n}\r\n.boutonTel img{\r\n  display: inline-block;\r\n  position: relative;\r\n  border:1px solid red;\r\n  /*float:left;*/\r\n  margin: 7px 0 7px 10px;\r\n  padding: 0;\r\n  border-radius: 7px;\r\n  border:1px solid yellow;\r\n}\r\n.boutonTel p{\r\n  position: relative;\r\n  display: inline-block;\r\n  color:gold;\r\n  width: 72%;\r\n    /*font-family: arial;*/\r\n  letter-spacing: 3px;\r\n  font-weight: bold;\r\n  margin: 0 auto;\r\n  padding: 0;\r\n  font-size: 24px;\r\n  /*border:1px solid greenyellow;*/\r\n  margin-left: 5px;\r\n  top: 5px;\r\n  text-align: center;\r\n  vertical-align: top;\r\n  line-height: 1.3;\r\n}\r\n.boutonTel .prix{\r\n  position: relative;\r\n  display: block;\r\n  margin: 0;\r\n  padding: 0;\r\n  font-style: italic;\r\n  top:5px;\r\n  font-size: 12px;\r\n  text-align: right;\r\n}\r\n\r\n</style>\r\n\r\n\r\n<div class=\"presentationAlexandra\">\r\n        <a href=\"http://alexandra.sublime-voyance.be\" alt=\" Site Alexandra \" title =\" Plus d\'infos sur Alexandra... \">\r\n          <img class=\"photoAlexandra\" src=\"img/alexandra.jpg\" width=\"333\" height=\"500\" alt=\"alexandra\"/>\r\n\r\n          <div class=\"laius\">\r\n            <div class=\"lettrine\">\r\n              <p>Aloâ, je suis<br>lexandra.</p>\r\n            </div>\r\n\r\n            <div class=\"presentation\">\r\n              <p>Mes grands-mères tant paternelles que maternelles possédaient un don de voyance...</p>\r\n              <p>Après plusieurs années de réflexion, j’ai décidé de vous faire bénéficier de ce don qu\'ils m\'ont transmis et ainsi apporter des réponses claires à vos questions... <i><em><b>(En savoir plus...)</b></em></i></p>\r\n              <p>Profitez d\'une réponse GRATUITE à la question de VOTRE choix !</p>\r\n              <p>À très bientôt…</p>\r\n            </div>\r\n          </div>\r\n          <div class=\"numTel\">\r\n\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/be.gif\" width=\"60\" height=\"53\" alt=\"belgique\" title=\" N° BELGIQUE \" />\r\n              <p>0907-88-371<span class=\"prix\">(Belgique - 1,50€/min)</span></p>\r\n            </div>\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/lu.gif\" width=\"60\" height=\"53\" alt=\"luxembourg\" title=\" N° LUXEMBOURG \" />\r\n              <p>901-470-28<span class=\"prix\">(Luxembourg 1,15€/min)</span></p>\r\n            </div>\r\n\r\n            <!--<div class=\"boutonTel\">Luxembourg:<br>901-470-28 (1,15€/min)</div>-->\r\n\r\n          </div>\r\n        </a>\r\n      </div>'),(53,'<style>\r\n\r\n.presentationAlexandra{\r\n  display: block;\r\n  background-image: url(\"img/fond.png\");\r\n  font-family: \"Comic Sans Ms\";\r\n  font-size: 16px;\r\n  position: relative;\r\n  background-color: white;\r\n  letter-spacing: 0.1em;\r\n  color:black;\r\n  margin: 10px auto;\r\n  padding: 10px 20px;\r\n  opacity: 1;\r\n  width: 700px;\r\n  height: 450px;\r\n  border-radius: 20px;\r\n}\r\n.presentationAlexandra a{\r\n  text-decoration: none;\r\ncolor:purple;\r\ntext-align:justify;\r\n}\r\n\r\np {\r\nmargin:5px 0;\r\n}\r\n\r\n.photoAlexandra{\r\n  float: left;\r\n  display: inline-block;\r\n  width:200px;\r\n  height: 300px;\r\n  margin: 10px 10px 20px 0px;\r\n  border: 10px orange groove;\r\n  border-radius: 20px;\r\n}\r\n\r\n.laius a p{\r\n  margin-top: 10px;\r\n  padding: 0;\r\n  margin-left: 230px;\r\n  line-height: 1.4;\r\n  font-style: italic;\r\n}\r\n.laius .lettrine a p{\r\n  /*border:1px solid red;*/\r\n  margin: 10px 0;\r\n}\r\n\r\n.laius .lettrine p:first-letter {\r\n  display: inline;\r\n  margin-top: -10px;\r\n  margin-left: 100px;\r\n  font-family: trebuchet MS;\r\n  font-size:80px;\r\n  color:#0000fe;\r\n  width:55px;\r\n  float:left;\r\n}\r\n.laius .lettrine p:first-of-type{\r\n  display: inline-block;\r\n  color: #42326c;\r\n  font-size: 30px;\r\n  line-height: 1.2;\r\n  margin-top: 10px;\r\n  font-style: normal;\r\n}\r\n\r\n.numTel{\r\n  display: inline-block;\r\n  width: 100%;\r\n  font-size: 12px;\r\n  /*border:1px solid red;*/\r\n  line-height: 1;\r\n  vertical-align: middle;\r\n  /*margin: 5px 10px;*/\r\n}\r\n\r\n.boutonTel{\r\n  position: relative;\r\n  display: inline-block;\r\n  background-color: #00f;\r\n  border-radius: 20px;\r\n  width: 320px;\r\n  height: 70px;\r\n  vertical-align: middle;\r\n  border: 5px groove orange;\r\n  background: linear-gradient( #000, #2C2C2C, #777);\r\n  margin: 5px 3px;\r\n}\r\n.boutonTel img{\r\n  display: inline-block;\r\n  position: relative;\r\n  border:1px solid red;\r\n  /*float:left;*/\r\n  margin: 7px 0 7px 10px;\r\n  padding: 0;\r\n  border-radius: 7px;\r\n  border:1px solid yellow;\r\n}\r\n.boutonTel p{\r\n  position: relative;\r\n  display: inline-block;\r\n  color:gold;\r\n  width: 72%;\r\n    /*font-family: arial;*/\r\n  letter-spacing: 3px;\r\n  font-weight: bold;\r\n  margin: 0 auto;\r\n  padding: 0;\r\n  font-size: 24px;\r\n  /*border:1px solid greenyellow;*/\r\n  margin-left: 5px;\r\n  top: 5px;\r\n  text-align: center;\r\n  vertical-align: top;\r\n  line-height: 1.3;\r\n}\r\n.boutonTel .prix{\r\n  position: relative;\r\n  display: block;\r\n  margin: 0;\r\n  padding: 0;\r\n  font-style: italic;\r\n  top:5px;\r\n  font-size: 12px;\r\n  text-align: right;\r\n}\r\n\r\n</style>\r\n\r\n\r\n<div class=\"presentationAlexandra\">\r\n        <a href=\"http://alexandra.sublime-voyance.be/doro/descriptionAlexandra.php\" alt=\" Site Alexandra \" title =\" Plus d\'infos sur Alexandra... \">\r\n          <img class=\"photoAlexandra\" src=\"img/alexandra.jpg\" width=\"333\" height=\"500\" alt=\"alexandra\"/>\r\n\r\n          <div class=\"laius\">\r\n            <div class=\"lettrine\">\r\n              <p>Aloâ, je suis<br>lexandra.</p>\r\n            </div>\r\n\r\n            <div class=\"presentation\">\r\n              <p>Mes grands-mères tant paternelles que maternelles possédaient un don de voyance...</p>\r\n              <p>Après plusieurs années de réflexion, j’ai décidé de vous faire bénéficier de ce don qu\'ils m\'ont transmis et ainsi apporter des réponses claires à vos questions... <i><em><b>(En savoir plus...)</b></em></i></p>\r\n              <p>Profitez d\'une réponse GRATUITE à la question de VOTRE choix !</p>\r\n              <p>À très bientôt…</p>\r\n            </div>\r\n          </div>\r\n          <div class=\"numTel\">\r\n\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/be.gif\" width=\"60\" height=\"53\" alt=\"belgique\" title=\" N° BELGIQUE \" />\r\n              <p>0907-88-371<span class=\"prix\">(Belgique - 1,50€/min)</span></p>\r\n            </div>\r\n            <div class=\"boutonTel\">\r\n              <img src=\"img/lu.gif\" width=\"60\" height=\"53\" alt=\"luxembourg\" title=\" N° LUXEMBOURG \" />\r\n              <p>901-470-28<span class=\"prix\">(Luxembourg 1,15€/min)</span></p>\r\n            </div>\r\n\r\n            <!--<div class=\"boutonTel\">Luxembourg:<br>901-470-28 (1,15€/min)</div>-->\r\n\r\n          </div>\r\n        </a>\r\n      </div>');
/*!40000 ALTER TABLE `btContentLocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreScrapbookDisplay`
--

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

LOCK TABLES `btCoreScrapbookDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreStackDisplay`
--

DROP TABLE IF EXISTS `btCoreStackDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreStackDisplay`
--

LOCK TABLES `btCoreStackDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreStackDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreStackDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDashboardNewsflowLatest`
--

DROP TABLE IF EXISTS `btDashboardNewsflowLatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDashboardNewsflowLatest`
--

LOCK TABLES `btDashboardNewsflowLatest` WRITE;
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` DISABLE KEYS */;
INSERT INTO `btDashboardNewsflowLatest` VALUES (8,'A'),(9,'B'),(12,'C');
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateNav`
--

DROP TABLE IF EXISTS `btDateNav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateNav`
--

LOCK TABLES `btDateNav` WRITE;
/*!40000 ALTER TABLE `btDateNav` DISABLE KEYS */;
/*!40000 ALTER TABLE `btDateNav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExternalForm`
--

DROP TABLE IF EXISTS `btExternalForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExternalForm`
--

LOCK TABLES `btExternalForm` WRITE;
/*!40000 ALTER TABLE `btExternalForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExternalForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFlashContent`
--

DROP TABLE IF EXISTS `btFlashContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFlashContent`
--

LOCK TABLES `btFlashContent` WRITE;
/*!40000 ALTER TABLE `btFlashContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFlashContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btForm`
--

DROP TABLE IF EXISTS `btForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btForm`
--

LOCK TABLES `btForm` WRITE;
/*!40000 ALTER TABLE `btForm` DISABLE KEYS */;
INSERT INTO `btForm` VALUES (41,1405435713,'Devenez Conseiller','Merci !',1,'grcote7@gmail.com',1,0,0),(43,1405435713,'Devenez Conseiller/ère','Merci pour votre candidature !\r\nNous vous contacterons prochaînement...',1,'grcote7@gmail.com',0,0,0),(44,1405435713,'Devenez Conseiller/ère','Merci pour votre candidature !\r\nNous vous contacterons prochaînement...',1,'grcote7@gmail.com',0,0,0),(45,1405435713,'Devenez Conseiller/ère','Merci pour votre candidature !\r\nNous vous contacterons prochaînement...',1,'grcote7@gmail.com',0,0,0),(46,1405435713,'Devenez Conseiller/ère','Merci pour votre candidature !\r\nNous vous contacterons prochaînement...',1,'grcote7@gmail.com',0,0,0),(47,1405435713,'Devenez Conseiller/ère','Merci pour votre candidature !\r\nNous vous contacterons prochaînement...',1,'grcote7@gmail.com',0,0,0),(48,1405435713,'Devenez Conseiller/ère','Merci pour votre candidature !\r\nNous vous contacterons prochaînement...',1,'grcote7@gmail.com',1,0,0);
/*!40000 ALTER TABLE `btForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswerSet`
--

DROP TABLE IF EXISTS `btFormAnswerSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswerSet`
--

LOCK TABLES `btFormAnswerSet` WRITE;
/*!40000 ALTER TABLE `btFormAnswerSet` DISABLE KEYS */;
INSERT INTO `btFormAnswerSet` VALUES (6,1405435713,'2015-04-27 10:35:52',0);
/*!40000 ALTER TABLE `btFormAnswerSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswers`
--

DROP TABLE IF EXISTS `btFormAnswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswers`
--

LOCK TABLES `btFormAnswers` WRITE;
/*!40000 ALTER TABLE `btFormAnswers` DISABLE KEYS */;
INSERT INTO `btFormAnswers` VALUES (29,6,2,'vivane',''),(28,6,1,'jeanne',''),(27,6,4,'Mme.',''),(32,6,5,'','Coucou je ne vois rien'),(31,6,6,'+32477948707',''),(30,6,3,'pioupiouone@msn.com','');
/*!40000 ALTER TABLE `btFormAnswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormQuestions`
--

DROP TABLE IF EXISTS `btFormQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormQuestions`
--

LOCK TABLES `btFormQuestions` WRITE;
/*!40000 ALTER TABLE `btFormQuestions` DISABLE KEYS */;
INSERT INTO `btFormQuestions` VALUES (6,3,41,1405435713,'Email','email','a:1:{s:22:\"send_notification_from\";i:0;}',3,50,3,1),(5,2,41,1405435713,'Prénom','field','',2,50,3,1),(4,1,41,1405435713,'Nom','field','',1,50,3,1),(7,3,43,1405435713,'Email','email','a:1:{s:22:\"send_notification_from\";i:0;}',3,50,3,1),(8,2,43,1405435713,'Prénom','field','',2,50,3,1),(9,1,43,1405435713,'Nom','field','',1,50,3,1),(19,5,45,1405435713,'Message','text','',5,50,3,1),(14,3,44,1405435713,'Email','email','a:1:{s:22:\"send_notification_from\";i:0;}',3,50,3,1),(15,2,44,1405435713,'Prénom','field','',2,50,3,1),(16,1,44,1405435713,'Nom','field','',1,50,3,1),(18,4,45,1405435713,'Civilité','select','Mme.%%Mlle.%%M.',0,50,3,1),(17,4,44,1405435713,'Civilité','select','Précisez%%Mme.%%Mlle.%%M.',0,50,3,1),(20,3,45,1405435713,'Email','email','a:1:{s:22:\"send_notification_from\";i:0;}',3,50,3,1),(21,2,45,1405435713,'Prénom','field','',2,50,3,1),(22,1,45,1405435713,'Nom','field','',1,50,3,1),(24,5,46,1405435713,'Message','text','',5,50,7,1),(26,4,46,1405435713,'Civilité','select','Mme.%%Mlle.%%M.',0,50,3,1),(27,3,46,1405435713,'Email','email','a:1:{s:22:\"send_notification_from\";i:0;}',3,50,3,1),(28,2,46,1405435713,'Prénom','field','',2,50,3,1),(29,1,46,1405435713,'Nom','field','',1,50,3,1),(30,6,47,1405435713,'N° de Téléphone','field','',4,50,3,1),(31,5,47,1405435713,'Message','text','',5,50,7,1),(32,4,47,1405435713,'Civilité','select','Mme.%%Mlle.%%M.',0,50,3,1),(33,3,47,1405435713,'Email','email','a:1:{s:22:\"send_notification_from\";i:0;}',3,50,3,1),(34,2,47,1405435713,'Prénom','field','',2,50,3,1),(35,1,47,1405435713,'Nom','field','',1,50,3,1),(36,6,48,1405435713,'N° de Téléphone','field','',4,50,3,1),(37,5,48,1405435713,'Message','text','',5,50,7,1),(38,4,48,1405435713,'Civilité','select','Mme.%%Mlle.%%M.',0,50,3,1),(39,3,48,1405435713,'Email','email','a:1:{s:22:\"send_notification_from\";i:0;}',3,50,3,1),(40,2,48,1405435713,'Prénom','field','',2,50,3,1),(41,1,48,1405435713,'Nom','field','',1,50,3,1);
/*!40000 ALTER TABLE `btFormQuestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGoogleMap`
--

DROP TABLE IF EXISTS `btGoogleMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  `balloonShow` tinyint(4) DEFAULT NULL,
  `balloonContent` longtext,
  `balloonWithLinkToMaps` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGoogleMap`
--

LOCK TABLES `btGoogleMap` WRITE;
/*!40000 ALTER TABLE `btGoogleMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGoogleMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBook`
--

DROP TABLE IF EXISTS `btGuestBook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBook`
--

LOCK TABLES `btGuestBook` WRITE;
/*!40000 ALTER TABLE `btGuestBook` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGuestBook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBookEntries`
--

DROP TABLE IF EXISTS `btGuestBookEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` datetime DEFAULT '0000-00-00 00:00:00',
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBookEntries`
--

LOCK TABLES `btGuestBookEntries` WRITE;
/*!40000 ALTER TABLE `btGuestBookEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGuestBookEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNavigation`
--

DROP TABLE IF EXISTS `btNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNavigation`
--

LOCK TABLES `btNavigation` WRITE;
/*!40000 ALTER TABLE `btNavigation` DISABLE KEYS */;
INSERT INTO `btNavigation` VALUES (13,'display_asc','top',0,0,'none','enough',0,0),(18,'display_asc','top',0,0,'relevant_breadcrumb','enough',0,0);
/*!40000 ALTER TABLE `btNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNextPrevious`
--

DROP TABLE IF EXISTS `btNextPrevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNextPrevious`
--

LOCK TABLES `btNextPrevious` WRITE;
/*!40000 ALTER TABLE `btNextPrevious` DISABLE KEYS */;
/*!40000 ALTER TABLE `btNextPrevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageList`
--

DROP TABLE IF EXISTS `btPageList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageList`
--

LOCK TABLES `btPageList` WRITE;
/*!40000 ALTER TABLE `btPageList` DISABLE KEYS */;
INSERT INTO `btPageList` VALUES (17,0,'display_asc',0,0,0,0,1,0,0,'','',0,0,0);
/*!40000 ALTER TABLE `btPageList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btRssDisplay`
--

DROP TABLE IF EXISTS `btRssDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btRssDisplay`
--

LOCK TABLES `btRssDisplay` WRITE;
/*!40000 ALTER TABLE `btRssDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btRssDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSearch`
--

DROP TABLE IF EXISTS `btSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSearch`
--

LOCK TABLES `btSearch` WRITE;
/*!40000 ALTER TABLE `btSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshow`
--

DROP TABLE IF EXISTS `btSlideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshow`
--

LOCK TABLES `btSlideshow` WRITE;
/*!40000 ALTER TABLE `btSlideshow` DISABLE KEYS */;
INSERT INTO `btSlideshow` VALUES (26,NULL,'ORDER',NULL,NULL),(27,0,'ORDER',NULL,NULL);
/*!40000 ALTER TABLE `btSlideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshowImg`
--

DROP TABLE IF EXISTS `btSlideshowImg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshowImg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshowImg`
--

LOCK TABLES `btSlideshowImg` WRITE;
/*!40000 ALTER TABLE `btSlideshowImg` DISABLE KEYS */;
INSERT INTO `btSlideshowImg` VALUES (1,27,2,'http://alexandra.sublime-voyance.be',5,2,0,0,300),(2,27,3,'',5,2,0,1,711);
/*!40000 ALTER TABLE `btSlideshowImg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurvey`
--

DROP TABLE IF EXISTS `btSurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurvey`
--

LOCK TABLES `btSurvey` WRITE;
/*!40000 ALTER TABLE `btSurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyOptions`
--

DROP TABLE IF EXISTS `btSurveyOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyOptions`
--

LOCK TABLES `btSurveyOptions` WRITE;
/*!40000 ALTER TABLE `btSurveyOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyResults`
--

DROP TABLE IF EXISTS `btSurveyResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyResults`
--

LOCK TABLES `btSurveyResults` WRITE;
/*!40000 ALTER TABLE `btSurveyResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTags`
--

DROP TABLE IF EXISTS `btTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTags`
--

LOCK TABLES `btTags` WRITE;
/*!40000 ALTER TABLE `btTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btVideo`
--

DROP TABLE IF EXISTS `btVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btVideo`
--

LOCK TABLES `btVideo` WRITE;
/*!40000 ALTER TABLE `btVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btYouTube`
--

DROP TABLE IF EXISTS `btYouTube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btYouTube`
--

LOCK TABLES `btYouTube` WRITE;
/*!40000 ALTER TABLE `btYouTube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btYouTube` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-04 10:51:40
