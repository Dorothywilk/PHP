-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wwwsubl_uuu
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
-- Table structure for table `phpbb_acl_groups`
--

DROP TABLE IF EXISTS `phpbb_acl_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_groups` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `auth_opt_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_groups`
--

LOCK TABLES `phpbb_acl_groups` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_groups` DISABLE KEYS */;
INSERT INTO `phpbb_acl_groups` VALUES (1,0,88,0,1),(1,0,97,0,1),(1,0,115,0,1),(5,0,0,1,0),(2,0,0,6,0),(3,0,0,6,0),(4,0,0,5,0),(4,0,0,10,0),(7,0,0,23,0),(6,3,0,17,0),(2,3,0,17,0),(3,3,0,17,0),(6,2,0,17,0),(2,2,0,17,0),(3,2,0,17,0),(6,1,0,17,0),(3,1,0,17,0),(5,0,89,0,1),(5,0,91,0,1),(5,0,97,0,1),(5,0,114,0,1),(5,0,119,0,1),(5,0,90,0,1),(5,0,92,0,1),(5,0,93,0,1),(5,0,94,0,1),(5,0,95,0,1),(5,0,96,0,1),(5,0,121,0,1),(5,0,98,0,1),(5,0,99,0,1),(5,0,115,0,1),(5,0,116,0,1),(5,0,117,0,1),(5,0,120,0,1),(5,0,100,0,1),(5,0,101,0,1),(5,0,102,0,1),(5,0,103,0,1),(5,0,104,0,1),(5,0,105,0,1),(5,0,106,0,1),(5,0,107,0,1),(5,0,108,0,1),(5,0,109,0,1),(5,0,110,0,1),(5,0,111,0,1),(5,0,112,0,1),(5,0,113,0,1),(5,0,118,0,1),(5,0,88,0,1),(5,3,2,0,1),(5,3,6,0,1),(5,3,8,0,1),(5,3,12,0,1),(5,3,15,0,1),(5,3,17,0,1),(5,3,18,0,1),(5,3,21,0,1),(5,3,31,0,1),(5,3,26,0,1),(5,3,3,0,1),(5,3,4,0,1),(5,3,10,0,1),(5,3,11,0,1),(5,3,13,0,1),(5,3,24,0,1),(5,3,25,0,1),(5,3,5,0,1),(5,3,7,0,1),(5,3,9,0,1),(5,3,14,0,1),(5,3,19,0,1),(5,3,20,0,1),(5,3,22,0,1),(5,3,23,0,1),(5,3,27,0,1),(5,3,28,0,1),(5,3,16,0,1),(5,3,29,0,1),(5,3,30,0,1),(5,3,1,0,1),(2,1,6,0,1),(2,1,8,0,1),(2,1,15,0,1),(2,1,17,0,1),(2,1,18,0,1),(2,1,21,0,1),(2,1,31,0,1),(2,1,3,0,1),(2,1,4,0,1),(2,1,11,0,1),(2,1,13,0,1),(2,1,24,0,1),(2,1,25,0,1),(2,1,5,0,1),(2,1,7,0,1),(2,1,9,0,1),(2,1,14,0,1),(2,1,19,0,1),(2,1,20,0,1),(2,1,22,0,1),(2,1,23,0,1),(2,1,27,0,1),(2,1,29,0,1),(2,1,1,0,1),(6,4,0,17,0),(3,4,0,17,0),(2,4,6,0,1),(2,4,8,0,1),(2,4,15,0,1),(2,4,17,0,1),(2,4,18,0,1),(2,4,21,0,1),(2,4,31,0,1),(2,4,3,0,1),(2,4,4,0,1),(2,4,11,0,1),(2,4,13,0,1),(2,4,24,0,1),(2,4,25,0,1),(2,4,5,0,1),(2,4,7,0,1),(2,4,9,0,1),(2,4,14,0,1),(2,4,19,0,1),(2,4,20,0,1),(2,4,22,0,1),(2,4,23,0,1),(2,4,27,0,1),(2,4,29,0,1),(2,4,1,0,1),(6,5,0,17,0),(3,5,0,17,0),(2,5,6,0,1),(2,5,8,0,1),(2,5,15,0,1),(2,5,17,0,1),(2,5,18,0,1),(2,5,21,0,1),(2,5,31,0,1),(2,5,3,0,1),(2,5,4,0,1),(2,5,11,0,1),(2,5,13,0,1),(2,5,24,0,1),(2,5,25,0,1),(2,5,5,0,1),(2,5,7,0,1),(2,5,9,0,1),(2,5,14,0,1),(2,5,19,0,1),(2,5,20,0,1),(2,5,22,0,1),(2,5,23,0,1),(2,5,27,0,1),(2,5,29,0,1),(2,5,1,0,1),(6,6,0,17,0),(2,6,0,17,0),(3,6,0,17,0),(5,6,0,14,0),(4,6,0,21,0),(7,6,0,15,0),(6,12,0,17,0),(2,12,0,17,0),(3,12,0,17,0),(5,12,0,14,0),(4,12,0,21,0),(7,12,0,15,0),(6,13,0,17,0),(2,13,0,17,0),(3,13,0,17,0),(5,13,0,14,0),(4,13,0,21,0),(7,13,0,15,0),(6,14,0,17,0),(2,14,0,17,0),(3,14,0,17,0),(5,14,0,14,0),(4,14,0,21,0),(7,14,0,15,0),(6,15,0,17,0),(2,15,0,17,0),(3,15,0,17,0),(5,15,0,14,0),(4,15,0,21,0),(7,15,0,15,0),(6,16,0,17,0),(2,16,0,17,0),(3,16,0,17,0),(1,3,0,17,0),(1,2,0,17,0),(1,1,0,17,0),(1,4,0,17,0),(1,5,0,17,0),(1,6,0,17,0),(1,14,0,17,0),(1,15,0,17,0),(1,16,0,17,0),(1,12,0,17,0),(1,13,0,17,0),(6,18,0,17,0),(2,18,0,17,0),(3,18,0,17,0),(5,18,0,14,0),(4,18,0,21,0),(7,18,0,15,0),(1,18,0,17,0),(6,17,0,17,0),(2,17,0,17,0),(3,17,0,17,0),(5,17,0,14,0),(4,17,0,21,0),(7,17,0,15,0),(1,17,0,17,0),(6,19,0,17,0),(2,19,0,17,0),(3,19,0,17,0),(5,19,0,14,0),(4,19,0,21,0),(7,19,0,15,0),(1,19,0,17,0),(6,20,0,17,0),(2,20,0,17,0),(3,20,0,17,0),(5,20,2,0,1),(5,20,6,0,1),(5,20,8,0,1),(5,20,12,0,1),(5,20,15,0,1),(5,20,17,0,1),(5,20,18,0,1),(5,20,21,0,1),(5,20,31,0,1),(5,20,26,0,1),(5,20,3,0,1),(5,20,4,0,1),(5,20,10,0,1),(5,20,11,0,1),(5,20,13,0,1),(5,20,24,0,1),(5,20,25,0,1),(5,20,5,0,1),(5,20,7,0,1),(5,20,9,0,1),(5,20,14,0,1),(5,20,19,0,1),(5,20,20,0,1),(5,20,22,0,1),(5,20,23,0,1),(5,20,27,0,1),(5,20,28,0,1),(5,20,16,0,1),(5,20,29,0,1),(5,20,30,0,1),(5,20,1,0,1),(1,20,0,17,0);
/*!40000 ALTER TABLE `phpbb_acl_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_acl_options`
--

DROP TABLE IF EXISTS `phpbb_acl_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_option_id`),
  UNIQUE KEY `auth_option` (`auth_option`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_options`
--

LOCK TABLES `phpbb_acl_options` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_options` DISABLE KEYS */;
INSERT INTO `phpbb_acl_options` VALUES (1,'f_',0,1,0),(2,'f_announce',0,1,0),(3,'f_attach',0,1,0),(4,'f_bbcode',0,1,0),(5,'f_bump',0,1,0),(6,'f_delete',0,1,0),(7,'f_download',0,1,0),(8,'f_edit',0,1,0),(9,'f_email',0,1,0),(10,'f_flash',0,1,0),(11,'f_icons',0,1,0),(12,'f_ignoreflood',0,1,0),(13,'f_img',0,1,0),(14,'f_list',0,1,0),(15,'f_noapprove',0,1,0),(16,'f_poll',0,1,0),(17,'f_post',0,1,0),(18,'f_postcount',0,1,0),(19,'f_print',0,1,0),(20,'f_read',0,1,0),(21,'f_reply',0,1,0),(22,'f_report',0,1,0),(23,'f_search',0,1,0),(24,'f_sigs',0,1,0),(25,'f_smilies',0,1,0),(26,'f_sticky',0,1,0),(27,'f_subscribe',0,1,0),(28,'f_user_lock',0,1,0),(29,'f_vote',0,1,0),(30,'f_votechg',0,1,0),(31,'f_softdelete',0,1,0),(32,'m_',1,1,0),(33,'m_approve',1,1,0),(34,'m_chgposter',1,1,0),(35,'m_delete',1,1,0),(36,'m_edit',1,1,0),(37,'m_info',1,1,0),(38,'m_lock',1,1,0),(39,'m_merge',1,1,0),(40,'m_move',1,1,0),(41,'m_report',1,1,0),(42,'m_split',1,1,0),(43,'m_softdelete',1,1,0),(44,'m_ban',1,0,0),(45,'m_warn',1,0,0),(46,'a_',1,0,0),(47,'a_aauth',1,0,0),(48,'a_attach',1,0,0),(49,'a_authgroups',1,0,0),(50,'a_authusers',1,0,0),(51,'a_backup',1,0,0),(52,'a_ban',1,0,0),(53,'a_bbcode',1,0,0),(54,'a_board',1,0,0),(55,'a_bots',1,0,0),(56,'a_clearlogs',1,0,0),(57,'a_email',1,0,0),(58,'a_extensions',1,0,0),(59,'a_fauth',1,0,0),(60,'a_forum',1,0,0),(61,'a_forumadd',1,0,0),(62,'a_forumdel',1,0,0),(63,'a_group',1,0,0),(64,'a_groupadd',1,0,0),(65,'a_groupdel',1,0,0),(66,'a_icons',1,0,0),(67,'a_jabber',1,0,0),(68,'a_language',1,0,0),(69,'a_mauth',1,0,0),(70,'a_modules',1,0,0),(71,'a_names',1,0,0),(72,'a_phpinfo',1,0,0),(73,'a_profile',1,0,0),(74,'a_prune',1,0,0),(75,'a_ranks',1,0,0),(76,'a_reasons',1,0,0),(77,'a_roles',1,0,0),(78,'a_search',1,0,0),(79,'a_server',1,0,0),(80,'a_styles',1,0,0),(81,'a_switchperm',1,0,0),(82,'a_uauth',1,0,0),(83,'a_user',1,0,0),(84,'a_userdel',1,0,0),(85,'a_viewauth',1,0,0),(86,'a_viewlogs',1,0,0),(87,'a_words',1,0,0),(88,'u_',1,0,0),(89,'u_attach',1,0,0),(90,'u_chgavatar',1,0,0),(91,'u_chgcensors',1,0,0),(92,'u_chgemail',1,0,0),(93,'u_chggrp',1,0,0),(94,'u_chgname',1,0,0),(95,'u_chgpasswd',1,0,0),(96,'u_chgprofileinfo',1,0,0),(97,'u_download',1,0,0),(98,'u_hideonline',1,0,0),(99,'u_ignoreflood',1,0,0),(100,'u_masspm',1,0,0),(101,'u_masspm_group',1,0,0),(102,'u_pm_attach',1,0,0),(103,'u_pm_bbcode',1,0,0),(104,'u_pm_delete',1,0,0),(105,'u_pm_download',1,0,0),(106,'u_pm_edit',1,0,0),(107,'u_pm_emailpm',1,0,0),(108,'u_pm_flash',1,0,0),(109,'u_pm_forward',1,0,0),(110,'u_pm_img',1,0,0),(111,'u_pm_printpm',1,0,0),(112,'u_pm_smilies',1,0,0),(113,'u_readpm',1,0,0),(114,'u_savedrafts',1,0,0),(115,'u_search',1,0,0),(116,'u_sendemail',1,0,0),(117,'u_sendim',1,0,0),(118,'u_sendpm',1,0,0),(119,'u_sig',1,0,0),(120,'u_viewonline',1,0,0),(121,'u_viewprofile',1,0,0);
/*!40000 ALTER TABLE `phpbb_acl_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_acl_roles`
--

DROP TABLE IF EXISTS `phpbb_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_roles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `role_order` (`role_order`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_roles`
--

LOCK TABLES `phpbb_acl_roles` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_roles` DISABLE KEYS */;
INSERT INTO `phpbb_acl_roles` VALUES (1,'ROLE_ADMIN_STANDARD','ROLE_DESCRIPTION_ADMIN_STANDARD','a_',1),(2,'ROLE_ADMIN_FORUM','ROLE_DESCRIPTION_ADMIN_FORUM','a_',3),(3,'ROLE_ADMIN_USERGROUP','ROLE_DESCRIPTION_ADMIN_USERGROUP','a_',4),(4,'ROLE_ADMIN_FULL','ROLE_DESCRIPTION_ADMIN_FULL','a_',2),(5,'ROLE_USER_FULL','ROLE_DESCRIPTION_USER_FULL','u_',3),(6,'ROLE_USER_STANDARD','ROLE_DESCRIPTION_USER_STANDARD','u_',1),(7,'ROLE_USER_LIMITED','ROLE_DESCRIPTION_USER_LIMITED','u_',2),(8,'ROLE_USER_NOPM','ROLE_DESCRIPTION_USER_NOPM','u_',4),(9,'ROLE_USER_NOAVATAR','ROLE_DESCRIPTION_USER_NOAVATAR','u_',5),(10,'ROLE_MOD_FULL','ROLE_DESCRIPTION_MOD_FULL','m_',3),(11,'ROLE_MOD_STANDARD','ROLE_DESCRIPTION_MOD_STANDARD','m_',1),(12,'ROLE_MOD_SIMPLE','ROLE_DESCRIPTION_MOD_SIMPLE','m_',2),(13,'ROLE_MOD_QUEUE','ROLE_DESCRIPTION_MOD_QUEUE','m_',4),(14,'ROLE_FORUM_FULL','ROLE_DESCRIPTION_FORUM_FULL','f_',7),(15,'ROLE_FORUM_STANDARD','ROLE_DESCRIPTION_FORUM_STANDARD','f_',5),(16,'ROLE_FORUM_NOACCESS','ROLE_DESCRIPTION_FORUM_NOACCESS','f_',1),(17,'ROLE_FORUM_READONLY','ROLE_DESCRIPTION_FORUM_READONLY','f_',2),(18,'ROLE_FORUM_LIMITED','ROLE_DESCRIPTION_FORUM_LIMITED','f_',3),(19,'ROLE_FORUM_BOT','ROLE_DESCRIPTION_FORUM_BOT','f_',9),(20,'ROLE_FORUM_ONQUEUE','ROLE_DESCRIPTION_FORUM_ONQUEUE','f_',8),(21,'ROLE_FORUM_POLLS','ROLE_DESCRIPTION_FORUM_POLLS','f_',6),(22,'ROLE_FORUM_LIMITED_POLLS','ROLE_DESCRIPTION_FORUM_LIMITED_POLLS','f_',4),(23,'ROLE_USER_NEW_MEMBER','ROLE_DESCRIPTION_USER_NEW_MEMBER','u_',6),(24,'ROLE_FORUM_NEW_MEMBER','ROLE_DESCRIPTION_FORUM_NEW_MEMBER','f_',10);
/*!40000 ALTER TABLE `phpbb_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_acl_roles_data`
--

DROP TABLE IF EXISTS `phpbb_acl_roles_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_roles_data`
--

LOCK TABLES `phpbb_acl_roles_data` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_roles_data` DISABLE KEYS */;
INSERT INTO `phpbb_acl_roles_data` VALUES (1,46,1),(1,48,1),(1,49,1),(1,50,1),(1,52,1),(1,53,1),(1,54,1),(1,58,1),(1,59,1),(1,60,1),(1,61,1),(1,62,1),(1,63,1),(1,64,1),(1,65,1),(1,66,1),(1,69,1),(1,71,1),(1,73,1),(1,74,1),(1,75,1),(1,76,1),(1,82,1),(1,83,1),(1,84,1),(1,85,1),(1,86,1),(1,87,1),(2,46,1),(2,49,1),(2,50,1),(2,59,1),(2,60,1),(2,61,1),(2,62,1),(2,69,1),(2,74,1),(2,82,1),(2,85,1),(2,86,1),(3,46,1),(3,49,1),(3,50,1),(3,52,1),(3,63,1),(3,64,1),(3,65,1),(3,75,1),(3,82,1),(3,83,1),(3,85,1),(3,86,1),(4,46,1),(4,47,1),(4,48,1),(4,49,1),(4,50,1),(4,51,1),(4,52,1),(4,53,1),(4,54,1),(4,55,1),(4,56,1),(4,57,1),(4,58,1),(4,59,1),(4,60,1),(4,61,1),(4,62,1),(4,63,1),(4,64,1),(4,65,1),(4,66,1),(4,67,1),(4,68,1),(4,69,1),(4,70,1),(4,71,1),(4,72,1),(4,73,1),(4,74,1),(4,75,1),(4,76,1),(4,77,1),(4,78,1),(4,79,1),(4,80,1),(4,81,1),(4,82,1),(4,83,1),(4,84,1),(4,85,1),(4,86,1),(4,87,1),(5,88,1),(5,89,1),(5,90,1),(5,91,1),(5,92,1),(5,93,1),(5,94,1),(5,95,1),(5,96,1),(5,97,1),(5,98,1),(5,99,1),(5,100,1),(5,101,1),(5,102,1),(5,103,1),(5,104,1),(5,105,1),(5,106,1),(5,107,1),(5,108,1),(5,109,1),(5,110,1),(5,111,1),(5,112,1),(5,113,1),(5,114,1),(5,115,1),(5,116,1),(5,117,1),(5,118,1),(5,119,1),(5,120,1),(5,121,1),(6,88,1),(6,89,1),(6,90,1),(6,91,1),(6,92,1),(6,95,1),(6,96,1),(6,97,1),(6,98,1),(6,100,1),(6,101,1),(6,102,1),(6,103,1),(6,104,1),(6,105,1),(6,106,1),(6,107,1),(6,110,1),(6,111,1),(6,112,1),(6,113,1),(6,114,1),(6,115,1),(6,116,1),(6,117,1),(6,118,1),(6,119,1),(6,121,1),(7,88,1),(7,90,1),(7,91,1),(7,92,1),(7,95,1),(7,96,1),(7,97,1),(7,98,1),(7,103,1),(7,104,1),(7,105,1),(7,106,1),(7,109,1),(7,110,1),(7,111,1),(7,112,1),(7,113,1),(7,118,1),(7,119,1),(7,121,1),(8,88,1),(8,90,1),(8,91,1),(8,92,1),(8,95,1),(8,97,1),(8,98,1),(8,100,0),(8,101,0),(8,113,0),(8,118,0),(8,119,1),(8,121,1),(9,88,1),(9,90,0),(9,91,1),(9,92,1),(9,95,1),(9,96,1),(9,97,1),(9,98,1),(9,103,1),(9,104,1),(9,105,1),(9,106,1),(9,109,1),(9,110,1),(9,111,1),(9,112,1),(9,113,1),(9,118,1),(9,119,1),(9,121,1),(10,32,1),(10,33,1),(10,34,1),(10,35,1),(10,36,1),(10,37,1),(10,38,1),(10,39,1),(10,40,1),(10,41,1),(10,42,1),(10,43,1),(10,44,1),(10,45,1),(11,32,1),(11,33,1),(11,35,1),(11,36,1),(11,37,1),(11,38,1),(11,39,1),(11,40,1),(11,41,1),(11,42,1),(11,43,1),(11,45,1),(12,32,1),(12,35,1),(12,36,1),(12,37,1),(12,41,1),(12,43,1),(13,32,1),(13,33,1),(13,36,1),(14,1,1),(14,2,1),(14,3,1),(14,4,1),(14,5,1),(14,6,1),(14,7,1),(14,8,1),(14,9,1),(14,10,1),(14,11,1),(14,12,1),(14,13,1),(14,14,1),(14,15,1),(14,16,1),(14,17,1),(14,18,1),(14,19,1),(14,20,1),(14,21,1),(14,22,1),(14,23,1),(14,24,1),(14,25,1),(14,26,1),(14,27,1),(14,28,1),(14,29,1),(14,30,1),(14,31,1),(15,1,1),(15,3,1),(15,4,1),(15,5,1),(15,6,1),(15,7,1),(15,8,1),(15,9,1),(15,11,1),(15,13,1),(15,14,1),(15,15,1),(15,17,1),(15,18,1),(15,19,1),(15,20,1),(15,21,1),(15,22,1),(15,23,1),(15,24,1),(15,25,1),(15,27,1),(15,29,1),(15,30,1),(15,31,1),(16,1,0),(17,1,1),(17,7,1),(17,14,1),(17,19,1),(17,20,1),(17,23,1),(17,27,1),(18,1,1),(18,4,1),(18,7,1),(18,8,1),(18,9,1),(18,13,1),(18,14,1),(18,15,1),(18,17,1),(18,18,1),(18,19,1),(18,20,1),(18,21,1),(18,22,1),(18,23,1),(18,24,1),(18,25,1),(18,27,1),(18,29,1),(18,31,1),(19,1,1),(19,7,1),(19,14,1),(19,19,1),(19,20,1),(20,1,1),(20,3,1),(20,4,1),(20,7,1),(20,8,1),(20,9,1),(20,13,1),(20,14,1),(20,15,0),(20,17,1),(20,18,1),(20,19,1),(20,20,1),(20,21,1),(20,22,1),(20,23,1),(20,24,1),(20,25,1),(20,27,1),(20,29,1),(20,31,1),(21,1,1),(21,3,1),(21,4,1),(21,5,1),(21,6,1),(21,7,1),(21,8,1),(21,9,1),(21,11,1),(21,13,1),(21,14,1),(21,15,1),(21,16,1),(21,17,1),(21,18,1),(21,19,1),(21,20,1),(21,21,1),(21,22,1),(21,23,1),(21,24,1),(21,25,1),(21,27,1),(21,29,1),(21,30,1),(21,31,1),(22,1,1),(22,4,1),(22,7,1),(22,8,1),(22,9,1),(22,13,1),(22,14,1),(22,15,1),(22,16,1),(22,17,1),(22,18,1),(22,19,1),(22,20,1),(22,21,1),(22,22,1),(22,23,1),(22,24,1),(22,25,1),(22,27,1),(22,29,1),(22,31,1),(23,96,0),(23,100,0),(23,101,0),(23,118,0),(24,15,0);
/*!40000 ALTER TABLE `phpbb_acl_roles_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_acl_users`
--

DROP TABLE IF EXISTS `phpbb_acl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_users` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `auth_option_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_users`
--

LOCK TABLES `phpbb_acl_users` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_users` DISABLE KEYS */;
INSERT INTO `phpbb_acl_users` VALUES (2,0,0,5,0),(49,0,0,10,0);
/*!40000 ALTER TABLE `phpbb_acl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_attachments`
--

DROP TABLE IF EXISTS `phpbb_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `post_msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `in_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `filetime` int(11) unsigned NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_attachments`
--

LOCK TABLES `phpbb_attachments` WRITE;
/*!40000 ALTER TABLE `phpbb_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_banlist`
--

DROP TABLE IF EXISTS `phpbb_banlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_end` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_banlist`
--

LOCK TABLES `phpbb_banlist` WRITE;
/*!40000 ALTER TABLE `phpbb_banlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_banlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_bbcodes`
--

DROP TABLE IF EXISTS `phpbb_bbcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_bbcodes` (
  `bbcode_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_bbcodes`
--

LOCK TABLES `phpbb_bbcodes` WRITE;
/*!40000 ALTER TABLE `phpbb_bbcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_bbcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_bookmarks`
--

DROP TABLE IF EXISTS `phpbb_bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_bookmarks`
--

LOCK TABLES `phpbb_bookmarks` WRITE;
/*!40000 ALTER TABLE `phpbb_bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_bots`
--

DROP TABLE IF EXISTS `phpbb_bots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_bots` (
  `bot_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`),
  KEY `bot_active` (`bot_active`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_bots`
--

LOCK TABLES `phpbb_bots` WRITE;
/*!40000 ALTER TABLE `phpbb_bots` DISABLE KEYS */;
INSERT INTO `phpbb_bots` VALUES (1,1,'AdsBot [Google]',3,'AdsBot-Google',''),(2,1,'Alexa [Bot]',4,'ia_archiver',''),(3,1,'Alta Vista [Bot]',5,'Scooter/',''),(4,1,'Ask Jeeves [Bot]',6,'Ask Jeeves',''),(5,1,'Baidu [Spider]',7,'Baiduspider',''),(6,1,'Bing [Bot]',8,'bingbot/',''),(7,1,'Exabot [Bot]',9,'Exabot',''),(8,1,'FAST Enterprise [Crawler]',10,'FAST Enterprise Crawler',''),(9,1,'FAST WebCrawler [Crawler]',11,'FAST-WebCrawler/',''),(10,1,'Francis [Bot]',12,'http://www.neomo.de/',''),(11,1,'Gigabot [Bot]',13,'Gigabot/',''),(12,1,'Google Adsense [Bot]',14,'Mediapartners-Google',''),(13,1,'Google Desktop',15,'Google Desktop',''),(14,1,'Google Feedfetcher',16,'Feedfetcher-Google',''),(15,1,'Google [Bot]',17,'Googlebot',''),(16,1,'Heise IT-Markt [Crawler]',18,'heise-IT-Markt-Crawler',''),(17,1,'Heritrix [Crawler]',19,'heritrix/1.',''),(18,1,'IBM Research [Bot]',20,'ibm.com/cs/crawler',''),(19,1,'ICCrawler - ICjobs',21,'ICCrawler - ICjobs',''),(20,1,'ichiro [Crawler]',22,'ichiro/',''),(21,1,'Majestic-12 [Bot]',23,'MJ12bot/',''),(22,1,'Metager [Bot]',24,'MetagerBot/',''),(23,1,'MSN NewsBlogs',25,'msnbot-NewsBlogs/',''),(24,1,'MSN [Bot]',26,'msnbot/',''),(25,1,'MSNbot Media',27,'msnbot-media/',''),(26,1,'Nutch [Bot]',28,'http://lucene.apache.org/nutch/',''),(27,1,'Online link [Validator]',29,'online link validator',''),(28,1,'psbot [Picsearch]',30,'psbot/0',''),(29,1,'Sensis [Crawler]',31,'Sensis Web Crawler',''),(30,1,'SEO Crawler',32,'SEO search Crawler/',''),(31,1,'Seoma [Crawler]',33,'Seoma [SEO Crawler]',''),(32,1,'SEOSearch [Crawler]',34,'SEOsearch/',''),(33,1,'Snappy [Bot]',35,'Snappy/1.1 ( http://www.urltrends.com/ )',''),(34,1,'Steeler [Crawler]',36,'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/',''),(35,1,'Telekom [Bot]',37,'crawleradmin.t-info@telekom.de',''),(36,1,'TurnitinBot [Bot]',38,'TurnitinBot/',''),(37,1,'Voyager [Bot]',39,'voyager/',''),(38,1,'W3 [Sitesearch]',40,'W3 SiteSearch Crawler',''),(39,1,'W3C [Linkcheck]',41,'W3C-checklink/',''),(40,1,'W3C [Validator]',42,'W3C_Validator',''),(41,1,'YaCy [Bot]',43,'yacybot',''),(42,1,'Yahoo MMCrawler [Bot]',44,'Yahoo-MMCrawler/',''),(43,1,'Yahoo Slurp [Bot]',45,'Yahoo! DE Slurp',''),(44,1,'Yahoo [Bot]',46,'Yahoo! Slurp',''),(45,1,'YahooSeeker [Bot]',47,'YahooSeeker/','');
/*!40000 ALTER TABLE `phpbb_bots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_config`
--

DROP TABLE IF EXISTS `phpbb_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_config`
--

LOCK TABLES `phpbb_config` WRITE;
/*!40000 ALTER TABLE `phpbb_config` DISABLE KEYS */;
INSERT INTO `phpbb_config` VALUES ('active_sessions','0',0),('allow_attachments','1',0),('allow_autologin','1',0),('allow_avatar','1',0),('allow_avatar_gravatar','0',0),('allow_avatar_local','0',0),('allow_avatar_remote','0',0),('allow_avatar_remote_upload','0',0),('allow_avatar_upload','1',0),('allow_bbcode','1',0),('allow_birthdays','1',0),('allow_bookmarks','1',0),('allow_cdn','0',0),('allow_emailreuse','0',0),('allow_forum_notify','1',0),('allow_live_searches','1',0),('allow_mass_pm','1',0),('allow_name_chars','USERNAME_CHARS_ANY',0),('allow_namechange','0',0),('allow_nocensors','0',0),('allow_password_reset','1',0),('allow_pm_attach','0',0),('allow_pm_report','1',0),('allow_post_flash','1',0),('allow_post_links','1',0),('allow_privmsg','1',0),('allow_quick_reply','1',0),('allow_sig','1',0),('allow_sig_bbcode','1',0),('allow_sig_flash','0',0),('allow_sig_img','1',0),('allow_sig_links','1',0),('allow_sig_pm','1',0),('allow_sig_smilies','1',0),('allow_smilies','1',0),('allow_topic_notify','1',0),('assets_version','6',0),('attachment_quota','52428800',0),('auth_bbcode_pm','1',0),('auth_flash_pm','0',0),('auth_img_pm','1',0),('auth_method','db',0),('auth_oauth_bitly_key','',0),('auth_oauth_bitly_secret','',0),('auth_oauth_facebook_key','',0),('auth_oauth_facebook_secret','',0),('auth_oauth_google_key','',0),('auth_oauth_google_secret','',0),('auth_smilies_pm','1',0),('avatar_filesize','6144',0),('avatar_gallery_path','images/avatars/gallery',0),('avatar_max_height','90',0),('avatar_max_width','90',0),('avatar_min_height','20',0),('avatar_min_width','20',0),('avatar_path','images/avatars/upload',0),('avatar_salt','42dbf6b1d069ede4e261de95ecfd3730',0),('board_contact','Alexandra@sublime-voyance.be',0),('board_contact_name','Alexandra',0),('board_disable','0',0),('board_disable_msg','',0),('board_email','Alexandra@sublime-voyance.be',0),('board_email_form','0',0),('board_email_sig','Cordialement, l’équipe du forum de Sublime-Voyance.',0),('board_hide_emails','1',0),('board_index_text','',0),('board_startdate','1433324709',0),('board_timezone','Europe/Paris',0),('browser_check','1',0),('bump_interval','10',0),('bump_type','d',0),('cache_gc','7200',0),('cache_last_gc','1439906552',1),('captcha_gd','1',0),('captcha_gd_3d_noise','1',0),('captcha_gd_fonts','1',0),('captcha_gd_foreground_noise','0',0),('captcha_gd_wave','0',0),('captcha_gd_x_grid','25',0),('captcha_gd_y_grid','25',0),('captcha_plugin','core.captcha.plugins.gd',0),('check_attachment_content','1',0),('check_dnsbl','0',0),('chg_passforce','0',0),('confirm_refresh','1',0),('contact_admin_form_enable','1',0),('cookie_domain','uuu.sublime-voyance.be',0),('cookie_name','phpbb3_7vao7',0),('cookie_path','/',0),('cookie_secure','0',0),('coppa_enable','0',0),('coppa_fax','',0),('coppa_mail','',0),('cron_lock','0',1),('database_gc','604800',0),('database_last_gc','1439470218',1),('dbms_version','5.5.43-0ubuntu0.14.04.1',0),('default_dateformat','|d M Y|, H:i',0),('default_lang','fr',0),('default_style','1',0),('delete_time','0',0),('display_last_edited','1',0),('display_last_subject','1',0),('display_order','0',0),('edit_time','0',0),('elonw_version','1.0.0',0),('email_check_mx','1',0),('email_enable','1',0),('email_function_name','mail',0),('email_max_chunk_size','50',0),('email_package_size','20',0),('enable_confirm','1',0),('enable_mod_rewrite','1',0),('enable_pm_icons','1',0),('enable_post_confirm','1',0),('extension_force_unstable','0',0),('feed_enable','1',0),('feed_forum','1',0),('feed_http_auth','0',0),('feed_item_statistics','1',0),('feed_limit_post','15',0),('feed_limit_topic','10',0),('feed_overall','1',0),('feed_overall_forums','0',0),('feed_topic','1',0),('feed_topics_active','0',0),('feed_topics_new','1',0),('flood_interval','15',0),('force_server_vars','0',0),('form_token_lifetime','7200',0),('form_token_mintime','0',0),('form_token_sid_guests','1',0),('forward_pm','1',0),('forwarded_for_check','0',0),('full_folder_action','2',0),('fulltext_mysql_max_word_len','254',0),('fulltext_mysql_min_word_len','4',0),('fulltext_native_common_thres','5',0),('fulltext_native_load_upd','1',0),('fulltext_native_max_chars','14',0),('fulltext_native_min_chars','3',0),('fulltext_postgres_max_word_len','254',0),('fulltext_postgres_min_word_len','4',0),('fulltext_postgres_ts_name','simple',0),('fulltext_sphinx_id','a995c7f5194f7355',0),('fulltext_sphinx_indexer_mem_limit','512',0),('fulltext_sphinx_stopwords','0',0),('gzip_compress','0',0),('hot_threshold','25',0),('icons_path','images/icons',0),('img_create_thumbnail','0',0),('img_display_inlined','1',0),('img_imagick','',0),('img_link_height','0',0),('img_link_width','0',0),('img_max_height','0',0),('img_max_thumb_width','400',0),('img_max_width','0',0),('img_min_thumb_filesize','12000',0),('ip_check','3',0),('ip_login_limit_max','50',0),('ip_login_limit_time','21600',0),('ip_login_limit_use_forwarded','0',0),('jab_enable','0',0),('jab_host','',0),('jab_package_size','20',0),('jab_password','',0),('jab_port','5222',0),('jab_use_ssl','0',0),('jab_username','',0),('last_queue_run','0',1),('ldap_base_dn','',0),('ldap_email','',0),('ldap_password','',0),('ldap_port','',0),('ldap_server','',0),('ldap_uid','',0),('ldap_user','',0),('ldap_user_filter','',0),('legend_sort_groupname','0',0),('limit_load','0',0),('limit_search_load','0',0),('load_anon_lastread','0',0),('load_birthdays','1',0),('load_cpf_memberlist','1',0),('load_cpf_pm','1',0),('load_cpf_viewprofile','1',0),('load_cpf_viewtopic','1',0),('load_db_lastread','1',0),('load_db_track','1',0),('load_jquery_url','//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js',0),('load_jumpbox','1',0),('load_moderators','1',0),('load_notifications','1',0),('load_online','1',0),('load_online_guests','1',0),('load_online_time','5',0),('load_onlinetrack','1',0),('load_search','1',0),('load_tplcompile','0',0),('load_unreads_search','1',0),('load_user_activity','1',0),('max_attachments','3',0),('max_attachments_pm','1',0),('max_autologin_time','0',0),('max_filesize','262144',0),('max_filesize_pm','262144',0),('max_login_attempts','3',0),('max_name_chars','20',0),('max_num_search_keywords','10',0),('max_pass_chars','100',0),('max_poll_options','10',0),('max_post_chars','60000',0),('max_post_font_size','200',0),('max_post_img_height','0',0),('max_post_img_width','0',0),('max_post_smilies','0',0),('max_post_urls','0',0),('max_quote_depth','3',0),('max_reg_attempts','5',0),('max_sig_chars','255',0),('max_sig_font_size','200',0),('max_sig_img_height','0',0),('max_sig_img_width','0',0),('max_sig_smilies','0',0),('max_sig_urls','5',0),('mime_triggers','body|head|html|img|plaintext|a href|pre|script|table|title',0),('min_name_chars','3',0),('min_pass_chars','6',0),('min_post_chars','1',0),('min_search_author_chars','3',0),('new_member_group_default','0',0),('new_member_post_limit','3',0),('newest_user_colour','',1),('newest_user_id','53',1),('newest_username','chantal rouyr',1),('num_files','0',1),('num_posts','16',1),('num_topics','8',1),('num_users','7',1),('override_user_style','0',0),('pass_complex','PASS_TYPE_ANY',0),('plupload_last_gc','0',1),('plupload_salt','f51f9b2fecd273f7b7587070f1e3ea17',0),('pm_edit_time','0',0),('pm_max_boxes','4',0),('pm_max_msgs','50',0),('pm_max_recipients','0',0),('posts_per_page','10',0),('print_pm','1',0),('questionnaire_unique_id','9f2087981de2bfba',0),('queue_interval','60',0),('rand_seed','03f8bba0f34fd16d35454a25180278a2',1),('rand_seed_last_update','1439923588',1),('ranks_path','images/ranks',0),('read_notification_expire_days','30',0),('read_notification_gc','86400',0),('read_notification_last_gc','1439887966',1),('record_online_date','1439417579',1),('record_online_users','6',1),('referer_validation','1',0),('require_activation','1',0),('script_path','/',0),('search_anonymous_interval','0',0),('search_block_size','250',0),('search_gc','7200',0),('search_indexing_state','',1),('search_interval','0',0),('search_last_gc','1439906658',1),('search_store_results','1800',0),('search_type','\\phpbb\\search\\fulltext_native',0),('secure_allow_deny','1',0),('secure_allow_empty_referer','1',0),('secure_downloads','0',0),('server_name','uuu.sublime-voyance.be',0),('server_port','80',0),('server_protocol','http://',0),('session_gc','3600',0),('session_last_gc','1439906480',1),('session_length','3600',0),('site_desc','Voyance par Téléphone - Coaching de Vie.',0),('site_home_text','Sublime-Voyance',0),('site_home_url','http://sublime-voyance.be',0),('sitename','Uuu.sublime-voyance.be',0),('smilies_path','images/smilies',0),('smilies_per_page','50',0),('smtp_auth_method','PLAIN',0),('smtp_delivery','0',0),('smtp_host','',0),('smtp_password','',0),('smtp_port','25',0),('smtp_username','',0),('teampage_forums','1',0),('teampage_memberships','1',0),('topics_per_page','25',0),('tpl_allow_php','0',0),('upload_dir_size','0',1),('upload_icons_path','images/upload_icons',0),('upload_path','files',0),('use_system_cron','0',0),('version','3.1.4',0),('warnings_expire_days','90',0),('warnings_gc','14400',0),('warnings_last_gc','1439902207',1);
/*!40000 ALTER TABLE `phpbb_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_config_text`
--

DROP TABLE IF EXISTS `phpbb_config_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_config_text` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_config_text`
--

LOCK TABLES `phpbb_config_text` WRITE;
/*!40000 ALTER TABLE `phpbb_config_text` DISABLE KEYS */;
INSERT INTO `phpbb_config_text` VALUES ('contact_admin_info',''),('contact_admin_info_bitfield',''),('contact_admin_info_flags','7'),('contact_admin_info_uid','');
/*!40000 ALTER TABLE `phpbb_config_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_confirm`
--

DROP TABLE IF EXISTS `phpbb_confirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) unsigned NOT NULL DEFAULT '0',
  `attempts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`,`confirm_id`),
  KEY `confirm_type` (`confirm_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_confirm`
--

LOCK TABLES `phpbb_confirm` WRITE;
/*!40000 ALTER TABLE `phpbb_confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_confirm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_disallow`
--

DROP TABLE IF EXISTS `phpbb_disallow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_disallow`
--

LOCK TABLES `phpbb_disallow` WRITE;
/*!40000 ALTER TABLE `phpbb_disallow` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_disallow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_drafts`
--

DROP TABLE IF EXISTS `phpbb_drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_drafts` (
  `draft_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `save_time` int(11) unsigned NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`),
  KEY `save_time` (`save_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_drafts`
--

LOCK TABLES `phpbb_drafts` WRITE;
/*!40000 ALTER TABLE `phpbb_drafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_drafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_ext`
--

DROP TABLE IF EXISTS `phpbb_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_ext` (
  `ext_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ext_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ext_state` text COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `ext_name` (`ext_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_ext`
--

LOCK TABLES `phpbb_ext` WRITE;
/*!40000 ALTER TABLE `phpbb_ext` DISABLE KEYS */;
INSERT INTO `phpbb_ext` VALUES ('rmcgirr83/elonw',1,'b:0;');
/*!40000 ALTER TABLE `phpbb_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_extension_groups`
--

DROP TABLE IF EXISTS `phpbb_extension_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_extension_groups`
--

LOCK TABLES `phpbb_extension_groups` WRITE;
/*!40000 ALTER TABLE `phpbb_extension_groups` DISABLE KEYS */;
INSERT INTO `phpbb_extension_groups` VALUES (1,'IMAGES',1,1,1,'',0,'',0),(2,'ARCHIVES',0,1,1,'',0,'',0),(3,'PLAIN_TEXT',0,0,1,'',0,'',0),(4,'DOCUMENTS',0,0,1,'',0,'',0),(5,'REAL_MEDIA',3,0,1,'',0,'',0),(6,'WINDOWS_MEDIA',2,0,1,'',0,'',0),(7,'FLASH_FILES',5,0,1,'',0,'',0),(8,'QUICKTIME_MEDIA',6,0,1,'',0,'',0),(9,'DOWNLOADABLE_FILES',0,0,1,'',0,'',0);
/*!40000 ALTER TABLE `phpbb_extension_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_extensions`
--

DROP TABLE IF EXISTS `phpbb_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_extensions`
--

LOCK TABLES `phpbb_extensions` WRITE;
/*!40000 ALTER TABLE `phpbb_extensions` DISABLE KEYS */;
INSERT INTO `phpbb_extensions` VALUES (1,1,'gif'),(2,1,'png'),(3,1,'jpeg'),(4,1,'jpg'),(5,1,'tif'),(6,1,'tiff'),(7,1,'tga'),(8,2,'gtar'),(9,2,'gz'),(10,2,'tar'),(11,2,'zip'),(12,2,'rar'),(13,2,'ace'),(14,2,'torrent'),(15,2,'tgz'),(16,2,'bz2'),(17,2,'7z'),(18,3,'txt'),(19,3,'c'),(20,3,'h'),(21,3,'cpp'),(22,3,'hpp'),(23,3,'diz'),(24,3,'csv'),(25,3,'ini'),(26,3,'log'),(27,3,'js'),(28,3,'xml'),(29,4,'xls'),(30,4,'xlsx'),(31,4,'xlsm'),(32,4,'xlsb'),(33,4,'doc'),(34,4,'docx'),(35,4,'docm'),(36,4,'dot'),(37,4,'dotx'),(38,4,'dotm'),(39,4,'pdf'),(40,4,'ai'),(41,4,'ps'),(42,4,'ppt'),(43,4,'pptx'),(44,4,'pptm'),(45,4,'odg'),(46,4,'odp'),(47,4,'ods'),(48,4,'odt'),(49,4,'rtf'),(50,5,'rm'),(51,5,'ram'),(52,6,'wma'),(53,6,'wmv'),(54,7,'swf'),(55,8,'mov'),(56,8,'m4v'),(57,8,'m4a'),(58,8,'mp4'),(59,8,'3gp'),(60,8,'3g2'),(61,8,'qt'),(62,9,'mpeg'),(63,9,'mpg'),(64,9,'mp3'),(65,9,'ogg'),(66,9,'ogm');
/*!40000 ALTER TABLE `phpbb_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_forums`
--

DROP TABLE IF EXISTS `phpbb_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_next` int(11) unsigned NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `forum_options` int(20) unsigned NOT NULL DEFAULT '0',
  `enable_shadow_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_shadow_days` mediumint(8) unsigned NOT NULL DEFAULT '7',
  `prune_shadow_freq` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `prune_shadow_next` int(11) NOT NULL DEFAULT '0',
  `forum_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_forums`
--

LOCK TABLES `phpbb_forums` WRITE;
/*!40000 ALTER TABLE `phpbb_forums` DISABLE KEYS */;
INSERT INTO `phpbb_forums` VALUES (1,2,6,7,'a:1:{i:2;a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;i:0;}}','Parapsychologie','','',7,'','','',0,'','','','',7,'',0,1,0,0,0,'',0,'','',48,1,1,1,0,0,0,0,0,1,0,0,7,1,0,0,0,0,0,0,0),(2,0,5,20,'','Les Sciences Paranomales','','',7,'','','',0,'','','','',7,'',0,0,0,0,0,'',0,'','',32,1,1,1,0,0,0,0,0,1,0,0,7,1,0,0,0,0,0,0,0),(3,0,1,4,'','Charte du forum','','',7,'','','',0,'','','','',7,'',0,1,0,8,2,'Les conditions générales',1439471617,'Alexandra','AA0000',48,0,1,0,0,0,7,7,1,1,0,0,7,1,0,2,0,0,2,0,0),(4,2,8,9,'a:1:{i:2;a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;i:0;}}','Tarologie - Esotérisme','','',7,'','','',0,'','','','',7,'',0,1,0,0,0,'',0,'','',48,0,1,0,0,0,7,7,1,1,0,0,7,1,0,0,0,0,0,0,0),(5,2,10,11,'a:1:{i:2;a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;i:0;}}','Clairvoyance','','',7,'','','',0,'','','','',7,'',0,1,0,0,0,'',0,'','',48,0,1,0,0,0,7,7,1,1,0,0,7,1,0,0,0,0,0,0,0),(6,2,12,13,'a:1:{i:2;a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;i:0;}}','Le petit Lenormand','','',7,'','','',0,'','','','',7,'',0,1,0,3,2,'Tout &quot;savoir&quot; s\'acquiert, toute &quot;connaissance&quot; se transmet.',1439140458,'Alexandra','AA0000',48,0,1,0,0,0,7,7,1,1,0,0,7,1,0,2,0,0,2,0,0),(12,0,21,24,'','Détente et bonne humeur','','',7,'','','',0,'','','','',7,'',0,0,0,0,0,'',0,'','',32,0,1,0,0,0,7,7,1,1,0,0,7,1,0,0,0,0,0,0,0),(13,12,22,23,'a:1:{i:12;a:2:{i:0;s:24:\"Détente et bonne humeur\";i:1;i:0;}}','Le bistrot du coin','Venez vous relaxer, boire votre café. Discuter des nouvelles du jour. D\'un livre que vous pourriez proposer à lire. Ou, de tout autres sujets qui vous intéresse.','',7,'','','',0,'','','','',7,'',0,1,0,6,2,'Titre Livres',1439423341,'Alexandra','AA0000',48,0,1,0,0,0,7,7,1,1,0,0,7,1,0,1,0,0,1,0,0),(14,2,14,15,'a:1:{i:2;a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;i:0;}}','Radiesthésie','','',7,'','','',0,'','','','',7,'',0,1,0,0,0,'',0,'','',48,0,1,0,0,0,7,7,1,1,0,0,7,1,0,0,0,0,0,0,0),(15,2,16,17,'a:1:{i:2;a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;i:0;}}','La Lithothérapie','','',7,'','','',0,'','','','',7,'',0,1,0,0,0,'',0,'','',48,0,1,0,0,0,7,7,1,1,0,0,7,1,0,0,0,0,0,0,0),(16,2,18,19,'a:1:{i:2;a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;i:0;}}','Le Reiki','','',7,'','','',0,'','','','',7,'',0,1,0,0,0,'',0,'','',48,0,1,0,0,0,7,7,1,1,0,0,7,1,0,0,0,0,0,0,0),(17,0,25,28,'','Pensées positives','','',7,'','','',0,'','','','',7,'',0,0,0,0,0,'',0,'','',32,0,1,0,0,0,7,7,1,1,0,0,7,1,0,0,0,0,0,0,0),(18,17,26,27,'a:1:{i:17;a:2:{i:0;s:18:\"Pensées positives\";i:1;i:0;}}','Phrases positives','Déposez toutes vos solutions positives, de bien être, afin d\'aider nos semblables à se sentir mieux ou de mieux en mieux dans leurs vies','',7,'','','',0,'','','','',7,'',0,1,0,16,2,'Re: Phrases positives',1439628455,'Alexandra','AA0000',48,0,1,0,0,0,7,7,1,1,0,0,7,1,0,7,0,0,1,0,0),(19,0,29,30,'','Humeur du jour','','',7,'','','',0,'','','','',7,'',0,1,0,10,2,'Re: Alexandra',1439627772,'Alexandra','AA0000',48,0,1,0,0,0,7,7,1,1,0,0,7,1,0,3,0,0,1,0,0),(20,3,2,3,'','Conditions générales','','',7,'','','',0,'','','','',7,'',0,0,0,0,0,'Les conditions générales',0,'','',32,0,1,0,0,0,7,7,1,1,0,0,7,1,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `phpbb_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_forums_access`
--

DROP TABLE IF EXISTS `phpbb_forums_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_forums_access`
--

LOCK TABLES `phpbb_forums_access` WRITE;
/*!40000 ALTER TABLE `phpbb_forums_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_forums_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_forums_track`
--

DROP TABLE IF EXISTS `phpbb_forums_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_forums_track`
--

LOCK TABLES `phpbb_forums_track` WRITE;
/*!40000 ALTER TABLE `phpbb_forums_track` DISABLE KEYS */;
INSERT INTO `phpbb_forums_track` VALUES (2,3,1439471777),(2,6,1439140459),(2,13,1439423341),(2,18,1439628455),(2,19,1439627772),(48,6,1439161461),(48,13,1439891841),(50,3,1439038532),(50,6,1439141428);
/*!40000 ALTER TABLE `phpbb_forums_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_forums_watch`
--

DROP TABLE IF EXISTS `phpbb_forums_watch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_forums_watch`
--

LOCK TABLES `phpbb_forums_watch` WRITE;
/*!40000 ALTER TABLE `phpbb_forums_watch` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_forums_watch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_groups`
--

DROP TABLE IF EXISTS `phpbb_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_legend` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_groups`
--

LOCK TABLES `phpbb_groups` WRITE;
/*!40000 ALTER TABLE `phpbb_groups` DISABLE KEYS */;
INSERT INTO `phpbb_groups` VALUES (1,3,0,0,'GUESTS','','',7,'',0,'','',0,0,0,'',0,0,0,0,5),(2,3,0,0,'REGISTERED','','',7,'',0,'','',0,0,0,'',0,0,0,0,5),(3,3,0,0,'REGISTERED_COPPA','','',7,'',0,'','',0,0,0,'',0,0,0,0,5),(4,3,0,0,'GLOBAL_MODERATORS','','',7,'',0,'','',0,0,0,'00AA00',0,0,0,2,0),(5,3,1,0,'ADMINISTRATORS','','',7,'',0,'','',0,0,0,'AA0000',0,0,0,1,0),(6,3,0,0,'BOTS','','',7,'',0,'','',0,0,0,'9E8DA7',0,0,0,0,5),(7,3,0,0,'NEWLY_REGISTERED','','',7,'',0,'','',0,0,0,'',0,0,0,0,5);
/*!40000 ALTER TABLE `phpbb_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_icons`
--

DROP TABLE IF EXISTS `phpbb_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`icons_id`),
  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_icons`
--

LOCK TABLES `phpbb_icons` WRITE;
/*!40000 ALTER TABLE `phpbb_icons` DISABLE KEYS */;
INSERT INTO `phpbb_icons` VALUES (1,'misc/fire.gif',16,16,1,1),(2,'smile/redface.gif',16,16,9,1),(3,'smile/mrgreen.gif',16,16,10,1),(4,'misc/heart.gif',16,16,4,1),(5,'misc/star.gif',16,16,2,1),(6,'misc/radioactive.gif',16,16,3,1),(7,'misc/thinking.gif',16,16,5,1),(8,'smile/info.gif',16,16,8,1),(9,'smile/question.gif',16,16,6,1),(10,'smile/alert.gif',16,16,7,1);
/*!40000 ALTER TABLE `phpbb_icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_lang`
--

DROP TABLE IF EXISTS `phpbb_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_lang`
--

LOCK TABLES `phpbb_lang` WRITE;
/*!40000 ALTER TABLE `phpbb_lang` DISABLE KEYS */;
INSERT INTO `phpbb_lang` VALUES (1,'fr','fr','French','Français','Maël Soucaze'),(2,'en','en','British English','British English','phpBB Limited');
/*!40000 ALTER TABLE `phpbb_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_log`
--

DROP TABLE IF EXISTS `phpbb_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reportee_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `reportee_id` (`reportee_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_log`
--

LOCK TABLES `phpbb_log` WRITE;
/*!40000 ALTER TABLE `phpbb_log` DISABLE KEYS */;
INSERT INTO `phpbb_log` VALUES (1,0,2,0,0,0,'85.27.74.173',1433253194,'LOG_INSTALL_INSTALLED','a:1:{i:0;s:5:\"3.1.4\";}'),(2,0,2,0,0,0,'85.27.74.173',1433253242,'LOG_CONFIG_REGISTRATION',''),(3,0,2,0,0,0,'85.27.74.173',1433253253,'LOG_CONFIG_REGISTRATION',''),(4,0,2,0,0,0,'85.27.74.173',1433253515,'LOG_CONFIG_SETTINGS',''),(5,0,2,0,0,0,'85.27.74.173',1433253568,'LOG_CONFIG_SETTINGS',''),(6,3,1,0,0,48,'81.240.237.210',1433318789,'LOG_USER_ACTIVE_USER',''),(7,0,2,0,0,0,'81.240.237.210',1433318876,'LOG_ADMIN_AUTH_SUCCESS',''),(8,0,2,0,0,0,'81.240.237.210',1433318913,'LOG_CONFIG_SETTINGS',''),(9,0,2,0,0,0,'81.240.237.210',1433318938,'LOG_CONFIG_SETTINGS',''),(10,0,2,0,0,0,'81.240.237.210',1433318953,'LOG_CONFIG_SETTINGS',''),(11,0,2,0,0,0,'81.240.237.210',1433318975,'LOG_CONFIG_SETTINGS',''),(12,0,2,0,0,0,'81.240.237.210',1433318991,'LOG_CONFIG_SETTINGS',''),(13,0,2,0,0,0,'81.240.237.210',1433324618,'LOG_ADMIN_AUTH_SUCCESS',''),(14,0,2,0,0,0,'81.240.237.210',1433324661,'LOG_USER_USER_UPDATE','a:1:{i:0;s:7:\"GrCOTE7\";}'),(15,0,48,0,0,0,'81.240.237.210',1433324695,'LOG_ADMIN_AUTH_SUCCESS',''),(16,0,48,0,0,0,'81.240.237.210',1433324706,'LOG_RESET_ONLINE',''),(17,0,48,0,0,0,'81.240.237.210',1433324710,'LOG_RESET_DATE',''),(18,0,48,0,0,0,'81.240.237.210',1433324714,'LOG_RESYNC_STATS',''),(19,0,48,0,0,0,'81.240.237.210',1433324718,'LOG_RESYNC_POSTCOUNTS',''),(20,0,48,0,0,0,'81.240.237.210',1433324722,'LOG_RESYNC_POST_MARKING',''),(21,0,48,0,0,0,'81.240.237.210',1433324726,'LOG_PURGE_SESSIONS',''),(22,0,48,0,0,0,'81.240.237.210',1433324730,'LOG_PURGE_CACHE',''),(23,0,2,0,0,0,'85.27.74.173',1433326134,'LOG_ADMIN_AUTH_SUCCESS',''),(24,0,48,0,0,0,'81.240.237.210',1433338618,'LOG_ADMIN_AUTH_SUCCESS',''),(25,0,48,0,0,0,'81.240.237.210',1433339070,'LOG_CONFIG_SETTINGS',''),(26,0,2,0,0,0,'85.27.74.173',1433339208,'LOG_ADMIN_AUTH_SUCCESS',''),(27,3,48,0,0,49,'81.240.237.210',1433339308,'LOG_USER_UPDATE_NAME','a:2:{i:0;s:5:\"Maude\";i:1;s:6:\"Jeanne\";}'),(28,0,48,0,0,0,'81.240.237.210',1433339308,'LOG_USER_USER_UPDATE','a:1:{i:0;s:6:\"Jeanne\";}'),(29,3,1,0,0,49,'85.201.177.181',1433339398,'LOG_USER_ACTIVE_USER',''),(30,0,2,0,0,0,'85.27.74.173',1433339468,'LOG_USERS_ADDED','a:2:{i:0;s:23:\"Modérateurs généraux\";i:1;s:6:\"Jeanne\";}'),(31,0,2,0,0,0,'85.27.74.173',1433353006,'LOG_ADMIN_AUTH_SUCCESS',''),(32,0,2,0,0,0,'85.27.74.173',1433420484,'LOG_ADMIN_AUTH_SUCCESS',''),(33,0,2,0,0,0,'85.27.74.173',1433420672,'LOG_FORUM_EDIT','a:1:{i:0;s:24:\"Les Sciences Paranomales\";}'),(34,0,2,0,0,0,'85.27.74.173',1433421262,'LOG_ADMIN_AUTH_SUCCESS',''),(35,0,48,0,0,0,'81.240.237.210',1433421267,'LOG_ADMIN_AUTH_SUCCESS',''),(36,0,2,0,0,0,'85.27.74.173',1433421363,'LOG_FORUM_EDIT','a:1:{i:0;s:15:\"Parapsychologie\";}'),(37,0,48,0,0,0,'81.240.237.210',1433421398,'LOG_FORUM_EDIT','a:1:{i:0;s:15:\"Parapsychologie\";}'),(38,0,2,0,0,0,'85.27.74.173',1433421509,'LOG_FORUM_EDIT','a:1:{i:0;s:24:\"Les Sciences Paranomales\";}'),(39,0,48,0,0,0,'81.240.237.210',1433421510,'LOG_FORUM_EDIT','a:1:{i:0;s:24:\"Les Sciences Paranomales\";}'),(40,0,48,0,0,0,'81.240.237.210',1433421565,'LOG_FORUM_EDIT','a:1:{i:0;s:24:\"Les Sciences Paranomales\";}'),(41,0,48,0,0,0,'81.240.237.210',1433421570,'LOG_FORUM_MOVE_UP','a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;s:15:\"Parapsychologie\";}'),(42,0,48,0,0,0,'81.240.237.210',1433421601,'LOG_FORUM_SYNC','a:1:{i:0;s:24:\"Les Sciences Paranomales\";}'),(43,0,48,0,0,0,'81.240.237.210',1433421625,'LOG_FORUM_EDIT','a:1:{i:0;s:24:\"Les Sciences Paranomales\";}'),(44,0,48,0,0,0,'81.240.237.210',1433421637,'LOG_FORUM_SYNC','a:1:{i:0;s:15:\"Parapsychologie\";}'),(45,0,48,0,0,0,'81.240.237.210',1433421711,'LOG_ACL_ADD_FORUM_LOCAL_F_','a:2:{i:0;s:41:\"Parapsychologie, Les Sciences Paranomales\";i:1;s:319:\"<span class=\"sep\">Invités</span>, <span class=\"sep\">Utilisateurs inscrits</span>, <span class=\"sep\">Utilisateurs COPPA inscrits</span>, <span class=\"sep\">Modérateurs généraux</span>, <span class=\"sep\">Administrateurs</span>, <span class=\"sep\">Robots</span>, <span class=\"sep\">Utilisateurs récemment inscrits</span>\";}'),(46,0,48,0,0,0,'81.240.237.210',1433421750,'LOG_FORUM_EDIT','a:1:{i:0;s:24:\"Les Sciences Paranomales\";}'),(47,0,2,0,0,0,'85.27.74.173',1433425976,'LOG_FORUM_ADD','a:1:{i:0;s:15:\"Charte du forum\";}'),(48,0,2,0,0,0,'85.27.74.173',1433426216,'LOG_FORUM_MOVE_UP','a:2:{i:0;s:15:\"Charte du forum\";i:1;s:15:\"Parapsychologie\";}'),(49,0,2,0,0,0,'85.27.74.173',1433426219,'LOG_FORUM_MOVE_UP','a:2:{i:0;s:15:\"Parapsychologie\";i:1;s:15:\"Charte du forum\";}'),(50,0,2,0,0,0,'85.27.74.173',1433426220,'LOG_FORUM_MOVE_UP','a:2:{i:0;s:15:\"Charte du forum\";i:1;s:15:\"Parapsychologie\";}'),(51,0,2,0,0,0,'85.27.74.173',1433426237,'LOG_FORUM_MOVE_DOWN','a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;s:15:\"Charte du forum\";}'),(52,0,2,0,0,0,'85.27.74.173',1433426275,'LOG_FORUM_EDIT','a:1:{i:0;s:15:\"Charte du forum\";}'),(53,0,2,0,0,0,'85.27.74.173',1433426275,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:15:\"Parapsychologie\";i:1;s:15:\"Charte du forum\";}'),(54,0,2,0,0,0,'85.27.74.173',1433426330,'LOG_FORUM_EDIT','a:1:{i:0;s:24:\"Les Sciences Paranomales\";}'),(55,0,2,0,0,0,'85.27.74.173',1433426330,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:15:\"Charte du forum\";i:1;s:24:\"Les Sciences Paranomales\";}'),(56,0,2,0,0,0,'85.27.74.173',1433426442,'LOG_FORUM_EDIT','a:1:{i:0;s:15:\"Parapsychologie\";}'),(57,0,2,0,0,0,'85.27.74.173',1433426442,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:15:\"Charte du forum\";i:1;s:15:\"Parapsychologie\";}'),(58,0,2,0,0,0,'85.27.74.173',1433426523,'LOG_FORUM_ADD','a:1:{i:0;s:9:\"Tarologie\";}'),(59,0,2,0,0,0,'85.27.74.173',1433426523,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;s:9:\"Tarologie\";}'),(60,0,2,0,0,0,'85.27.74.173',1433426588,'LOG_ACL_ADD_GROUP_GLOBAL_U_','a:1:{i:0;s:40:\"<span class=\"sep\">Administrateurs</span>\";}'),(61,0,2,0,0,0,'85.27.74.173',1433426660,'LOG_ACL_DEL_FORUM_LOCAL_F_','a:2:{i:0;s:69:\"Parapsychologie, Les Sciences Paranomales, Charte du forum, Tarologie\";i:1;s:33:\"<span class=\"sep\">Invités</span>\";}'),(62,0,2,0,0,0,'85.27.74.173',1433426718,'LOG_ACL_ADD_FORUM_LOCAL_F_','a:2:{i:0;s:15:\"Charte du forum\";i:1;s:40:\"<span class=\"sep\">Administrateurs</span>\";}'),(63,0,2,0,0,0,'85.27.74.173',1433427513,'LOG_ACL_ADD_MOD_GLOBAL_M_','a:1:{i:0;s:6:\"Jeanne\";}'),(64,3,1,0,0,50,'85.27.74.173',1433428120,'LOG_USER_ACTIVE_USER',''),(65,0,2,0,0,0,'85.27.74.173',1433428461,'LOG_ADMIN_AUTH_SUCCESS',''),(66,0,2,0,0,0,'85.27.74.173',1433429066,'LOG_ADMIN_AUTH_SUCCESS',''),(67,0,2,0,0,0,'85.27.74.173',1433429122,'LOG_ACL_TRANSFER_PERMISSIONS','a:1:{i:0;s:4:\"doro\";}'),(68,0,2,0,0,0,'85.27.74.173',1433429165,'LOG_ACL_TRANSFER_PERMISSIONS','a:1:{i:0;s:4:\"doro\";}'),(69,0,2,0,0,0,'85.27.74.173',1433429183,'LOG_ACL_RESTORE_PERMISSIONS','a:1:{i:0;s:4:\"doro\";}'),(70,0,2,0,0,0,'85.27.74.173',1433429324,'LOG_ACL_TRANSFER_PERMISSIONS','a:1:{i:0;s:4:\"doro\";}'),(71,0,2,0,0,0,'85.27.74.173',1433429360,'LOG_ACL_RESTORE_PERMISSIONS','a:1:{i:0;s:4:\"doro\";}'),(72,0,2,0,0,0,'85.27.74.173',1433429455,'LOG_ACL_ADD_FORUM_LOCAL_F_','a:2:{i:0;s:15:\"Parapsychologie\";i:1;s:46:\"<span class=\"sep\">Utilisateurs inscrits</span>\";}'),(73,0,2,0,0,0,'85.27.74.173',1433429511,'LOG_ACL_ADD_FORUM_LOCAL_F_','a:2:{i:0;s:15:\"Parapsychologie\";i:1;s:46:\"<span class=\"sep\">Utilisateurs inscrits</span>\";}'),(74,0,2,0,0,0,'85.27.74.173',1433429527,'LOG_ACL_TRANSFER_PERMISSIONS','a:1:{i:0;s:4:\"doro\";}'),(75,0,2,0,0,0,'85.27.74.173',1433429559,'LOG_ACL_RESTORE_PERMISSIONS','a:1:{i:0;s:4:\"doro\";}'),(76,0,2,0,0,0,'85.27.74.173',1433429590,'LOG_FORUM_EDIT','a:1:{i:0;s:9:\"Tarologie\";}'),(77,0,2,0,0,0,'85.27.74.173',1433429590,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:15:\"Parapsychologie\";i:1;s:9:\"Tarologie\";}'),(78,0,2,0,0,0,'85.27.74.173',1433429597,'LOG_ACL_TRANSFER_PERMISSIONS','a:1:{i:0;s:4:\"doro\";}'),(79,0,2,0,0,0,'85.27.74.173',1433429685,'LOG_ACL_RESTORE_PERMISSIONS','a:1:{i:0;s:4:\"doro\";}'),(80,0,2,0,0,0,'85.27.74.173',1433448377,'LOG_ADMIN_AUTH_SUCCESS',''),(81,0,2,0,0,0,'85.27.74.173',1433448489,'LOG_FORUM_ADD','a:1:{i:0;s:12:\"Clairvoyance\";}'),(82,0,2,0,0,0,'85.27.74.173',1433448489,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;s:12:\"Clairvoyance\";}'),(83,0,2,0,0,0,'85.27.74.173',1433448518,'LOG_FORUM_EDIT','a:1:{i:0;s:12:\"Clairvoyance\";}'),(84,0,2,0,0,0,'85.27.74.173',1433448518,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:9:\"Tarologie\";i:1;s:12:\"Clairvoyance\";}'),(85,0,2,0,0,0,'85.27.74.173',1433449474,'LOG_ADMIN_AUTH_SUCCESS',''),(86,0,2,0,0,0,'85.27.74.173',1433449495,'LOG_FORUM_EDIT','a:1:{i:0;s:12:\"Clairvoyance\";}'),(87,0,2,0,0,0,'85.27.74.173',1433449495,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:15:\"Parapsychologie\";i:1;s:12:\"Clairvoyance\";}'),(88,0,2,0,0,0,'85.27.74.173',1433449524,'LOG_FORUM_EDIT','a:1:{i:0;s:12:\"Clairvoyance\";}'),(89,0,48,0,0,0,'81.240.237.210',1433449830,'LOG_ADMIN_AUTH_SUCCESS',''),(90,0,48,0,0,0,'81.240.237.210',1433449953,'LOG_ADMIN_AUTH_SUCCESS',''),(91,3,48,0,0,50,'81.240.237.210',1433449991,'LOG_USER_UPDATE_NAME','a:2:{i:0;s:4:\"doro\";i:1;s:4:\"Doro\";}'),(92,0,48,0,0,0,'81.240.237.210',1433449991,'LOG_USER_USER_UPDATE','a:1:{i:0;s:4:\"Doro\";}'),(93,0,48,0,0,0,'81.240.237.210',1433453211,'LOG_EXT_ENABLE','a:1:{i:0;s:15:\"rmcgirr83/elonw\";}'),(94,3,1,0,0,51,'85.27.74.173',1433600888,'LOG_USER_ACTIVE_USER',''),(95,0,48,0,0,0,'81.240.237.210',1433604301,'LOG_ADMIN_AUTH_SUCCESS',''),(96,0,48,0,0,0,'81.240.237.210',1433604307,'LOG_PURGE_CACHE',''),(97,0,48,0,0,0,'91.178.207.149',1433671244,'LOG_ADMIN_AUTH_SUCCESS',''),(98,0,48,0,0,0,'91.178.207.149',1433843753,'LOG_ADMIN_AUTH_SUCCESS',''),(99,0,2,0,0,0,'85.27.74.173',1433851961,'LOG_ADMIN_AUTH_SUCCESS',''),(100,0,2,0,0,0,'85.27.74.173',1433852134,'LOG_M_ROLE_EDIT','a:1:{i:0;s:20:\"Modérateur standard\";}'),(101,0,48,0,0,0,'91.178.207.149',1434196923,'LOG_ADMIN_AUTH_SUCCESS',''),(102,0,48,0,0,0,'91.178.207.149',1434197013,'LOG_PURGE_CACHE',''),(103,0,48,0,0,0,'91.177.136.56',1436202836,'LOG_ADMIN_AUTH_SUCCESS',''),(104,0,48,0,0,0,'91.177.136.56',1436204350,'LOG_ADMIN_AUTH_SUCCESS',''),(105,0,48,0,0,0,'91.177.136.56',1436374768,'LOG_ADMIN_AUTH_SUCCESS',''),(106,3,1,0,0,52,'212.71.14.219',1438051115,'LOG_USER_ACTIVE_USER',''),(107,3,1,0,0,53,'85.26.2.106',1438266005,'LOG_USER_ACTIVE_USER',''),(108,0,48,0,0,0,'80.200.19.209',1438897926,'LOG_ADMIN_AUTH_SUCCESS',''),(109,0,2,0,0,0,'85.27.74.173',1438955765,'LOG_ADMIN_AUTH_SUCCESS',''),(110,0,2,0,0,0,'85.27.74.173',1438955842,'LOG_FORUM_ADD','a:1:{i:0;s:18:\"Le petit Lenormand\";}'),(111,0,2,0,0,0,'85.27.74.173',1438955842,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;s:18:\"Le petit Lenormand\";}'),(112,0,2,0,0,0,'85.27.74.173',1438958803,'LOG_ACL_ADD_FORUM_LOCAL_F_','a:2:{i:0;s:18:\"Le petit Lenormand\";i:1;s:149:\"<span class=\"sep\">Modérateurs généraux</span>, <span class=\"sep\">Administrateurs</span>, <span class=\"sep\">Utilisateurs récemment inscrits</span>\";}'),(113,1,2,3,2,0,'85.27.74.173',1439035392,'LOG_LOCK','a:1:{i:0;s:10:\"Réglement\";}'),(114,0,2,0,0,0,'85.27.74.173',1439035472,'LOG_ADMIN_AUTH_SUCCESS',''),(115,0,2,0,0,0,'85.27.74.173',1439036902,'LOG_CONFIG_SETTINGS',''),(116,0,2,0,0,0,'85.27.74.173',1439037719,'LOG_CONFIG_SETTINGS',''),(117,0,2,0,0,0,'85.27.74.173',1439038006,'LOG_CONFIG_SETTINGS',''),(118,0,48,0,0,0,'80.200.19.209',1439038599,'LOG_ADMIN_AUTH_SUCCESS',''),(119,3,48,0,0,49,'80.200.19.209',1439038619,'LOG_USER_UPDATE_NAME','a:2:{i:0;s:6:\"Jeanne\";i:1;s:7:\"Pauline\";}'),(120,0,48,0,0,0,'80.200.19.209',1439038619,'LOG_USER_USER_UPDATE','a:1:{i:0;s:7:\"Pauline\";}'),(121,0,2,0,0,0,'85.27.74.173',1439038686,'LOG_ADMIN_AUTH_SUCCESS',''),(122,0,48,0,0,0,'80.200.19.209',1439042534,'LOG_ADMIN_AUTH_SUCCESS',''),(123,0,48,0,0,0,'80.200.19.209',1439120276,'LOG_ADMIN_AUTH_SUCCESS',''),(124,3,48,0,0,50,'80.200.19.209',1439120289,'LOG_USER_NEW_PASSWORD','a:1:{i:0;s:4:\"Doro\";}'),(125,0,48,0,0,0,'80.200.19.209',1439120289,'LOG_USER_USER_UPDATE','a:1:{i:0;s:4:\"Doro\";}'),(126,0,48,0,0,0,'80.200.19.209',1439120334,'LOG_USER_REACTIVATE','a:1:{i:0;s:4:\"Doro\";}'),(127,3,48,0,0,50,'80.200.19.209',1439120334,'LOG_USER_REACTIVATE_USER',''),(128,0,2,0,0,0,'85.27.74.173',1439120364,'LOG_ADMIN_AUTH_SUCCESS',''),(129,0,48,0,0,0,'80.200.19.209',1439120380,'LOG_ACL_TRANSFER_PERMISSIONS','a:1:{i:0;s:4:\"Doro\";}'),(130,0,48,0,0,0,'80.200.19.209',1439120416,'LOG_ACL_RESTORE_PERMISSIONS','a:1:{i:0;s:4:\"Doro\";}'),(131,0,48,0,0,0,'80.200.19.209',1439120459,'LOG_USER_ACTIVE','a:1:{i:0;s:4:\"Doro\";}'),(132,3,48,0,0,50,'80.200.19.209',1439120459,'LOG_USER_ACTIVE_USER',''),(133,1,2,6,1,0,'85.27.74.173',1439121556,'LOG_LOCK','a:1:{i:0;s:20:\"Explication du forum\";}'),(134,0,48,0,0,0,'80.200.19.209',1439140386,'LOG_ADMIN_AUTH_SUCCESS',''),(135,0,2,0,0,0,'85.27.74.173',1439145124,'LOG_ADMIN_AUTH_FAIL',''),(136,0,2,0,0,0,'85.27.74.173',1439145131,'LOG_ADMIN_AUTH_SUCCESS',''),(137,0,48,0,0,0,'80.200.19.209',1439156454,'LOG_ADMIN_AUTH_SUCCESS',''),(138,0,48,0,0,0,'80.200.19.209',1439156642,'LOG_CONFIG_SERVER',''),(139,0,2,0,0,0,'85.27.74.173',1439156687,'LOG_ADMIN_AUTH_SUCCESS',''),(140,0,2,0,0,0,'85.27.74.173',1439156715,'LOG_DB_BACKUP',''),(141,0,48,0,0,0,'80.200.19.209',1439156742,'LOG_DB_BACKUP',''),(142,0,48,0,0,0,'80.200.19.209',1439156752,'LOG_DB_BACKUP',''),(143,0,2,0,0,0,'85.27.74.173',1439156915,'LOG_DB_BACKUP',''),(144,0,2,0,0,0,'85.27.74.173',1439157067,'LOG_DB_BACKUP',''),(145,0,2,0,0,0,'85.27.74.173',1439157125,'LOG_DB_BACKUP',''),(146,0,2,0,0,0,'85.27.74.173',1439157313,'LOG_DB_BACKUP',''),(147,0,48,0,0,0,'80.200.19.209',1439159707,'LOG_CONFIG_EMAIL',''),(148,0,2,0,0,0,'85.27.74.173',1439208843,'LOG_ADMIN_AUTH_SUCCESS',''),(149,0,2,0,0,0,'85.27.74.173',1439208902,'LOG_FORUM_ADD','a:1:{i:0;s:18:\"Le bistrot du coin\";}'),(150,0,2,0,0,0,'85.27.74.173',1439208902,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le petit Lenormand\";i:1;s:18:\"Le bistrot du coin\";}'),(151,0,2,0,0,0,'85.27.74.173',1439209592,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Le bistrot du coin\";}'),(152,0,2,0,0,0,'85.27.74.173',1439209644,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Le bistrot du coin\";}'),(153,0,2,0,0,0,'85.27.74.173',1439209658,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Le bistrot du coin\";}'),(154,0,2,0,0,0,'85.27.74.173',1439209686,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Le bistrot du coin\";}'),(155,0,48,0,0,0,'80.200.19.209',1439209760,'LOG_ADMIN_AUTH_SUCCESS',''),(156,0,48,0,0,0,'80.200.19.209',1439209854,'LOG_FORUM_ADD','a:1:{i:0;s:32:\"Autour des Sciences Paranormales\";}'),(157,0,48,0,0,0,'80.200.19.209',1439209854,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le bistrot du coin\";i:1;s:32:\"Autour des Sciences Paranormales\";}'),(158,0,48,0,0,0,'80.200.19.209',1439209881,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Le bistrot du coin\";}'),(159,0,48,0,0,0,'80.200.19.209',1439211469,'LOG_PURGE_CACHE',''),(160,0,2,0,0,0,'85.27.74.173',1439212664,'LOG_FORUM_DEL_FORUMS','a:1:{i:0;s:32:\"Autour des Sciences Paranormales\";}'),(161,0,2,0,0,0,'85.27.74.173',1439212710,'LOG_FORUM_ADD','a:1:{i:0;s:18:\"Le bistrot du coin\";}'),(162,0,2,0,0,0,'85.27.74.173',1439212710,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le petit Lenormand\";i:1;s:18:\"Le bistrot du coin\";}'),(163,0,2,0,0,0,'85.27.74.173',1439212760,'LOG_FORUM_DEL_POSTS','a:1:{i:0;s:18:\"Le bistrot du coin\";}'),(164,0,2,0,0,0,'85.27.74.173',1439212808,'LOG_FORUM_ADD','a:1:{i:0;s:24:\"Détente et bonne humeur\";}'),(165,0,2,0,0,0,'85.27.74.173',1439212808,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le petit Lenormand\";i:1;s:24:\"Détente et bonne humeur\";}'),(166,0,2,0,0,0,'85.27.74.173',1439212858,'LOG_FORUM_ADD','a:1:{i:0;s:18:\"Le bistrot du coin\";}'),(167,0,2,0,0,0,'85.27.74.173',1439212858,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:24:\"Détente et bonne humeur\";i:1;s:18:\"Le bistrot du coin\";}'),(168,0,2,0,0,0,'85.27.74.173',1439212904,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Le bistrot du coin\";}'),(169,0,2,0,0,0,'85.27.74.173',1439212937,'LOG_FORUM_EDIT','a:1:{i:0;s:24:\"Détente et bonne humeur\";}'),(170,0,2,0,0,0,'85.27.74.173',1439212937,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le bistrot du coin\";i:1;s:24:\"Détente et bonne humeur\";}'),(171,0,2,0,0,0,'85.27.74.173',1439213015,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Le bistrot du coin\";}'),(172,0,2,0,0,0,'85.27.74.173',1439213144,'LOG_FORUM_DEL_POSTS_FORUMS','a:1:{i:0;s:24:\"Détente et bonne humeur\";}'),(173,0,2,0,0,0,'85.27.74.173',1439213184,'LOG_FORUM_ADD','a:1:{i:0;s:24:\"Détente et bonne humeur\";}'),(174,0,2,0,0,0,'85.27.74.173',1439213184,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le petit Lenormand\";i:1;s:24:\"Détente et bonne humeur\";}'),(175,0,2,0,0,0,'85.27.74.173',1439213238,'LOG_FORUM_EDIT','a:1:{i:0;s:24:\"Détente et bonne humeur\";}'),(176,0,2,0,0,0,'85.27.74.173',1439213238,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le petit Lenormand\";i:1;s:24:\"Détente et bonne humeur\";}'),(177,0,2,0,0,0,'85.27.74.173',1439213292,'LOG_FORUM_ADD','a:1:{i:0;s:18:\"Le bistrot du coin\";}'),(178,0,2,0,0,0,'85.27.74.173',1439213292,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:24:\"Détente et bonne humeur\";i:1;s:18:\"Le bistrot du coin\";}'),(179,0,2,0,0,0,'85.27.74.173',1439213493,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Le bistrot du coin\";}'),(180,0,2,0,0,0,'85.27.74.173',1439213493,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:24:\"Détente et bonne humeur\";i:1;s:18:\"Le bistrot du coin\";}'),(181,0,2,0,0,0,'85.27.74.173',1439217673,'LOG_ADMIN_AUTH_SUCCESS',''),(182,0,2,0,0,0,'85.27.74.173',1439218218,'LOG_FORUM_ADD','a:1:{i:0;s:13:\"Radiesthésie\";}'),(183,0,2,0,0,0,'85.27.74.173',1439218218,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;s:13:\"Radiesthésie\";}'),(184,0,2,0,0,0,'85.27.74.173',1439218270,'LOG_FORUM_EDIT','a:1:{i:0;s:13:\"Radiesthésie\";}'),(185,0,2,0,0,0,'85.27.74.173',1439218270,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le petit Lenormand\";i:1;s:13:\"Radiesthésie\";}'),(186,0,2,0,0,0,'85.27.74.173',1439218303,'LOG_FORUM_EDIT','a:1:{i:0;s:13:\"Radiesthésie\";}'),(187,0,2,0,0,0,'85.27.74.173',1439218377,'LOG_FORUM_ADD','a:1:{i:0;s:17:\"La Lithothérapie\";}'),(188,0,2,0,0,0,'85.27.74.173',1439218377,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:13:\"Radiesthésie\";i:1;s:17:\"La Lithothérapie\";}'),(189,0,2,0,0,0,'85.27.74.173',1439218395,'LOG_FORUM_EDIT','a:1:{i:0;s:24:\"Les Sciences Paranomales\";}'),(190,0,2,0,0,0,'85.27.74.173',1439219285,'LOG_FORUM_ADD','a:1:{i:0;s:8:\"Le Reiki\";}'),(191,0,2,0,0,0,'85.27.74.173',1439219285,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:24:\"Les Sciences Paranomales\";i:1;s:8:\"Le Reiki\";}'),(192,0,2,0,0,0,'85.27.74.173',1439219371,'LOG_FORUM_EDIT','a:1:{i:0;s:22:\"Tarologie- Esotérisme\";}'),(193,0,2,0,0,0,'85.27.74.173',1439219401,'LOG_FORUM_EDIT','a:1:{i:0;s:23:\"Tarologie - Esotérisme\";}'),(194,0,48,0,0,0,'80.200.19.209',1439228121,'LOG_ADMIN_AUTH_SUCCESS',''),(195,0,2,0,0,0,'85.27.74.173',1439241421,'LOG_ADMIN_AUTH_SUCCESS',''),(196,0,2,0,0,0,'85.27.74.173',1439241738,'LOG_ACL_ADD_FORUM_LOCAL_F_','a:2:{i:0;s:207:\"Parapsychologie, Les Sciences Paranomales, Charte du forum, Tarologie - Esotérisme, Clairvoyance, Le petit Lenormand, Détente et bonne humeur, Le bistrot du coin, Radiesthésie, La Lithothérapie, Le Reiki\";i:1;s:33:\"<span class=\"sep\">Invités</span>\";}'),(197,0,2,0,0,0,'85.27.74.173',1439242360,'LOG_ADMIN_AUTH_SUCCESS',''),(198,0,2,0,0,0,'85.27.74.173',1439421074,'LOG_ADMIN_AUTH_SUCCESS',''),(199,0,2,0,0,0,'85.27.74.173',1439421124,'LOG_FORUM_ADD','a:1:{i:0;s:17:\"Phrases positives\";}'),(200,0,2,0,0,0,'85.27.74.173',1439421124,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:24:\"Détente et bonne humeur\";i:1;s:17:\"Phrases positives\";}'),(201,0,2,0,0,0,'85.27.74.173',1439421457,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Pensées positives\";}'),(202,0,2,0,0,0,'85.27.74.173',1439421499,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Pensées positives\";}'),(203,0,2,0,0,0,'85.27.74.173',1439421526,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Pensées positives\";}'),(204,0,2,0,0,0,'85.27.74.173',1439421526,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le bistrot du coin\";i:1;s:18:\"Pensées positives\";}'),(205,0,2,0,0,0,'85.27.74.173',1439421598,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Pensées positives\";}'),(206,0,2,0,0,0,'85.27.74.173',1439421598,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le bistrot du coin\";i:1;s:18:\"Pensées positives\";}'),(207,0,2,0,0,0,'85.27.74.173',1439421656,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Pensées positives\";}'),(208,0,2,0,0,0,'85.27.74.173',1439421656,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le bistrot du coin\";i:1;s:18:\"Pensées positives\";}'),(209,0,2,0,0,0,'85.27.74.173',1439421720,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Pensées positives\";}'),(210,0,2,0,0,0,'85.27.74.173',1439421720,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le bistrot du coin\";i:1;s:18:\"Pensées positives\";}'),(211,0,2,0,0,0,'85.27.74.173',1439421883,'LOG_FORUM_SYNC','a:1:{i:0;s:15:\"Charte du forum\";}'),(212,1,2,3,4,0,'85.27.74.173',1439422058,'LOG_SOFTDELETE_TOPIC','a:3:{i:0;s:17:\"Phrases positives\";i:1;s:9:\"Alexandra\";i:2;s:6:\"Erreur\";}'),(213,0,2,0,0,0,'85.27.74.173',1439422084,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Pensées positives\";}'),(214,0,2,0,0,0,'85.27.74.173',1439422084,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le bistrot du coin\";i:1;s:18:\"Pensées positives\";}'),(215,0,2,0,0,0,'85.27.74.173',1439422144,'LOG_FORUM_ADD','a:1:{i:0;s:17:\"Phrases positives\";}'),(216,0,2,0,0,0,'85.27.74.173',1439422144,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Pensées positives\";i:1;s:17:\"Phrases positives\";}'),(217,1,2,3,4,0,'85.27.74.173',1439422526,'LOG_DELETE_POST','a:2:{i:0;s:17:\"Phrases positives\";i:1;s:9:\"Alexandra\";}'),(218,0,2,0,0,0,'85.27.74.173',1439422572,'LOG_FORUM_EDIT','a:1:{i:0;s:17:\"Phrases positives\";}'),(219,0,2,0,0,0,'85.27.74.173',1439422614,'LOG_FORUM_EDIT','a:1:{i:0;s:17:\"Phrases positives\";}'),(220,0,2,0,0,0,'85.27.74.173',1439422663,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Pensées positives\";}'),(221,0,2,0,0,0,'85.27.74.173',1439422663,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le bistrot du coin\";i:1;s:18:\"Pensées positives\";}'),(222,0,2,0,0,0,'85.27.74.173',1439422754,'LOG_FORUM_EDIT','a:1:{i:0;s:17:\"Phrases positives\";}'),(223,0,2,0,0,0,'85.27.74.173',1439422886,'LOG_FORUM_EDIT','a:1:{i:0;s:17:\"Phrases positives\";}'),(224,0,2,0,0,0,'85.27.74.173',1439422886,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le bistrot du coin\";i:1;s:17:\"Phrases positives\";}'),(225,0,2,0,0,0,'85.27.74.173',1439422947,'LOG_FORUM_EDIT','a:1:{i:0;s:17:\"Phrases positives\";}'),(226,0,2,0,0,0,'85.27.74.173',1439422973,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Pensées positives\";}'),(227,0,2,0,0,0,'85.27.74.173',1439423026,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Pensées positives\";}'),(228,0,2,0,0,0,'85.27.74.173',1439423026,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Le bistrot du coin\";i:1;s:18:\"Pensées positives\";}'),(229,0,2,0,0,0,'85.27.74.173',1439423078,'LOG_FORUM_EDIT','a:1:{i:0;s:18:\"Pensées positives\";}'),(230,0,2,0,0,0,'85.27.74.173',1439423091,'LOG_FORUM_EDIT','a:1:{i:0;s:17:\"Phrases positives\";}'),(231,0,2,0,0,0,'85.27.74.173',1439455544,'LOG_ADMIN_AUTH_FAIL',''),(232,0,2,0,0,0,'85.27.74.173',1439455551,'LOG_ADMIN_AUTH_SUCCESS',''),(233,0,2,0,0,0,'85.27.74.173',1439455581,'LOG_FORUM_ADD','a:1:{i:0;s:14:\"Humeur du jour\";}'),(234,0,2,0,0,0,'85.27.74.173',1439455581,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:18:\"Pensées positives\";i:1;s:14:\"Humeur du jour\";}'),(235,0,2,0,0,0,'85.27.74.173',1439470247,'LOG_ADMIN_AUTH_SUCCESS',''),(236,0,2,0,0,0,'85.27.74.173',1439470378,'LOG_FORUM_ADD','a:1:{i:0;s:22:\"Conditions générales\";}'),(237,0,2,0,0,0,'85.27.74.173',1439470437,'LOG_FORUM_EDIT','a:1:{i:0;s:22:\"Conditions générales\";}'),(238,0,2,0,0,0,'85.27.74.173',1439470498,'LOG_FORUM_EDIT','a:1:{i:0;s:22:\"Conditions générales\";}'),(239,0,2,0,0,0,'85.27.74.173',1439470498,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:15:\"Charte du forum\";i:1;s:22:\"Conditions générales\";}'),(240,0,2,0,0,0,'85.27.74.173',1439470565,'LOG_FORUM_EDIT','a:1:{i:0;s:22:\"Conditions générales\";}'),(241,0,2,0,0,0,'85.27.74.173',1439470565,'LOG_FORUM_COPIED_PERMISSIONS','a:2:{i:0;s:15:\"Charte du forum\";i:1;s:22:\"Conditions générales\";}'),(242,0,2,0,0,0,'85.27.74.173',1439471769,'LOG_FORUM_EDIT','a:1:{i:0;s:22:\"Conditions générales\";}'),(243,1,2,3,8,0,'85.27.74.173',1439471806,'LOG_LOCK','a:1:{i:0;s:26:\"Les conditions générales\";}'),(244,0,48,0,0,0,'80.200.19.209',1439474416,'LOG_ADMIN_AUTH_SUCCESS',''),(245,0,2,0,0,0,'85.27.74.173',1439627630,'LOG_ADMIN_AUTH_FAIL',''),(246,0,2,0,0,0,'85.27.74.173',1439627637,'LOG_ADMIN_AUTH_SUCCESS',''),(247,0,48,0,0,0,'80.200.23.231',1439634968,'LOG_ADMIN_AUTH_SUCCESS',''),(248,0,48,0,0,0,'80.200.23.231',1439634987,'LOG_CONFIG_SETTINGS',''),(249,0,2,0,0,0,'85.27.74.173',1439651239,'LOG_ADMIN_AUTH_SUCCESS',''),(250,0,2,0,0,0,'85.27.74.173',1439723096,'LOG_ADMIN_AUTH_SUCCESS',''),(251,0,48,0,0,0,'91.178.135.63',1439903438,'LOG_ADMIN_AUTH_SUCCESS','');
/*!40000 ALTER TABLE `phpbb_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_login_attempts`
--

DROP TABLE IF EXISTS `phpbb_login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  KEY `att_ip` (`attempt_ip`,`attempt_time`),
  KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  KEY `att_time` (`attempt_time`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_login_attempts`
--

LOCK TABLES `phpbb_login_attempts` WRITE;
/*!40000 ALTER TABLE `phpbb_login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_migrations`
--

DROP TABLE IF EXISTS `phpbb_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_migrations` (
  `migration_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `migration_depends_on` text COLLATE utf8_bin NOT NULL,
  `migration_schema_done` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `migration_data_done` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `migration_data_state` text COLLATE utf8_bin NOT NULL,
  `migration_start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `migration_end_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`migration_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_migrations`
--

LOCK TABLES `phpbb_migrations` WRITE;
/*!40000 ALTER TABLE `phpbb_migrations` DISABLE KEYS */;
INSERT INTO `phpbb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0','a:0:{}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5','a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4','a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module','a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\allow_cdn','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\alpha1','a:18:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module\";i:3;s:39:\"\\phpbb\\db\\migration\\data\\v310\\allow_cdn\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";i:5;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";i:6;s:40:\"\\phpbb\\db\\migration\\data\\v310\\boardindex\";i:7;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";i:8;s:45:\"\\phpbb\\db\\migration\\data\\v310\\forgot_password\";i:9;s:41:\"\\phpbb\\db\\migration\\data\\v310\\mod_rewrite\";i:10;s:49:\"\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop\";i:11;s:40:\"\\phpbb\\db\\migration\\data\\v310\\namespaces\";i:12;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";i:13;s:60:\"\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert\";i:14;s:38:\"\\phpbb\\db\\migration\\data\\v310\\plupload\";i:15;s:51:\"\\phpbb\\db\\migration\\data\\v310\\signature_module_auth\";i:16;s:52:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules\";i:17;s:38:\"\\phpbb\\db\\migration\\data\\v310\\teampage\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\alpha2','a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\alpha3','a:4:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\avatar_types\";i:2;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";i:3;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth','a:0:{}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2','a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\avatar_types','a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\avatars','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\beta1','a:7:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";i:2;s:52:\"\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop\";i:3;s:63:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";i:5;s:54:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\beta2','a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";i:1;s:52:\"\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module\";i:2;s:59:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\beta3','a:6:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";i:1;s:50:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\board_contact_name\";i:3;s:44:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update2\";i:4;s:50:\"\\phpbb\\db\\migration\\data\\v310\\live_searches_config\";i:5;s:49:\"\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\beta4','a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta3\";i:1;s:69:\"\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable\";i:2;s:58:\"\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\board_contact_name','a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\boardindex','a:0:{}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\bot_update','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\captcha_plugins','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\config_db_text','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module','a:0:{}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\contact_admin_form','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\dev','a:5:{i:0;s:40:\"\\phpbb\\db\\migration\\data\\v310\\extensions\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p2\";i:2;s:41:\"\\phpbb\\db\\migration\\data\\v310\\timezone_p2\";i:3;s:52:\"\\phpbb\\db\\migration\\data\\v310\\reported_posts_display\";i:4;s:46:\"\\phpbb\\db\\migration\\data\\v310\\migrations_table\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\extensions','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\forgot_password','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\gold','a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";i:1;s:40:\"\\phpbb\\db\\migration\\data\\v310\\bot_update\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\jquery_update','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\jquery_update2','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\live_searches_config','a:0:{}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\migrations_table','a:0:{}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\mod_rewrite','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\namespaces','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert','a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\notifications','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\notifications_cron','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\passwords','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1','a:1:{i:0;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2','a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\passwords_p2','a:1:{i:0;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\plupload','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol','a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup','a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings','a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup','a:2:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";i:1;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field','a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook','a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus','a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq','a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup','a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\profilefield_interests','a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_location','a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup','a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation','a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist','a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_skype','a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter','a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_types','a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_website','a:2:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup','a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm','a:1:{i:0;s:58:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup','a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo','a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup','a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube','a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\rc1','a:9:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta4\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:3;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook\";i:5;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_skype\";i:7;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter\";i:8;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\rc2','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc1\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\rc3','a:5:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\captcha_plugins\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes\";i:3;s:41:\"\\phpbb\\db\\migration\\data\\v310\\search_type\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\topic_sort_username\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\rc4','a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";i:1;s:57:\"\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\rc5','a:3:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";i:1;s:66:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\rc6','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc5\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes','a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\reported_posts_display','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\search_type','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\signature_module_auth','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert','a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2','a:1:{i:0;s:53:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules','a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p2\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\softdelete_p1','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\softdelete_p2','a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p1\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\style_update_p1','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v310\\style_update_p2','a:1:{i:0;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p1\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\teampage','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\timezone','a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\timezone_p2','a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v310\\timezone\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\topic_sort_username','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253195,1433253195),('\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}',1,1,'',1433253197,1433253197),('\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}',1,1,'',1433253197,1433253197),('\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}',1,1,'',1433253197,1433253197),('\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}',1,1,'',1433253197,1433253197),('\\phpbb\\db\\migration\\data\\v31x\\style_update','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";}',1,1,'',1433253197,1433253197),('\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v31x\\v311','a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v31x\\style_update\";}',1,1,'',1433253197,1433253197),('\\phpbb\\db\\migration\\data\\v31x\\v312','a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v312rc1\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v31x\\v312rc1','a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";i:1;s:49:\"\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global\";}',1,1,'',1433253197,1433253197),('\\phpbb\\db\\migration\\data\\v31x\\v313','a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc2\";}',1,1,'',1433253197,1433253197),('\\phpbb\\db\\migration\\data\\v31x\\v313rc1','a:5:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic\";i:2;s:71:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha\";i:3;s:59:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url\";i:4;s:60:\"\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn\";}',1,1,'',1433253197,1433253197),('\\phpbb\\db\\migration\\data\\v31x\\v313rc2','a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc1\";}',1,1,'',1433253197,1433253197),('\\phpbb\\db\\migration\\data\\v31x\\v314','a:2:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc2\";}',1,1,'',1433253196,1433253196),('\\phpbb\\db\\migration\\data\\v31x\\v314rc1','a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v313\";}',1,1,'',1433253197,1433253197),('\\phpbb\\db\\migration\\data\\v31x\\v314rc2','a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc1\";}',1,1,'',1433253196,1433253196),('\\rmcgirr83\\elonw\\migrations\\v1x\\release_1_0_0_data','a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}',1,1,'',1433453211,1433453211),('\\rmcgirr83\\elonw\\migrations\\v1x\\release_1_0_0_schema','a:0:{}',1,1,'',1433453210,1433453211);
/*!40000 ALTER TABLE `phpbb_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_moderator_cache`
--

DROP TABLE IF EXISTS `phpbb_moderator_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `disp_idx` (`display_on_index`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_moderator_cache`
--

LOCK TABLES `phpbb_moderator_cache` WRITE;
/*!40000 ALTER TABLE `phpbb_moderator_cache` DISABLE KEYS */;
INSERT INTO `phpbb_moderator_cache` VALUES (0,49,'Pauline',0,'',1);
/*!40000 ALTER TABLE `phpbb_moderator_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_modules`
--

DROP TABLE IF EXISTS `phpbb_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `module_enabled` (`module_enabled`),
  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_modules`
--

LOCK TABLES `phpbb_modules` WRITE;
/*!40000 ALTER TABLE `phpbb_modules` DISABLE KEYS */;
INSERT INTO `phpbb_modules` VALUES (1,1,1,'','acp',0,1,66,'ACP_CAT_GENERAL','',''),(2,1,1,'','acp',1,4,17,'ACP_QUICK_ACCESS','',''),(3,1,1,'','acp',1,18,43,'ACP_BOARD_CONFIGURATION','',''),(4,1,1,'','acp',1,44,51,'ACP_CLIENT_COMMUNICATION','',''),(5,1,1,'','acp',1,52,65,'ACP_SERVER_CONFIGURATION','',''),(6,1,1,'','acp',0,67,86,'ACP_CAT_FORUMS','',''),(7,1,1,'','acp',6,68,73,'ACP_MANAGE_FORUMS','',''),(8,1,1,'','acp',6,74,85,'ACP_FORUM_BASED_PERMISSIONS','',''),(9,1,1,'','acp',0,87,114,'ACP_CAT_POSTING','',''),(10,1,1,'','acp',9,88,101,'ACP_MESSAGES','',''),(11,1,1,'','acp',9,102,113,'ACP_ATTACHMENTS','',''),(12,1,1,'','acp',0,115,172,'ACP_CAT_USERGROUP','',''),(13,1,1,'','acp',12,116,151,'ACP_CAT_USERS','',''),(14,1,1,'','acp',12,152,161,'ACP_GROUPS','',''),(15,1,1,'','acp',12,162,171,'ACP_USER_SECURITY','',''),(16,1,1,'','acp',0,173,222,'ACP_CAT_PERMISSIONS','',''),(17,1,1,'','acp',16,176,185,'ACP_GLOBAL_PERMISSIONS','',''),(18,1,1,'','acp',16,186,197,'ACP_FORUM_BASED_PERMISSIONS','',''),(19,1,1,'','acp',16,198,207,'ACP_PERMISSION_ROLES','',''),(20,1,1,'','acp',16,208,221,'ACP_PERMISSION_MASKS','',''),(21,1,1,'','acp',0,223,238,'ACP_CAT_CUSTOMISE','',''),(22,1,1,'','acp',21,228,233,'ACP_STYLE_MANAGEMENT','',''),(23,1,1,'','acp',21,224,227,'ACP_EXTENSION_MANAGEMENT','',''),(24,1,1,'','acp',21,234,237,'ACP_LANGUAGE','',''),(25,1,1,'','acp',0,239,258,'ACP_CAT_MAINTENANCE','',''),(26,1,1,'','acp',25,240,249,'ACP_FORUM_LOGS','',''),(27,1,1,'','acp',25,250,257,'ACP_CAT_DATABASE','',''),(28,1,1,'','acp',0,259,282,'ACP_CAT_SYSTEM','',''),(29,1,1,'','acp',28,260,263,'ACP_AUTOMATION','',''),(30,1,1,'','acp',28,264,273,'ACP_GENERAL_TASKS','',''),(31,1,1,'','acp',28,274,281,'ACP_MODULE_MANAGEMENT','',''),(32,1,1,'','acp',0,283,284,'ACP_CAT_DOT_MODS','',''),(33,1,1,'acp_attachments','acp',3,19,20,'ACP_ATTACHMENT_SETTINGS','attach','acl_a_attach'),(34,1,1,'acp_attachments','acp',11,103,104,'ACP_ATTACHMENT_SETTINGS','attach','acl_a_attach'),(35,1,1,'acp_attachments','acp',11,105,106,'ACP_MANAGE_EXTENSIONS','extensions','acl_a_attach'),(36,1,1,'acp_attachments','acp',11,107,108,'ACP_EXTENSION_GROUPS','ext_groups','acl_a_attach'),(37,1,1,'acp_attachments','acp',11,109,110,'ACP_ORPHAN_ATTACHMENTS','orphan','acl_a_attach'),(38,1,1,'acp_attachments','acp',11,111,112,'ACP_MANAGE_ATTACHMENTS','manage','acl_a_attach'),(39,1,1,'acp_ban','acp',15,163,164,'ACP_BAN_EMAILS','email','acl_a_ban'),(40,1,1,'acp_ban','acp',15,165,166,'ACP_BAN_IPS','ip','acl_a_ban'),(41,1,1,'acp_ban','acp',15,167,168,'ACP_BAN_USERNAMES','user','acl_a_ban'),(42,1,1,'acp_bbcodes','acp',10,89,90,'ACP_BBCODES','bbcodes','acl_a_bbcode'),(43,1,1,'acp_board','acp',3,21,22,'ACP_BOARD_SETTINGS','settings','acl_a_board'),(44,1,1,'acp_board','acp',3,23,24,'ACP_BOARD_FEATURES','features','acl_a_board'),(45,1,1,'acp_board','acp',3,25,26,'ACP_AVATAR_SETTINGS','avatar','acl_a_board'),(46,1,1,'acp_board','acp',3,27,28,'ACP_MESSAGE_SETTINGS','message','acl_a_board'),(47,1,1,'acp_board','acp',10,91,92,'ACP_MESSAGE_SETTINGS','message','acl_a_board'),(48,1,1,'acp_board','acp',3,29,30,'ACP_POST_SETTINGS','post','acl_a_board'),(49,1,1,'acp_board','acp',10,93,94,'ACP_POST_SETTINGS','post','acl_a_board'),(50,1,1,'acp_board','acp',3,31,32,'ACP_SIGNATURE_SETTINGS','signature','acl_a_board'),(51,1,1,'acp_board','acp',3,33,34,'ACP_FEED_SETTINGS','feed','acl_a_board'),(52,1,1,'acp_board','acp',3,35,36,'ACP_REGISTER_SETTINGS','registration','acl_a_board'),(53,1,1,'acp_board','acp',4,45,46,'ACP_AUTH_SETTINGS','auth','acl_a_server'),(54,1,1,'acp_board','acp',4,47,48,'ACP_EMAIL_SETTINGS','email','acl_a_server'),(55,1,1,'acp_board','acp',5,53,54,'ACP_COOKIE_SETTINGS','cookie','acl_a_server'),(56,1,1,'acp_board','acp',5,55,56,'ACP_SERVER_SETTINGS','server','acl_a_server'),(57,1,1,'acp_board','acp',5,57,58,'ACP_SECURITY_SETTINGS','security','acl_a_server'),(58,1,1,'acp_board','acp',5,59,60,'ACP_LOAD_SETTINGS','load','acl_a_server'),(59,1,1,'acp_bots','acp',30,265,266,'ACP_BOTS','bots','acl_a_bots'),(60,1,1,'acp_captcha','acp',3,37,38,'ACP_VC_SETTINGS','visual','acl_a_board'),(61,1,0,'acp_captcha','acp',3,39,40,'ACP_VC_CAPTCHA_DISPLAY','img','acl_a_board'),(62,1,1,'acp_contact','acp',3,41,42,'ACP_CONTACT_SETTINGS','contact','acl_a_board'),(63,1,1,'acp_database','acp',27,251,252,'ACP_BACKUP','backup','acl_a_backup'),(64,1,1,'acp_database','acp',27,253,254,'ACP_RESTORE','restore','acl_a_backup'),(65,1,1,'acp_disallow','acp',15,169,170,'ACP_DISALLOW_USERNAMES','usernames','acl_a_names'),(66,1,1,'acp_email','acp',30,267,268,'ACP_MASS_EMAIL','email','acl_a_email && cfg_email_enable'),(67,1,1,'acp_extensions','acp',23,225,226,'ACP_EXTENSIONS','main','acl_a_extensions'),(68,1,1,'acp_forums','acp',7,69,70,'ACP_MANAGE_FORUMS','manage','acl_a_forum'),(69,1,1,'acp_groups','acp',14,153,154,'ACP_GROUPS_MANAGE','manage','acl_a_group'),(70,1,1,'acp_groups','acp',14,155,156,'ACP_GROUPS_POSITION','position','acl_a_group'),(71,1,1,'acp_icons','acp',10,95,96,'ACP_ICONS','icons','acl_a_icons'),(72,1,1,'acp_icons','acp',10,97,98,'ACP_SMILIES','smilies','acl_a_icons'),(73,1,1,'acp_inactive','acp',13,117,118,'ACP_INACTIVE_USERS','list','acl_a_user'),(74,1,1,'acp_jabber','acp',4,49,50,'ACP_JABBER_SETTINGS','settings','acl_a_jabber'),(75,1,1,'acp_language','acp',24,235,236,'ACP_LANGUAGE_PACKS','lang_packs','acl_a_language'),(76,1,1,'acp_logs','acp',26,241,242,'ACP_ADMIN_LOGS','admin','acl_a_viewlogs'),(77,1,1,'acp_logs','acp',26,243,244,'ACP_MOD_LOGS','mod','acl_a_viewlogs'),(78,1,1,'acp_logs','acp',26,245,246,'ACP_USERS_LOGS','users','acl_a_viewlogs'),(79,1,1,'acp_logs','acp',26,247,248,'ACP_CRITICAL_LOGS','critical','acl_a_viewlogs'),(80,1,1,'acp_main','acp',1,2,3,'ACP_INDEX','main',''),(81,1,1,'acp_modules','acp',31,275,276,'ACP','acp','acl_a_modules'),(82,1,1,'acp_modules','acp',31,277,278,'UCP','ucp','acl_a_modules'),(83,1,1,'acp_modules','acp',31,279,280,'MCP','mcp','acl_a_modules'),(84,1,1,'acp_permission_roles','acp',19,199,200,'ACP_ADMIN_ROLES','admin_roles','acl_a_roles && acl_a_aauth'),(85,1,1,'acp_permission_roles','acp',19,201,202,'ACP_USER_ROLES','user_roles','acl_a_roles && acl_a_uauth'),(86,1,1,'acp_permission_roles','acp',19,203,204,'ACP_MOD_ROLES','mod_roles','acl_a_roles && acl_a_mauth'),(87,1,1,'acp_permission_roles','acp',19,205,206,'ACP_FORUM_ROLES','forum_roles','acl_a_roles && acl_a_fauth'),(88,1,1,'acp_permissions','acp',16,174,175,'ACP_PERMISSIONS','intro','acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),(89,1,0,'acp_permissions','acp',20,209,210,'ACP_PERMISSION_TRACE','trace','acl_a_viewauth'),(90,1,1,'acp_permissions','acp',18,187,188,'ACP_FORUM_PERMISSIONS','setting_forum_local','acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),(91,1,1,'acp_permissions','acp',18,189,190,'ACP_FORUM_PERMISSIONS_COPY','setting_forum_copy','acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),(92,1,1,'acp_permissions','acp',18,191,192,'ACP_FORUM_MODERATORS','setting_mod_local','acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),(93,1,1,'acp_permissions','acp',17,177,178,'ACP_USERS_PERMISSIONS','setting_user_global','acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),(94,1,1,'acp_permissions','acp',13,121,122,'ACP_USERS_PERMISSIONS','setting_user_global','acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),(95,1,1,'acp_permissions','acp',18,193,194,'ACP_USERS_FORUM_PERMISSIONS','setting_user_local','acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),(96,1,1,'acp_permissions','acp',13,123,124,'ACP_USERS_FORUM_PERMISSIONS','setting_user_local','acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),(97,1,1,'acp_permissions','acp',17,179,180,'ACP_GROUPS_PERMISSIONS','setting_group_global','acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),(98,1,1,'acp_permissions','acp',14,157,158,'ACP_GROUPS_PERMISSIONS','setting_group_global','acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),(99,1,1,'acp_permissions','acp',18,195,196,'ACP_GROUPS_FORUM_PERMISSIONS','setting_group_local','acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),(100,1,1,'acp_permissions','acp',14,159,160,'ACP_GROUPS_FORUM_PERMISSIONS','setting_group_local','acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),(101,1,1,'acp_permissions','acp',17,181,182,'ACP_ADMINISTRATORS','setting_admin_global','acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),(102,1,1,'acp_permissions','acp',17,183,184,'ACP_GLOBAL_MODERATORS','setting_mod_global','acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),(103,1,1,'acp_permissions','acp',20,211,212,'ACP_VIEW_ADMIN_PERMISSIONS','view_admin_global','acl_a_viewauth'),(104,1,1,'acp_permissions','acp',20,213,214,'ACP_VIEW_USER_PERMISSIONS','view_user_global','acl_a_viewauth'),(105,1,1,'acp_permissions','acp',20,215,216,'ACP_VIEW_GLOBAL_MOD_PERMISSIONS','view_mod_global','acl_a_viewauth'),(106,1,1,'acp_permissions','acp',20,217,218,'ACP_VIEW_FORUM_MOD_PERMISSIONS','view_mod_local','acl_a_viewauth'),(107,1,1,'acp_permissions','acp',20,219,220,'ACP_VIEW_FORUM_PERMISSIONS','view_forum_local','acl_a_viewauth'),(108,1,1,'acp_php_info','acp',30,269,270,'ACP_PHP_INFO','info','acl_a_phpinfo'),(109,1,1,'acp_profile','acp',13,125,126,'ACP_CUSTOM_PROFILE_FIELDS','profile','acl_a_profile'),(110,1,1,'acp_prune','acp',7,71,72,'ACP_PRUNE_FORUMS','forums','acl_a_prune'),(111,1,1,'acp_prune','acp',13,127,128,'ACP_PRUNE_USERS','users','acl_a_userdel'),(112,1,1,'acp_ranks','acp',13,129,130,'ACP_MANAGE_RANKS','ranks','acl_a_ranks'),(113,1,1,'acp_reasons','acp',30,271,272,'ACP_MANAGE_REASONS','main','acl_a_reasons'),(114,1,1,'acp_search','acp',5,61,62,'ACP_SEARCH_SETTINGS','settings','acl_a_search'),(115,1,1,'acp_search','acp',27,255,256,'ACP_SEARCH_INDEX','index','acl_a_search'),(116,1,1,'acp_send_statistics','acp',5,63,64,'ACP_SEND_STATISTICS','send_statistics','acl_a_server'),(117,1,1,'acp_styles','acp',22,229,230,'ACP_STYLES','style','acl_a_styles'),(118,1,1,'acp_styles','acp',22,231,232,'ACP_STYLES_INSTALL','install','acl_a_styles'),(119,1,1,'acp_update','acp',29,261,262,'ACP_VERSION_CHECK','version_check','acl_a_board'),(120,1,1,'acp_users','acp',13,119,120,'ACP_MANAGE_USERS','overview','acl_a_user'),(121,1,0,'acp_users','acp',13,131,132,'ACP_USER_FEEDBACK','feedback','acl_a_user'),(122,1,0,'acp_users','acp',13,133,134,'ACP_USER_WARNINGS','warnings','acl_a_user'),(123,1,0,'acp_users','acp',13,135,136,'ACP_USER_PROFILE','profile','acl_a_user'),(124,1,0,'acp_users','acp',13,137,138,'ACP_USER_PREFS','prefs','acl_a_user'),(125,1,0,'acp_users','acp',13,139,140,'ACP_USER_AVATAR','avatar','acl_a_user'),(126,1,0,'acp_users','acp',13,141,142,'ACP_USER_RANK','rank','acl_a_user'),(127,1,0,'acp_users','acp',13,143,144,'ACP_USER_SIG','sig','acl_a_user'),(128,1,0,'acp_users','acp',13,145,146,'ACP_USER_GROUPS','groups','acl_a_user && acl_a_group'),(129,1,0,'acp_users','acp',13,147,148,'ACP_USER_PERM','perm','acl_a_user && acl_a_viewauth'),(130,1,0,'acp_users','acp',13,149,150,'ACP_USER_ATTACH','attach','acl_a_user'),(131,1,1,'acp_words','acp',10,99,100,'ACP_WORDS','words','acl_a_words'),(132,1,1,'acp_users','acp',2,5,6,'ACP_MANAGE_USERS','overview','acl_a_user'),(133,1,1,'acp_groups','acp',2,7,8,'ACP_GROUPS_MANAGE','manage','acl_a_group'),(134,1,1,'acp_forums','acp',2,9,10,'ACP_MANAGE_FORUMS','manage','acl_a_forum'),(135,1,1,'acp_logs','acp',2,11,12,'ACP_MOD_LOGS','mod','acl_a_viewlogs'),(136,1,1,'acp_bots','acp',2,13,14,'ACP_BOTS','bots','acl_a_bots'),(137,1,1,'acp_php_info','acp',2,15,16,'ACP_PHP_INFO','info','acl_a_phpinfo'),(138,1,1,'acp_permissions','acp',8,75,76,'ACP_FORUM_PERMISSIONS','setting_forum_local','acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),(139,1,1,'acp_permissions','acp',8,77,78,'ACP_FORUM_PERMISSIONS_COPY','setting_forum_copy','acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),(140,1,1,'acp_permissions','acp',8,79,80,'ACP_FORUM_MODERATORS','setting_mod_local','acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),(141,1,1,'acp_permissions','acp',8,81,82,'ACP_USERS_FORUM_PERMISSIONS','setting_user_local','acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),(142,1,1,'acp_permissions','acp',8,83,84,'ACP_GROUPS_FORUM_PERMISSIONS','setting_group_local','acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),(143,1,1,'','mcp',0,1,10,'MCP_MAIN','',''),(144,1,1,'','mcp',0,11,22,'MCP_QUEUE','',''),(145,1,1,'','mcp',0,23,36,'MCP_REPORTS','',''),(146,1,1,'','mcp',0,37,42,'MCP_NOTES','',''),(147,1,1,'','mcp',0,43,52,'MCP_WARN','',''),(148,1,1,'','mcp',0,53,60,'MCP_LOGS','',''),(149,1,1,'','mcp',0,61,68,'MCP_BAN','',''),(150,1,1,'mcp_ban','mcp',149,62,63,'MCP_BAN_USERNAMES','user','acl_m_ban'),(151,1,1,'mcp_ban','mcp',149,64,65,'MCP_BAN_IPS','ip','acl_m_ban'),(152,1,1,'mcp_ban','mcp',149,66,67,'MCP_BAN_EMAILS','email','acl_m_ban'),(153,1,1,'mcp_logs','mcp',148,54,55,'MCP_LOGS_FRONT','front','acl_m_ || aclf_m_'),(154,1,1,'mcp_logs','mcp',148,56,57,'MCP_LOGS_FORUM_VIEW','forum_logs','acl_m_,$id'),(155,1,1,'mcp_logs','mcp',148,58,59,'MCP_LOGS_TOPIC_VIEW','topic_logs','acl_m_,$id'),(156,1,1,'mcp_main','mcp',143,2,3,'MCP_MAIN_FRONT','front',''),(157,1,1,'mcp_main','mcp',143,4,5,'MCP_MAIN_FORUM_VIEW','forum_view','acl_m_,$id'),(158,1,1,'mcp_main','mcp',143,6,7,'MCP_MAIN_TOPIC_VIEW','topic_view','acl_m_,$id'),(159,1,1,'mcp_main','mcp',143,8,9,'MCP_MAIN_POST_DETAILS','post_details','acl_m_,$id || (!$id && aclf_m_)'),(160,1,1,'mcp_notes','mcp',146,38,39,'MCP_NOTES_FRONT','front',''),(161,1,1,'mcp_notes','mcp',146,40,41,'MCP_NOTES_USER','user_notes',''),(162,1,1,'mcp_pm_reports','mcp',145,30,31,'MCP_PM_REPORTS_OPEN','pm_reports','aclf_m_report'),(163,1,1,'mcp_pm_reports','mcp',145,32,33,'MCP_PM_REPORTS_CLOSED','pm_reports_closed','aclf_m_report'),(164,1,1,'mcp_pm_reports','mcp',145,34,35,'MCP_PM_REPORT_DETAILS','pm_report_details','aclf_m_report'),(165,1,1,'mcp_queue','mcp',144,12,13,'MCP_QUEUE_UNAPPROVED_TOPICS','unapproved_topics','aclf_m_approve'),(166,1,1,'mcp_queue','mcp',144,14,15,'MCP_QUEUE_UNAPPROVED_POSTS','unapproved_posts','aclf_m_approve'),(167,1,1,'mcp_queue','mcp',144,16,17,'MCP_QUEUE_DELETED_TOPICS','deleted_topics','aclf_m_approve'),(168,1,1,'mcp_queue','mcp',144,18,19,'MCP_QUEUE_DELETED_POSTS','deleted_posts','aclf_m_approve'),(169,1,1,'mcp_queue','mcp',144,20,21,'MCP_QUEUE_APPROVE_DETAILS','approve_details','acl_m_approve,$id || (!$id && aclf_m_approve)'),(170,1,1,'mcp_reports','mcp',145,24,25,'MCP_REPORTS_OPEN','reports','aclf_m_report'),(171,1,1,'mcp_reports','mcp',145,26,27,'MCP_REPORTS_CLOSED','reports_closed','aclf_m_report'),(172,1,1,'mcp_reports','mcp',145,28,29,'MCP_REPORT_DETAILS','report_details','acl_m_report,$id || (!$id && aclf_m_report)'),(173,1,1,'mcp_warn','mcp',147,44,45,'MCP_WARN_FRONT','front','aclf_m_warn'),(174,1,1,'mcp_warn','mcp',147,46,47,'MCP_WARN_LIST','list','aclf_m_warn'),(175,1,1,'mcp_warn','mcp',147,48,49,'MCP_WARN_USER','warn_user','aclf_m_warn'),(176,1,1,'mcp_warn','mcp',147,50,51,'MCP_WARN_POST','warn_post','acl_m_warn && acl_f_read,$id'),(177,1,1,'','ucp',0,1,14,'UCP_MAIN','',''),(178,1,1,'','ucp',0,15,28,'UCP_PROFILE','',''),(179,1,1,'','ucp',0,29,38,'UCP_PREFS','',''),(180,1,1,'ucp_pm','ucp',0,39,48,'UCP_PM','',''),(181,1,1,'','ucp',0,49,54,'UCP_USERGROUPS','',''),(182,1,1,'','ucp',0,55,60,'UCP_ZEBRA','',''),(183,1,1,'ucp_attachments','ucp',177,10,11,'UCP_MAIN_ATTACHMENTS','attachments','acl_u_attach'),(184,1,1,'ucp_auth_link','ucp',178,26,27,'UCP_AUTH_LINK_MANAGE','auth_link','authmethod_oauth'),(185,1,1,'ucp_groups','ucp',181,50,51,'UCP_USERGROUPS_MEMBER','membership',''),(186,1,1,'ucp_groups','ucp',181,52,53,'UCP_USERGROUPS_MANAGE','manage',''),(187,1,1,'ucp_main','ucp',177,2,3,'UCP_MAIN_FRONT','front',''),(188,1,1,'ucp_main','ucp',177,4,5,'UCP_MAIN_SUBSCRIBED','subscribed',''),(189,1,1,'ucp_main','ucp',177,6,7,'UCP_MAIN_BOOKMARKS','bookmarks','cfg_allow_bookmarks'),(190,1,1,'ucp_main','ucp',177,8,9,'UCP_MAIN_DRAFTS','drafts',''),(191,1,1,'ucp_notifications','ucp',179,36,37,'UCP_NOTIFICATION_OPTIONS','notification_options',''),(192,1,1,'ucp_notifications','ucp',177,12,13,'UCP_NOTIFICATION_LIST','notification_list',''),(193,1,0,'ucp_pm','ucp',180,40,41,'UCP_PM_VIEW','view','cfg_allow_privmsg'),(194,1,1,'ucp_pm','ucp',180,42,43,'UCP_PM_COMPOSE','compose','cfg_allow_privmsg'),(195,1,1,'ucp_pm','ucp',180,44,45,'UCP_PM_DRAFTS','drafts','cfg_allow_privmsg'),(196,1,1,'ucp_pm','ucp',180,46,47,'UCP_PM_OPTIONS','options','cfg_allow_privmsg'),(197,1,1,'ucp_prefs','ucp',179,30,31,'UCP_PREFS_PERSONAL','personal',''),(198,1,1,'ucp_prefs','ucp',179,32,33,'UCP_PREFS_POST','post',''),(199,1,1,'ucp_prefs','ucp',179,34,35,'UCP_PREFS_VIEW','view',''),(200,1,1,'ucp_profile','ucp',178,16,17,'UCP_PROFILE_PROFILE_INFO','profile_info','acl_u_chgprofileinfo'),(201,1,1,'ucp_profile','ucp',178,18,19,'UCP_PROFILE_SIGNATURE','signature','acl_u_sig'),(202,1,1,'ucp_profile','ucp',178,20,21,'UCP_PROFILE_AVATAR','avatar','cfg_allow_avatar'),(203,1,1,'ucp_profile','ucp',178,22,23,'UCP_PROFILE_REG_DETAILS','reg_details',''),(204,1,1,'ucp_profile','ucp',178,24,25,'UCP_PROFILE_AUTOLOGIN_KEYS','autologin_keys',''),(205,1,1,'ucp_zebra','ucp',182,56,57,'UCP_ZEBRA_FRIENDS','friends',''),(206,1,1,'ucp_zebra','ucp',182,58,59,'UCP_ZEBRA_FOES','foes','');
/*!40000 ALTER TABLE `phpbb_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_notification_types`
--

DROP TABLE IF EXISTS `phpbb_notification_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_notification_types` (
  `notification_type_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notification_type_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`notification_type_id`),
  UNIQUE KEY `type` (`notification_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_notification_types`
--

LOCK TABLES `phpbb_notification_types` WRITE;
/*!40000 ALTER TABLE `phpbb_notification_types` DISABLE KEYS */;
INSERT INTO `phpbb_notification_types` VALUES (1,'notification.type.topic',1),(2,'notification.type.approve_topic',1),(3,'notification.type.quote',1),(4,'notification.type.bookmark',1),(5,'notification.type.post',1),(6,'notification.type.approve_post',1),(7,'notification.type.group_request',1),(8,'notification.type.topic_in_queue',1),(9,'notification.type.post_in_queue',1);
/*!40000 ALTER TABLE `phpbb_notification_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_notifications`
--

DROP TABLE IF EXISTS `phpbb_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_notifications` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item_parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notification_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notification_time` int(11) unsigned NOT NULL DEFAULT '1',
  `notification_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `item_ident` (`notification_type_id`,`item_id`),
  KEY `user` (`user_id`,`notification_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_notifications`
--

LOCK TABLES `phpbb_notifications` WRITE;
/*!40000 ALTER TABLE `phpbb_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_oauth_accounts`
--

DROP TABLE IF EXISTS `phpbb_oauth_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_oauth_accounts` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_provider_id` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_id`,`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_oauth_accounts`
--

LOCK TABLES `phpbb_oauth_accounts` WRITE;
/*!40000 ALTER TABLE `phpbb_oauth_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_oauth_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_oauth_tokens`
--

DROP TABLE IF EXISTS `phpbb_oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_oauth_tokens` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_token` mediumtext COLLATE utf8_bin NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `provider` (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_oauth_tokens`
--

LOCK TABLES `phpbb_oauth_tokens` WRITE;
/*!40000 ALTER TABLE `phpbb_oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_poll_options`
--

DROP TABLE IF EXISTS `phpbb_poll_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_poll_options`
--

LOCK TABLES `phpbb_poll_options` WRITE;
/*!40000 ALTER TABLE `phpbb_poll_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_poll_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_poll_votes`
--

DROP TABLE IF EXISTS `phpbb_poll_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_poll_votes` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `topic_id` (`topic_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_poll_votes`
--

LOCK TABLES `phpbb_poll_votes` WRITE;
/*!40000 ALTER TABLE `phpbb_poll_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_poll_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_posts`
--

DROP TABLE IF EXISTS `phpbb_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `post_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `post_delete_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_delete_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_ip` (`poster_ip`),
  KEY `poster_id` (`poster_id`),
  KEY `tid_post_time` (`topic_id`,`post_time`),
  KEY `post_username` (`post_username`),
  KEY `post_visibility` (`post_visibility`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_posts`
--

LOCK TABLES `phpbb_posts` WRITE;
/*!40000 ALTER TABLE `phpbb_posts` DISABLE KEYS */;
INSERT INTO `phpbb_posts` VALUES (1,1,6,2,0,'85.27.74.173',1439034525,0,1,1,1,1,'','Explication du forum','Ce forum a été créé pour toute personne enregistrée utilisant le petit Lenormand et ayant envie de partager ses connaissances, les significations des cartes, les différentes combinaisons de jeux.\n\nLe tout dans la bonne humeur et le respect de chacun\n\nAllez-y, amusez-vous.','49cb7beb7303fd340900da9cb64d1a9e',0,'','ubf1gx92',1,0,'',0,0,0,1,0,'',0),(2,2,3,2,0,'85.27.74.173',1439035357,0,1,1,1,1,'','Réglement','Introduction:\n\nCe forum se veut être un espace de discussions et d\'échanges entre passionnés. Pour que chacun puisse passer un moment en toute convivialité, voici quelques règles de bonne conduite à observer\n\n1- Objet du forum:\n\nCe forum regroupe les membres de Sublime-Voyance. Les thèmes abordés porteront essentiellement sur la parapsychologie sous toutes ses formes. Ce forum a donc pour objectif de faciliter la communication et le partage d\'information.\n\n2- Modalités d\'accès au forum:\nPour prendre connaissance des messages postés sur notre forum, une inscription est obligatoire\nEn effet, la majeure partie des sujets de ce forum peut être lue par tous. En revanche, quelques rubriques sont protégées et seuls les membres adhérents au Staff peuvent poster des messages.\n\n3- Les règles du forum:\n\n- Politesse et savoir-vivre: respectez les membres, utilisez des formules de politesse, restez calme.\n- Tous propos diffamatoires, injurieux, insultants, racistes, xénophobes ou obscènes sont interdits sur le forum.\n- N\'abusez pas de l\'écriture en majuscules. En effet, ces dernières symbolisent un internaute qui CRIE.\n- [b:25jl7ful][color=#FF0000:25jl7ful]Pour une lecture agréable de ce forum, nous vous incitons à soigner votre orthographe, votre syntaxe et à ne pas utiliser le langage sms. [/color:25jl7ful][/b:25jl7ful]Nous vous en remercions par avance.\n\n4- Le rôle du modérateur:\n\nLe rôle du modérateur est de faire respecter les règles de bonne conduite pour rendre les espaces de discussions conviviaux et agréables à tous, en adéquation avec les lois du pays (définis par le cadre juridique du pays).\n\nLes missions du modérateur sont : \n\n- Supprimer des messages ou des discussions ne respectant pas les règles de bonne conduite.\n- Supprimer les profils qui nuisent au bon fonctionnement du forum, par exemple via des messages insultants, des messages provocateurs, du prosélytisme religieux ou politique, racistes, xénophobes, etc. \n- Sont concernés également les utilisateurs qui utilisent simultanément plusieurs profils différents sur le même forum : c\'est une attitude que nous assimilons à de la malhonnêteté envers les autres utilisateurs et donc non admise sur notre forum.\n- Répondre à vos alertes ou demandes particulières.\n- Effacer tout propos interdit sur le site tel que par exemple des propos racistes, diffamatoires, insultants, xénophobes, pédophiles... Que ces propos soient explicites ou implicites, ils seront supprimés.\n- Retirer tout contenu texte, post, photo ou vidéo illicites\n\nLe modérateur intervient a posteriori et n’intervient pas dans les discussions pour donner son avis, ni lors d’un conflit pour donner raison a un internaute. Si un message vous semble contraire aux règles de bonne conduite énoncées ici, signalez-le au modérateur en cliquant sur le bouton &quot;Modérateur&quot; qui figure en bas de page du forum. Vous pourrez lui envoyer un MP .\n\nBien à Vous\n\nAlexandra: Administrateur','a7f1918b5bf584ab8ee80b58a913d390',0,'Qg==','25jl7ful',1,0,'',0,0,0,1,0,'',0),(3,3,6,2,0,'85.27.74.173',1439140458,0,1,1,1,1,'','Tout &quot;savoir&quot; s\'acquiert, toute &quot;connaissance&quot; se transmet.','Si pendant des siècles, l\'instruction a été réservée à une élite et tenue hors de portée de tout un chacun, il n\'en est plus de même maintenant.\n\nLa somme des connaissances exotériques acquises par l\'homme depuis son apparition sur la terre s\'enseigne maintenant à tous, de façon normative, trop parfois, et constitue le bagage culturel de chacun de nous.\n\nC\'est ainsi que pendant des siècles, le &quot;savoir&quot; s\'est préservé de l\'oppression du rationalisme et du scientisme qui sont en grande partie le fait de notre civilisation occidentale.\nAu moment où enfin l\'homme commence à reconnaître qu\'il n\'est pas que matière, technique, mais aussi esprit, ce &quot;savoir&quot; peut sortir de l\'ombre et accéder à la lumière, lui qui était notre Lumière.\n\nLes facultés de l\'esprit, encore si peu connues et si mal employées sont infinies.\n\nLibéré des contraintes de nos sens imparfaits et des limites étroites de nos normes spatio-temporelles, l\'esprit accède à la connaissance universelle&quot;.\n\nToute étude se base sur l\'apprentissage et l\'exercice; nous tous encore en mémoire. anciens écoliers, les longues soirées consacrées  à l\'étude et à la répétition, dans la seule compagnie des manuels scolaires, et le souvenir des maîtres d\'école qui nous transmettaient leur savoir.\n\nLa connaissance ésotérique aussi, se transmet et s\'apprend de la même façon; par l\'enseignement du maître et par l\'étude des livres qui réunissent la somme des connaissances.\n\nIl m \'a été donné au cours de ma carrière d\'enseignant, d\'user nombre de manuels scolaires.\nLes meilleurs étaient ceux qui, outre une base solide et accessible à tous, renforçaient la théorie par de nombreux exercices attractifs et un langage non-rebutant.\n\nLe présent livre répond à ces critères.\n\n[b:2dzuupa1]Méthode de cartomancie par Mary Marco et Jeanine Goffinet [/b:2dzuupa1]\n\nIl est né de la rencontre de trois femmes.\n\n(Depuis les temps immémoriaux, la femme a souvent été dépositaire du savoir ésotérique face à l\'homme aveuglé par le patriarcat et le culte de la raison).\n\nLa première, Marie-Anne Adélaïde Lenormand, a été de son temps u ne devineresse célèbre dont la justesse de prévision a étonné plus d\'un.\n\nLa seconde, Mary Marco, est un de ces êtres qui ont la grâce de dépasser notre espace-temps; elle met ses facultés au service des autres, et convaincue que chacun les a, transmet ses connaissances et encourage le développement du Psi.\n\nLa troisième, Jeanine Goffinet, initialement enseignante, a, depuis   sa  rencontre   avec   Mary   Marco, progressivement abandonné l\'enseignement  traditionnel au profit de la Tradition.\n\nLa connivence, la similitude d \'esprit, de pensée et de cœur et le désir commun de ces dames de transmettre un savoir sont à présent entre vos mains.\n\nPuissent-elles répondre à votre attente, vous aider à dépasser vos limites et vous ouvrir la &quot;voie royale de la connaissance&quot;.\n\nJ. Mercier\nInspecteur pédagogique Recteur de l \'INSPA\nAdministrateur général de 1\'APEL.\n11','9729f23c4ccbe6e4f4dccfa63839f644',0,'QA==','2dzuupa1',1,0,'',0,0,0,1,0,'',0),(5,5,18,2,0,'85.27.74.173',1439422190,0,1,1,1,1,'','Phrases positives','1.Nous seuls décidons consciemment d\'être heureux,\n   C\'est un choix, je choisis le bonheur.','effd0f89b73b88bd7dfdc2236f6d5bfd',0,'','3guzuqyr',1,0,'',0,0,0,1,0,'',0),(6,6,13,2,0,'85.27.74.173',1439423341,0,1,1,1,1,'','Titre Livres','Petit Lenormand, Méthode De Cartomancie par Mary Marco et Jeanine Goffinet.\n\nUn livre intéressant pour les débutants pour commencer petit à petit à comprendre les cartes\n\nEditions Servranx Bruxelles. \nISBN 2-87242-030-4','cd9e421c0eef4aa0274fd2c5a0f9e864',0,'','358n6cpp',1,0,'',0,0,0,1,0,'',0),(7,7,19,2,0,'85.27.74.173',1439455715,0,1,1,1,1,'','Alexandra','Mon humeur du jour est  <!-- s:D --><img src=\"{SMILIES_PATH}/icon_e_biggrin.gif\" alt=\":D\" title=\"Heureux\" /><!-- s:D -->','d0eef2d0db827b553a2abee5dffc7dab',0,'','ijgsi1im',1,0,'',0,0,0,1,0,'',0),(8,8,3,2,0,'85.27.74.173',1439471617,0,1,1,1,1,'','Les conditions générales','Informations légales\n\n1. Présentation du site.\nEn vertu de l’article 6 de la loi n° 2004-575 du 21 juin 2004 pour la confiance dans l’économie numérique, il est précisé aux utilisateurs du site la.cote-des-annonces.com l’identité des différents intervenants dans le cadre de sa réalisation et de son suivi :\n\nPropriétaire : Cote Lionel – Bureau d’étude – 16 rue Casimir Fournier Maubeuge 59600\n\nCréateur : Cote Lionel\n\nResponsable publication : Lionel Cote – <!-- e --><a href=\"mailto:dg@cote7.com\">dg@cote7.com</a><!-- e -->\n\nLe responsable publication est une personne physique ou une personne morale.\n\nWebmaster : Cote Lionel – <!-- e --><a href=\"mailto:dg@cote7.com\">dg@cote7.com</a><!-- e -->\n\nTéléphone : +32-477-03-51-03\n\nHébergeur : Cote7 – 16 rue Casimir Fournier 59600 Maubeuge\n\n2. Conditions générales d’utilisation du site et des services proposés.\nL’utilisation du uuu.sublime-voyance.be implique l’acceptation pleine et entière des conditions générales d’utilisation ci-après décrites. Ces conditions d’utilisation sont susceptibles d’être modifiées ou complétées à tout moment, les utilisateurs du uuu.sublime-voyance.be sont donc invités à les consulter de manière régulière.\n\nCe site est normalement accessible à tout moment aux utilisateurs. Une interruption pour raison de maintenance technique peut être toutefois décidée par Cote Lionel, qui s’efforcera alors de communiquer préalablement aux utilisateurs les dates et heures de l’intervention.\n\nLe uuu.sublime-voyance.be est mis à jour régulièrement par Lionel Cote. De la même façon, les mentions légales peuvent être modifiées à tout moment : elles s’imposent néanmoins à l’utilisateur qui est invité à s’y référer le plus souvent possible afin d’en prendre connaissance.\n\n3. Description des services fournis.\nLe uuu.sublime-voyance.be a pour objet de fournir une information concernant l’ensemble des activités de la société.\n\nCote Lionel s’efforce de fournir sur le uuu.sublime-voyance.be des informations aussi précises que possible. Toutefois, il ne pourra être tenue responsable des omissions, des inexactitudes et des carences dans la mise à jour, qu’elles soient de son fait ou du fait des tiers partenaires qui lui fournissent ces informations.\n\nTous les informations indiquées sur le uuu.sublime-voyance.be données à titre indicatif, et sont susceptibles d’évoluer. Par ailleurs, les renseignements figurant sur le uuu.sublime-voyance.be ne sont pas exhaustifs. Ils sont donnés sous réserve de modifications ayant été apportées depuis leur mise en ligne.\n\n4. Limitations contractuelles sur les données techniques.\nLe site utilise la technologie JavaScript.\n\nLe site Internet ne pourra être tenu responsable de dommages matériels liés à l’utilisation du site. De plus, l’utilisateur du site s’engage à accéder au site en utilisant un matériel récent, ne contenant pas de virus et avec un navigateur de dernière génération mis-à-jour\n\n5. Propriété intellectuelle et contrefaçons.\nCote Lionel est propriétaire des droits de propriété intellectuelle ou détient les droits d’usage sur tous les éléments accessibles sur le site, notamment les textes, images, graphismes, logo, icônes, sons, logiciels.\n\nToute reproduction, représentation, modification, publication, adaptation de tout ou partie des éléments du site, quel que soit le moyen ou le procédé utilisé, est interdite, sauf autorisation écrite préalable de : Cote Lionel.\n\nToute exploitation non autorisée du site ou de l’un quelconque des éléments qu’il contient sera considérée comme constitutive d’une contrefaçon et poursuivie conformément aux dispositions des articles L.335-2 et suivants du Code de Propriété Intellectuelle.\n\n6. Limitations de responsabilité.\nCote Lionel ne pourra être tenue responsable des dommages directs et indirects causés au matériel de l’utilisateur, lors de l’accès au uuu.sublime-voyance.be , et résultant soit de l’utilisation d’un matériel ne répondant pas aux spécifications indiquées au point 4, soit de l’apparition d’un bug ou d’une incompatibilité.\n\nCote Lionel ne pourra également être tenue responsable des dommages indirects (tels par exemple qu’une perte de marché ou perte d’une chance) consécutifs à l’utilisation du forum sublime voyance.be.\n\nDes espaces interactifs (possibilité de poser des questions dans l’espace contact) sont à la disposition des utilisateurs. Cote Lionel se réserve le droit de supprimer, sans mise en demeure préalable, tout contenu déposé dans cet espace qui contreviendrait à la législation applicable en France, en particulier aux dispositions relatives à la protection des données. Le cas échéant, Cote Lionel se réserve également la possibilité de mettre en cause la responsabilité civile et/ou pénale de l’utilisateur, notamment en cas de message à caractère raciste, injurieux, diffamant, ou pornographique, quel que soit le support utilisé (texte, photographie…).\n\n7. Gestion des données personnelles.\nEn France, les données personnelles sont notamment protégées par la loi n° 78-87 du 6 janvier 1978, la loi n° 2004-801 du 6 août 2004, l’article L. 226-13 du Code pénal et la Directive Européenne du 24 octobre 1995.\n\nA l’occasion de l’utilisation du uuu.sublime-voyance.be, peuvent êtres recueillies : l’URL des liens par l’intermédiaire desquels l’utilisateur a accédé au uuu.sublime-voyance.be, le fournisseur d’accès de l’utilisateur, l’adresse de protocole Internet (IP) de l’utilisateur.\n\nEn tout état de cause Cote Lionel ne collecte des informations personnelles relatives à l’utilisateur que pour le besoin de certains services proposés par le uuu.sublime-voyance.be. L’utilisateur fournit ces informations en toute connaissance de cause, notamment lorsqu’il procède par lui-même à leur saisie. Il est alors précisé à l’utilisateur du uuu.sublime-voyance.be l’obligation ou non de fournir ces informations.\n\nConformément aux dispositions des articles 38 et suivants de la loi 78-17 du 6 janvier 1978 relative à l’informatique, aux fichiers et aux libertés, tout utilisateur dispose d’un droit d’accès, de rectification et d’opposition aux données personnelles le concernant, en effectuant sa demande écrite et signée, accompagnée d’une copie du titre d’identité avec signature du titulaire de la pièce, en précisant l’adresse à laquelle la réponse doit être envoyée.\n\nAucune information personnelle de l’utilisateur du site la.cote-des-annonces.com n’est publiée à l’insu de l’utilisateur, échangée, transférée, cédée ou vendue sur un support quelconque à des tiers. Seule l’hypothèse du rachat de Cote Lionel et de ses droits permettrait la transmission des dites informations à l’éventuel acquéreur qui serait à son tour tenu de la même obligation de conservation et de modification des données vis à vis de l’utilisateur du uuu.sublime-voyance.be.\n\nLe site susnommé est déclaré à la CNIL sous le numéro 822471 07/10/2002.\n\nLes bases de données sont protégées par les dispositions de la loi du 1er juillet 1998 transposant la directive 96/9 du 11 mars 1996 relative à la protection juridique des bases de données.\n\n8. Liens hypertextes et cookies.\nLe uuu.sublime-voyance.be contient un certain nombre de liens hypertextes vers d’autres sites, mis en place avec l’autorisation de Cote Lionel. Cependant, Cote Lionel n’a pas la possibilité de vérifier le contenu des sites ainsi visités, et n’assumera en conséquence aucune responsabilité de ce fait.\n\nLa navigation sur le uuu.sublime-voyance.be est susceptible de provoquer l’installation de cookie(s) sur l’ordinateur de l’utilisateur. Un cookie est un fichier de petite taille, qui ne permet pas l’identification de l’utilisateur, mais qui enregistre des informations relatives à la navigation d’un ordinateur sur un site. Les données ainsi obtenues visent à faciliter la navigation ultérieure sur le site, et ont également vocation à permettre diverses mesures de fréquentation.\n\nLe refus d’installation d’un cookie peut entraîner l’impossibilité d’accéder à certains services. L’utilisateur peut toutefois configurer son ordinateur de la manière suivante, pour refuser l’installation des cookies :\n\nSous Internet Explorer : onglet outil (pictogramme en forme de rouage en haut a droite) / options internet. Cliquez sur Confidentialité et choisissez Bloquer tous les cookies. Validez sur Ok.\n\n\n9. Droit applicable et attribution de juridiction.\nTout litige en relation avec l’utilisation du uuu.sublime-voyance.be est soumis au droit français. Il est fait attribution exclusive de juridiction aux tribunaux compétents de Paris.\n\n10. Les principales lois concernées.\nLoi n° 78-87 du 6 janvier 1978, notamment modifiée par la loi n° 2004-801 du 6 août 2004 relative à l’informatique, aux fichiers et aux libertés.\n\nLoi n° 2004-575 du 21 juin 2004 pour la confiance dans l’économie numérique.\n\n11. Lexique.\nUtilisateur : Internaute se connectant, utilisant le site susnommé.\n\nInformations personnelles : « les informations qui permettent, sous quelque forme que ce soit, directement ou non, l’identification des personnes physiques auxquelles elles s’appliquent » (article 4 de la loi n° 78-17 du 6 janvier 1978).\n\nCrédits : les mentions légales ont été générées et offertes par Subdelirium agence web Angoulême','69c9c4abaec279bf925f39d944a47229',0,'','2ms8v3h5',1,0,'',0,0,0,1,0,'',0),(9,7,19,2,0,'85.27.74.173',1439562155,0,1,1,1,1,'','Re: Alexandra','<!-- s(y) --><img src=\"{SMILIES_PATH}/icon_pouce.gif\" alt=\"(y)\" title=\"Super\" /><!-- s(y) -->','0bcb59b20b3d6ca052d914412ddf00ab',0,'','wqtkggbl',1,0,'',0,0,0,1,0,'',0),(10,7,19,2,0,'85.27.74.173',1439627772,0,1,1,1,1,'','Re: Alexandra','Je suis en  <!-- s:evil: --><img src=\"{SMILIES_PATH}/icon_evil.gif\" alt=\":evil:\" title=\"Colère diabolique\" /><!-- s:evil: -->','2ff2ea7f9b7916bea793e7186fa35478',0,'','8pyspboc',1,0,'',0,0,0,1,0,'',0),(11,5,18,2,0,'85.27.74.173',1439628397,0,1,1,1,1,'','Re: Phrases positives','2.Je sais qu\'il n\'y a pas de chemin vers le bonheur,\n   Le bonheur est le chemin.','b14c3f836e1a9a5cb3cdbe9da93f2560',0,'','2ctxkiiv',1,0,'',0,0,0,1,0,'',0),(12,5,18,2,0,'85.27.74.173',1439628413,0,1,1,1,1,'','Re: Phrases positives','3.Être heureux est une décision que nous pouvons tous prendre un jour dans notre vie,\n   Je décide d\'être heureux.','912ac785357c6117d674fd5d03fef017',0,'','34iuvcmo',1,0,'',0,0,0,1,0,'',0),(13,5,18,2,0,'85.27.74.173',1439628426,0,1,1,1,1,'','Re: Phrases positives','4.L\'obstacle majeur à l\'atteinte du bonheur est bien souvent la conviction qu\'on ne le mérite pas.\n  Je mérite le bonheur, j\'en suis convaincu.','27f6477f8a6b4b04842eeb04dedf35aa',0,'','2xuax6te',1,0,'',0,0,0,1,0,'',0),(14,5,18,2,0,'85.27.74.173',1439628439,0,1,1,1,1,'','Re: Phrases positives','5.Je baigne dans l\'abondance la plus totale.','beedfe1b73fa8cd2634f3546084195c9',0,'','3m9s6jec',1,0,'',0,0,0,1,0,'',0),(15,5,18,2,0,'85.27.74.173',1439628449,0,1,1,1,1,'','Re: Phrases positives','6.Je suis une personne extraordinaire,\n   Je m\'apprécie telle que je suis.','6d712dee2dc5c428d53de7ebad18596f',0,'','3qczgbpq',1,0,'',0,0,0,1,0,'',0),(16,5,18,2,0,'85.27.74.173',1439628455,0,1,1,1,1,'','Re: Phrases positives','7.Je sais que j\'ai plus de pouvoir sur ma vie que ce que je crois.','ee2e9fcd3afcabb4e938529d68978a22',0,'','3c6semvc',1,0,'',0,0,0,1,0,'',0);
/*!40000 ALTER TABLE `phpbb_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_privmsgs`
--

DROP TABLE IF EXISTS `phpbb_privmsgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_privmsgs` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `author_ip` (`author_ip`),
  KEY `message_time` (`message_time`),
  KEY `author_id` (`author_id`),
  KEY `root_level` (`root_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_privmsgs`
--

LOCK TABLES `phpbb_privmsgs` WRITE;
/*!40000 ALTER TABLE `phpbb_privmsgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_privmsgs_folder`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_privmsgs_folder`
--

LOCK TABLES `phpbb_privmsgs_folder` WRITE;
/*!40000 ALTER TABLE `phpbb_privmsgs_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_privmsgs_rules`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_privmsgs_rules`
--

LOCK TABLES `phpbb_privmsgs_rules` WRITE;
/*!40000 ALTER TABLE `phpbb_privmsgs_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_privmsgs_to`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_privmsgs_to` (
  `msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0',
  KEY `msg_id` (`msg_id`),
  KEY `author_id` (`author_id`),
  KEY `usr_flder_id` (`user_id`,`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_privmsgs_to`
--

LOCK TABLES `phpbb_privmsgs_to` WRITE;
/*!40000 ALTER TABLE `phpbb_privmsgs_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_profile_fields`
--

DROP TABLE IF EXISTS `phpbb_profile_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_novalue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_ml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_is_contact` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_contact_desc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_contact_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_profile_fields`
--

LOCK TABLES `phpbb_profile_fields` WRITE;
/*!40000 ALTER TABLE `phpbb_profile_fields` DISABLE KEYS */;
INSERT INTO `phpbb_profile_fields` VALUES (1,'phpbb_location','profilefields.type.string','phpbb_location','20','2','100','','','.*',0,0,0,0,1,1,1,1,0,1,1,0,'',''),(2,'phpbb_website','profilefields.type.url','phpbb_website','40','12','255','','','',0,0,0,0,1,2,1,1,0,1,1,1,'VISIT_WEBSITE','%s'),(3,'phpbb_interests','profilefields.type.text','phpbb_interests','3|30','2','500','','','.*',0,0,0,0,0,3,1,0,0,0,0,0,'',''),(4,'phpbb_occupation','profilefields.type.text','phpbb_occupation','3|30','2','500','','','.*',0,0,0,0,0,4,1,0,0,0,0,0,'',''),(5,'phpbb_aol','profilefields.type.string','phpbb_aol','40','5','255','','','.*',0,0,0,0,0,5,1,1,0,1,1,1,'',''),(6,'phpbb_icq','profilefields.type.string','phpbb_icq','20','3','15','','','[0-9]+',0,0,0,0,0,6,1,1,0,1,1,1,'SEND_ICQ_MESSAGE','https://www.icq.com/people/%s/'),(7,'phpbb_wlm','profilefields.type.string','phpbb_wlm','40','5','255','','','.*',0,0,0,0,0,7,1,1,0,1,1,1,'',''),(8,'phpbb_yahoo','profilefields.type.string','phpbb_yahoo','40','5','255','','','.*',0,0,0,0,0,8,1,1,0,1,1,1,'SEND_YIM_MESSAGE','ymsgr:sendim?%s'),(9,'phpbb_facebook','profilefields.type.string','phpbb_facebook','20','5','50','','','[\\w.]+',0,0,0,0,1,9,1,1,0,1,1,1,'VIEW_FACEBOOK_PROFILE','http://facebook.com/%s/'),(10,'phpbb_twitter','profilefields.type.string','phpbb_twitter','20','1','15','','','[\\w_]+',0,0,0,0,1,10,1,1,0,1,1,1,'VIEW_TWITTER_PROFILE','http://twitter.com/%s'),(11,'phpbb_skype','profilefields.type.string','phpbb_skype','20','6','32','','','[a-zA-Z][\\w\\.,\\-_]+',0,0,0,0,1,11,1,1,0,1,1,1,'VIEW_SKYPE_PROFILE','skype:%s?userinfo'),(12,'phpbb_youtube','profilefields.type.string','phpbb_youtube','20','3','60','','','[a-zA-Z][\\w\\.,\\-_]+',0,0,0,0,1,12,1,1,0,1,1,1,'VIEW_YOUTUBE_CHANNEL','http://youtube.com/user/%s'),(13,'phpbb_googleplus','profilefields.type.googleplus','phpbb_googleplus','20','3','255','','','[\\w]+',0,0,0,0,1,13,1,1,0,1,1,1,'VIEW_GOOGLEPLUS_PROFILE','http://plus.google.com/%s');
/*!40000 ALTER TABLE `phpbb_profile_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_profile_fields_data`
--

DROP TABLE IF EXISTS `phpbb_profile_fields_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pf_phpbb_interests` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_occupation` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_skype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_youtube` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_facebook` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_googleplus` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_icq` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_location` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_twitter` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_website` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_wlm` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_yahoo` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_aol` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_profile_fields_data`
--

LOCK TABLES `phpbb_profile_fields_data` WRITE;
/*!40000 ALTER TABLE `phpbb_profile_fields_data` DISABLE KEYS */;
INSERT INTO `phpbb_profile_fields_data` VALUES (2,'','','','','alexandrasublimevoyance','','','','','http://top.sublime-voyance.be/','','','');
/*!40000 ALTER TABLE `phpbb_profile_fields_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_profile_fields_lang`
--

DROP TABLE IF EXISTS `phpbb_profile_fields_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_profile_fields_lang`
--

LOCK TABLES `phpbb_profile_fields_lang` WRITE;
/*!40000 ALTER TABLE `phpbb_profile_fields_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_profile_fields_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_profile_lang`
--

DROP TABLE IF EXISTS `phpbb_profile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_profile_lang`
--

LOCK TABLES `phpbb_profile_lang` WRITE;
/*!40000 ALTER TABLE `phpbb_profile_lang` DISABLE KEYS */;
INSERT INTO `phpbb_profile_lang` VALUES (1,1,'LOCATION','',''),(1,2,'LOCATION','',''),(2,1,'WEBSITE','',''),(2,2,'WEBSITE','',''),(3,1,'INTERESTS','',''),(3,2,'INTERESTS','',''),(4,1,'OCCUPATION','',''),(4,2,'OCCUPATION','',''),(5,1,'AOL','',''),(5,2,'AOL','',''),(6,1,'ICQ','',''),(6,2,'ICQ','',''),(7,1,'WLM','',''),(7,2,'WLM','',''),(8,1,'YAHOO','',''),(8,2,'YAHOO','',''),(9,1,'FACEBOOK','',''),(9,2,'FACEBOOK','',''),(10,1,'TWITTER','',''),(10,2,'TWITTER','',''),(11,1,'SKYPE','',''),(11,2,'SKYPE','',''),(12,1,'YOUTUBE','',''),(12,2,'YOUTUBE','',''),(13,1,'GOOGLEPLUS','',''),(13,2,'GOOGLEPLUS','','');
/*!40000 ALTER TABLE `phpbb_profile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_ranks`
--

DROP TABLE IF EXISTS `phpbb_ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_ranks`
--

LOCK TABLES `phpbb_ranks` WRITE;
/*!40000 ALTER TABLE `phpbb_ranks` DISABLE KEYS */;
INSERT INTO `phpbb_ranks` VALUES (1,'Administrateur',0,1,'');
/*!40000 ALTER TABLE `phpbb_ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_reports`
--

DROP TABLE IF EXISTS `phpbb_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_reports` (
  `report_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_time` int(11) unsigned NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  `pm_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reported_post_enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`report_id`),
  KEY `post_id` (`post_id`),
  KEY `pm_id` (`pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_reports`
--

LOCK TABLES `phpbb_reports` WRITE;
/*!40000 ALTER TABLE `phpbb_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_reports_reasons`
--

DROP TABLE IF EXISTS `phpbb_reports_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_reports_reasons`
--

LOCK TABLES `phpbb_reports_reasons` WRITE;
/*!40000 ALTER TABLE `phpbb_reports_reasons` DISABLE KEYS */;
INSERT INTO `phpbb_reports_reasons` VALUES (1,'warez','Le message rapporté contient du contenu portant atteinte au droit d’auteur, au droit des marques, au secret industriel ou à d’autres législations.',1),(2,'spam','Le message rapporté contient du contenu publicitaire indésirable visant à promouvoir une marque, un produit, une entreprise ou un site internet.',2),(3,'off_topic','Le message rapporté est hors-sujet.',3),(4,'other','Le message rapporté ne correspond à aucune catégorie. Veuillez utiliser le champ d’information complémentaire.',4);
/*!40000 ALTER TABLE `phpbb_reports_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_search_results`
--

DROP TABLE IF EXISTS `phpbb_search_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_search_results`
--

LOCK TABLES `phpbb_search_results` WRITE;
/*!40000 ALTER TABLE `phpbb_search_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_search_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_search_wordlist`
--

DROP TABLE IF EXISTS `phpbb_search_wordlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=InnoDB AUTO_INCREMENT=910 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_search_wordlist`
--

LOCK TABLES `phpbb_search_wordlist` WRITE;
/*!40000 ALTER TABLE `phpbb_search_wordlist` DISABLE KEYS */;
INSERT INTO `phpbb_search_wordlist` VALUES (1,'ceci',0,0),(2,'est',0,8),(3,'exemple',0,2),(4,'message',0,2),(5,'votre',0,2),(6,'nouvelle',0,0),(7,'installation',0,1),(8,'phpbb',0,0),(9,'tout',0,6),(10,'semble',0,1),(11,'fonctionner',0,0),(12,'correctement',0,0),(13,'vous',0,4),(14,'souhaitez',0,0),(15,'pouvez',0,0),(16,'supprimer',0,2),(17,'continuer',0,0),(18,'configurer',0,1),(19,'forum',0,5),(20,'lors',0,2),(21,'processus',0,0),(22,'première',0,1),(23,'catégorie',0,0),(24,'premier',0,0),(25,'ont',0,2),(26,'été',0,4),(27,'assignés',0,0),(28,'ensemble',0,1),(29,'permissions',0,0),(30,'relatif',0,0),(31,'aux',0,2),(32,'groupes',0,0),(33,'utilisateurs',0,2),(34,'que',0,6),(35,'sont',0,3),(36,'les',0,7),(37,'administrateurs',0,0),(38,'modérateurs',0,0),(39,'généraux',0,0),(40,'inscrits',0,0),(41,'coppa',0,0),(42,'invités',0,1),(43,'robots',0,0),(44,'également',0,2),(45,'cette',0,0),(46,'oubliez',0,0),(47,'pas',0,5),(48,'assigner',0,0),(49,'appropriées',0,0),(50,'tous',0,4),(51,'sur',0,4),(52,'chaques',0,0),(53,'nouvelles',0,0),(54,'catégories',0,0),(55,'nouveaux',0,0),(56,'forums',0,0),(57,'créez',0,0),(58,'recommandé',0,0),(59,'renommer',0,0),(60,'puis',0,0),(61,'copier',0,0),(62,'leurs',0,0),(63,'chaque',0,0),(64,'nouveau',0,0),(65,'leur',0,2),(66,'création',0,0),(67,'bonne',0,2),(68,'continuation',0,0),(69,'bienvenue',0,0),(95,'introduction',0,1),(96,'veut',0,1),(97,'être',0,4),(98,'espace',0,3),(99,'discussions',0,1),(100,'échanges',0,1),(101,'entre',0,2),(102,'passionnés',0,1),(103,'pour',0,4),(104,'chacun',0,3),(105,'puisse',0,1),(106,'passer',0,1),(107,'moment',0,3),(108,'toute',0,5),(109,'convivialité',0,1),(110,'voici',0,1),(111,'quelques',0,1),(112,'règles',0,1),(113,'conduite',0,1),(114,'observer',0,1),(115,'objet',0,2),(116,'regroupe',0,1),(117,'membres',0,1),(118,'sublime',0,2),(119,'voyance',0,2),(120,'thèmes',0,1),(121,'abordés',0,1),(122,'porteront',0,1),(123,'essentiellement',0,1),(124,'parapsychologie',0,1),(125,'sous',0,2),(126,'toutes',0,1),(127,'ses',0,4),(128,'formes',0,1),(129,'donc',0,2),(130,'objectif',0,1),(131,'faciliter',0,2),(132,'communication',0,1),(133,'partage',0,1),(134,'information',0,2),(135,'modalités',0,1),(136,'accès',0,2),(137,'prendre',0,3),(138,'connaissance',0,4),(139,'des',0,4),(140,'messages',0,1),(141,'postés',0,1),(142,'notre',0,3),(143,'une',0,5),(144,'inscription',0,1),(145,'obligatoire',0,1),(146,'effet',0,1),(147,'majeure',0,1),(148,'partie',0,3),(149,'sujets',0,1),(150,'peut',0,3),(151,'lue',0,1),(152,'par',0,4),(153,'revanche',0,1),(154,'rubriques',0,1),(155,'protégées',0,2),(156,'seuls',0,2),(157,'adhérents',0,1),(158,'staff',0,1),(159,'peuvent',0,2),(160,'poster',0,1),(161,'politesse',0,1),(162,'savoir',0,3),(163,'vivre',0,1),(164,'respectez',0,1),(165,'utilisez',0,1),(166,'formules',0,1),(167,'restez',0,1),(168,'calme',0,1),(169,'propos',0,1),(170,'diffamatoires',0,1),(171,'injurieux',0,2),(172,'insultants',0,1),(173,'racistes',0,1),(174,'xénophobes',0,1),(175,'obscènes',0,1),(176,'interdits',0,1),(177,'abusez',0,1),(178,'écriture',0,1),(179,'majuscules',0,1),(180,'ces',0,3),(181,'dernières',0,1),(182,'symbolisent',0,1),(183,'internaute',0,2),(184,'qui',0,3),(185,'crie',0,1),(186,'lecture',0,1),(187,'agréable',0,1),(188,'nous',0,4),(189,'incitons',0,1),(190,'soigner',0,1),(191,'orthographe',0,1),(192,'syntaxe',0,1),(193,'utiliser',0,1),(194,'langage',0,2),(195,'sms',0,1),(196,'remercions',0,1),(197,'avance',0,1),(198,'rôle',0,1),(199,'modérateur',0,1),(200,'faire',0,1),(201,'respecter',0,1),(202,'rendre',0,1),(203,'espaces',0,2),(204,'conviviaux',0,1),(205,'agréables',0,1),(206,'adéquation',0,1),(207,'avec',0,3),(208,'lois',0,2),(209,'pays',0,1),(210,'définis',0,1),(211,'cadre',0,2),(212,'juridique',0,2),(213,'missions',0,1),(214,'respectant',0,1),(215,'profils',0,1),(216,'nuisent',0,1),(217,'bon',0,1),(218,'fonctionnement',0,1),(219,'via',0,1),(220,'provocateurs',0,1),(221,'prosélytisme',0,1),(222,'religieux',0,1),(223,'politique',0,1),(224,'etc',0,1),(225,'concernés',0,1),(226,'utilisent',0,1),(227,'simultanément',0,1),(228,'plusieurs',0,1),(229,'différents',0,2),(230,'même',0,3),(231,'attitude',0,1),(232,'assimilons',0,1),(233,'malhonnêteté',0,1),(234,'envers',0,1),(235,'autres',0,3),(236,'non',0,3),(237,'admise',0,1),(238,'répondre',0,2),(239,'vos',0,2),(240,'alertes',0,1),(241,'demandes',0,1),(242,'particulières',0,1),(243,'effacer',0,1),(244,'interdit',0,1),(245,'site',0,2),(246,'tel',0,1),(247,'pédophiles',0,1),(248,'soient',0,2),(249,'explicites',0,1),(250,'implicites',0,1),(251,'ils',0,2),(252,'seront',0,1),(253,'supprimés',0,1),(254,'retirer',0,1),(255,'contenu',0,2),(256,'texte',0,2),(257,'post',0,1),(258,'photo',0,1),(259,'vidéo',0,1),(260,'illicites',0,1),(261,'intervient',0,1),(262,'posteriori',0,1),(263,'dans',0,6),(264,'donner',0,1),(265,'son',0,3),(266,'avis',0,1),(267,'conflit',0,1),(268,'raison',0,3),(269,'contraire',0,1),(270,'énoncées',0,1),(271,'ici',0,1),(272,'signalez',0,1),(273,'cliquant',0,1),(274,'bouton',0,1),(275,'figure',0,1),(276,'bas',0,1),(277,'page',0,1),(278,'pourrez',0,1),(279,'lui',0,3),(280,'envoyer',0,1),(281,'bien',0,2),(282,'alexandra',0,4),(283,'administrateur',0,2),(284,'réglement',0,1),(285,'créé',0,1),(286,'personne',0,3),(287,'enregistrée',0,1),(288,'utilisant',0,2),(289,'petit',0,2),(290,'lenormand',0,3),(291,'ayant',0,2),(292,'envie',0,1),(293,'partager',0,1),(294,'connaissances',0,2),(295,'significations',0,1),(296,'cartes',0,2),(297,'différentes',0,1),(298,'combinaisons',0,1),(299,'jeux',0,1),(300,'humeur',0,2),(301,'respect',0,1),(302,'allez',0,1),(303,'amusez',0,1),(304,'explication',0,1),(305,'pendant',0,1),(306,'siècles',0,1),(307,'instruction',0,1),(308,'réservée',0,1),(309,'élite',0,1),(310,'tenue',0,2),(311,'hors',0,1),(312,'portée',0,1),(313,'plus',0,4),(314,'maintenant',0,1),(315,'somme',0,1),(316,'exotériques',0,1),(317,'acquises',0,1),(318,'homme',0,1),(319,'depuis',0,2),(320,'apparition',0,2),(321,'terres',0,0),(322,'enseigne',0,1),(323,'façon',0,2),(324,'normative',0,1),(325,'trop',0,1),(326,'parfois',0,1),(327,'constitue',0,1),(328,'bagage',0,1),(329,'culturel',0,1),(330,'ainsi',0,2),(331,'préservé',0,1),(332,'oppression',0,1),(333,'rationalisme',0,1),(334,'scientisme',0,1),(335,'grande',0,1),(336,'fait',0,2),(337,'civilisation',0,1),(338,'occidentale',0,1),(339,'enfin',0,1),(340,'commence',0,1),(341,'reconnaître',0,1),(342,'matière',0,1),(343,'technique',0,2),(344,'mais',0,2),(345,'aussi',0,2),(346,'esprit',0,1),(347,'sortir',0,1),(348,'ombre',0,1),(349,'accéder',0,2),(350,'lumière',0,1),(351,'était',0,1),(352,'facultés',0,1),(353,'encore',0,1),(354,'peu',0,1),(355,'connues',0,1),(356,'mal',0,1),(357,'employées',0,1),(358,'infinies',0,1),(359,'libéré',0,1),(360,'contraintes',0,1),(361,'nos',0,1),(362,'sens',0,1),(363,'imparfaits',0,1),(364,'limites',0,1),(365,'étroites',0,1),(366,'normes',0,1),(367,'spatio',0,1),(368,'temporelles',0,1),(369,'accède',0,1),(370,'universelle',0,1),(371,'étude',0,2),(372,'base',0,1),(373,'apprentissage',0,1),(374,'exercice',0,1),(375,'mémoire',0,1),(376,'anciens',0,1),(377,'écoliers',0,1),(378,'longues',0,1),(379,'acquiert',0,1),(380,'transmet',0,2),(381,'soirées',0,1),(382,'consacrées',0,1),(383,'répétition',0,1),(384,'seule',0,2),(385,'compagnie',0,1),(386,'manuels',0,1),(387,'scolaires',0,1),(388,'souvenir',0,1),(389,'maîtres',0,1),(390,'école',0,1),(391,'transmettaient',0,1),(392,'ésotérique',0,1),(393,'apprend',0,1),(394,'enseignement',0,1),(395,'maître',0,1),(396,'livres',0,2),(397,'réunissent',0,1),(398,'donné',0,1),(399,'cours',0,1),(400,'carrière',0,1),(401,'enseignant',0,1),(402,'user',0,1),(403,'nombre',0,2),(404,'meilleurs',0,1),(405,'étaient',0,1),(406,'ceux',0,1),(407,'outre',0,1),(408,'solide',0,1),(409,'accessible',0,2),(410,'renforçaient',0,1),(411,'théorie',0,1),(412,'nombreux',0,1),(413,'exercices',0,1),(414,'attractifs',0,1),(415,'rebutant',0,1),(416,'présent',0,1),(417,'livre',0,2),(418,'répond',0,1),(419,'critères',0,1),(420,'rencontre',0,1),(421,'trois',0,1),(422,'femmes',0,1),(423,'temps',0,1),(424,'immémoriaux',0,1),(425,'femme',0,1),(426,'souvent',0,3),(427,'dépositaire',0,1),(428,'face',0,1),(429,'aveuglé',0,1),(430,'patriarcat',0,1),(431,'culte',0,1),(432,'marie',0,1),(433,'anne',0,1),(434,'adélaïde',0,1),(435,'devineresse',0,1),(436,'célèbre',0,1),(437,'dont',0,1),(438,'justesse',0,1),(439,'prévision',0,1),(440,'étonné',0,1),(441,'seconde',0,1),(442,'mary',0,2),(443,'marco',0,2),(444,'êtres',0,2),(445,'grâce',0,1),(446,'dépasser',0,1),(447,'elle',0,1),(448,'met',0,1),(449,'service',0,1),(450,'convaincue',0,1),(451,'encourage',0,1),(452,'développement',0,1),(453,'psi',0,1),(454,'troisième',0,1),(455,'jeanine',0,2),(456,'goffinet',0,2),(457,'initialement',0,1),(458,'enseignante',0,1),(459,'progressivement',0,1),(460,'abandonné',0,1),(461,'traditionnel',0,1),(462,'profit',0,1),(463,'tradition',0,1),(464,'connivence',0,1),(465,'similitude',0,1),(466,'pensée',0,1),(467,'coeur',0,1),(468,'désir',0,1),(469,'commun',0,1),(470,'dames',0,1),(471,'transmettre',0,1),(472,'mains',0,1),(473,'puissent',0,1),(474,'elles',0,2),(475,'attente',0,1),(476,'aider',0,1),(477,'ouvrir',0,1),(478,'voie',0,1),(479,'royale',0,1),(480,'mercier',0,1),(481,'inspecteur',0,1),(482,'pédagogique',0,1),(483,'recteur',0,1),(484,'inspa',0,1),(485,'général',0,1),(486,'apel',0,1),(487,'terre',0,1),(488,'méthode',0,2),(489,'cartomancie',0,2),(490,'décidons',0,1),(491,'consciemment',0,1),(492,'heureux',0,2),(493,'choix',0,1),(494,'choisis',0,1),(495,'bonheur',0,3),(496,'phrases',0,7),(497,'positives',0,7),(498,'ph2',0,0),(499,'sais',0,2),(500,'chemin',0,1),(501,'vers',0,2),(502,'décision',0,1),(503,'pouvons',0,1),(504,'jour',0,3),(505,'vie',0,2),(506,'décide',0,1),(507,'obstacle',0,1),(508,'majeur',0,1),(509,'atteinte',0,1),(510,'conviction',0,1),(511,'mérite',0,1),(512,'suis',0,3),(513,'convaincu',0,1),(514,'editions',0,1),(515,'servranx',0,1),(516,'bruxelles',0,1),(517,'isbn',0,1),(518,'87242',0,1),(519,'030',0,1),(520,'titre',0,2),(521,'intéressant',0,1),(522,'débutants',0,1),(523,'commencer',0,1),(524,'comprendre',0,1),(525,'baigne',0,1),(526,'abondance',0,1),(527,'totale',0,1),(528,'mon',0,1),(529,'informations',0,1),(530,'légales',0,1),(531,'présentation',0,1),(532,'vertu',0,1),(533,'article',0,1),(534,'loi',0,1),(535,'2004',0,1),(536,'575',0,1),(537,'juin',0,1),(538,'confiance',0,1),(539,'économie',0,1),(540,'numérique',0,1),(541,'précisé',0,1),(542,'cote',0,1),(543,'annonces',0,1),(544,'com',0,1),(545,'identité',0,1),(546,'intervenants',0,1),(547,'réalisation',0,1),(548,'suivi',0,1),(549,'propriétaire',0,1),(550,'lionel',0,1),(551,'bureau',0,1),(552,'rue',0,1),(553,'casimir',0,1),(554,'fournier',0,1),(555,'maubeuge',0,1),(556,'59600',0,1),(557,'créateur',0,1),(558,'responsable',0,1),(559,'publication',0,1),(560,'cote7',0,1),(561,'physique',0,1),(562,'morale',0,1),(563,'webmaster',0,1),(564,'téléphone',0,1),(565,'477',0,1),(566,'hébergeur',0,1),(567,'conditions',0,2),(568,'générales',0,2),(569,'utilisation',0,1),(570,'services',0,1),(571,'proposés',0,1),(572,'implique',0,1),(573,'acceptation',0,1),(574,'pleine',0,1),(575,'entière',0,1),(576,'après',0,1),(577,'décrites',0,1),(578,'susceptibles',0,1),(579,'modifiées',0,1),(580,'complétées',0,1),(581,'consulter',0,1),(582,'manière',0,1),(583,'régulière',0,1),(584,'normalement',0,1),(585,'interruption',0,1),(586,'maintenance',0,1),(587,'toutefois',0,1),(588,'décidée',0,1),(589,'efforcera',0,1),(590,'alors',0,1),(591,'communiquer',0,1),(592,'préalablement',0,1),(593,'dates',0,1),(594,'heures',0,1),(595,'intervention',0,1),(596,'mis',0,1),(597,'régulièrement',0,1),(598,'mentions',0,1),(599,'imposent',0,1),(600,'néanmoins',0,1),(601,'utilisateur',0,1),(602,'invité',0,1),(603,'référer',0,1),(604,'possible',0,1),(605,'afin',0,1),(606,'description',0,1),(607,'fournis',0,1),(608,'fournir',0,1),(609,'concernant',0,1),(610,'activités',0,1),(611,'société',0,1),(612,'efforce',0,1),(613,'précises',0,1),(614,'pourra',0,1),(615,'omissions',0,1),(616,'inexactitudes',0,1),(617,'carences',0,1),(618,'mise',0,1),(619,'tiers',0,1),(620,'partenaires',0,1),(621,'fournissent',0,1),(622,'indiquées',0,1),(623,'données',0,1),(624,'indicatif',0,1),(625,'évoluer',0,1),(626,'ailleurs',0,1),(627,'renseignements',0,1),(628,'figurant',0,1),(629,'exhaustifs',0,1),(630,'donnés',0,1),(631,'réserve',0,1),(632,'modifications',0,1),(633,'apportées',0,1),(634,'ligne',0,1),(635,'limitations',0,1),(636,'contractuelles',0,1),(637,'techniques',0,1),(638,'utilise',0,1),(639,'technologie',0,1),(640,'javascript',0,1),(641,'internet',0,1),(642,'tenu',0,1),(643,'dommages',0,1),(644,'matériels',0,1),(645,'liés',0,1),(646,'engage',0,1),(647,'matériel',0,1),(648,'récent',0,1),(649,'contenant',0,1),(650,'virus',0,1),(651,'navigateur',0,1),(652,'dernière',0,1),(653,'génération',0,1),(654,'propriété',0,1),(655,'intellectuelle',0,1),(656,'contrefaçons',0,1),(657,'droits',0,1),(658,'détient',0,1),(659,'usage',0,1),(660,'éléments',0,1),(661,'accessibles',0,1),(662,'notamment',0,1),(663,'textes',0,1),(664,'images',0,1),(665,'graphismes',0,1),(666,'logo',0,1),(667,'icônes',0,1),(668,'sons',0,1),(669,'logiciels',0,1),(670,'reproduction',0,1),(671,'représentation',0,1),(672,'modification',0,1),(673,'adaptation',0,1),(674,'quel',0,1),(675,'soit',0,1),(676,'moyen',0,1),(677,'procédé',0,1),(678,'utilisé',0,1),(679,'interdite',0,1),(680,'sauf',0,1),(681,'autorisation',0,1),(682,'écrite',0,1),(683,'préalable',0,1),(684,'exploitation',0,1),(685,'autorisée',0,1),(686,'quelconque',0,1),(687,'contient',0,1),(688,'sera',0,1),(689,'considérée',0,1),(690,'comme',0,1),(691,'constitutive',0,1),(692,'contrefaçon',0,1),(693,'poursuivie',0,1),(694,'conformément',0,1),(695,'dispositions',0,1),(696,'articles',0,1),(697,'335',0,1),(698,'suivants',0,1),(699,'code',0,1),(700,'responsabilité',0,1),(701,'directs',0,1),(702,'indirects',0,1),(703,'causés',0,1),(704,'résultant',0,1),(705,'répondant',0,1),(706,'spécifications',0,1),(707,'point',0,1),(708,'bug',0,1),(709,'incompatibilité',0,1),(710,'tels',0,1),(711,'perte',0,1),(712,'marché',0,1),(713,'chance',0,1),(714,'consécutifs',0,1),(715,'interactifs',0,1),(716,'possibilité',0,1),(717,'poser',0,1),(718,'questions',0,1),(719,'contact',0,1),(720,'disposition',0,1),(721,'droit',0,1),(722,'sans',0,1),(723,'demeure',0,1),(724,'déposé',0,1),(725,'cet',0,1),(726,'contreviendrait',0,1),(727,'législation',0,1),(728,'applicable',0,1),(729,'france',0,1),(730,'particulier',0,1),(731,'relatives',0,1),(732,'protection',0,1),(733,'cas',0,1),(734,'échéant',0,1),(735,'mettre',0,1),(736,'cause',0,1),(737,'civile',0,1),(738,'pénale',0,1),(739,'caractère',0,1),(740,'raciste',0,1),(741,'diffamant',0,1),(742,'pornographique',0,1),(743,'support',0,1),(744,'photographie',0,1),(745,'gestion',0,1),(746,'personnelles',0,1),(747,'janvier',0,1),(748,'1978',0,1),(749,'801',0,1),(750,'août',0,1),(751,'226',0,1),(752,'pénal',0,1),(753,'directive',0,1),(754,'européenne',0,1),(755,'octobre',0,1),(756,'1995',0,1),(757,'occasion',0,1),(758,'recueillies',0,1),(759,'url',0,1),(760,'liens',0,1),(761,'intermédiaire',0,1),(762,'desquels',0,1),(763,'accédé',0,1),(764,'fournisseur',0,1),(765,'adresse',0,1),(766,'protocole',0,1),(767,'état',0,1),(768,'collecte',0,1),(769,'besoin',0,1),(770,'certains',0,1),(771,'fournit',0,1),(772,'lorsqu',0,1),(773,'procède',0,1),(774,'saisie',0,1),(775,'obligation',0,1),(776,'relative',0,1),(777,'informatique',0,1),(778,'fichiers',0,1),(779,'libertés',0,1),(780,'dispose',0,1),(781,'rectification',0,1),(782,'opposition',0,1),(783,'effectuant',0,1),(784,'demande',0,1),(785,'signée',0,1),(786,'accompagnée',0,1),(787,'copie',0,1),(788,'signature',0,1),(789,'titulaire',0,1),(790,'pièce',0,1),(791,'précisant',0,1),(792,'laquelle',0,1),(793,'réponse',0,1),(794,'doit',0,1),(795,'envoyée',0,1),(796,'aucune',0,1),(797,'personnelle',0,1),(798,'publiée',0,1),(799,'insu',0,1),(800,'échangée',0,1),(801,'transférée',0,1),(802,'cédée',0,1),(803,'vendue',0,1),(804,'hypothèse',0,1),(805,'rachat',0,1),(806,'permettrait',0,1),(807,'transmission',0,1),(808,'dites',0,1),(809,'éventuel',0,1),(810,'acquéreur',0,1),(811,'serait',0,1),(812,'tour',0,1),(813,'conservation',0,1),(814,'vis',0,1),(815,'susnommé',0,1),(816,'déclaré',0,1),(817,'cnil',0,1),(818,'numéro',0,1),(819,'822471',0,1),(820,'2002',0,1),(821,'bases',0,1),(822,'1er',0,1),(823,'juillet',0,1),(824,'1998',0,1),(825,'transposant',0,1),(826,'mars',0,1),(827,'1996',0,1),(828,'hypertextes',0,1),(829,'cookies',0,1),(830,'certain',0,1),(831,'sites',0,1),(832,'place',0,1),(833,'cependant',0,1),(834,'vérifier',0,1),(835,'visités',0,1),(836,'assumera',0,1),(837,'conséquence',0,1),(838,'navigation',0,1),(839,'susceptible',0,1),(840,'provoquer',0,1),(841,'cookie',0,1),(842,'ordinateur',0,1),(843,'fichier',0,1),(844,'petite',0,1),(845,'taille',0,1),(846,'permet',0,1),(847,'identification',0,1),(848,'enregistre',0,1),(849,'obtenues',0,1),(850,'visent',0,1),(851,'ultérieure',0,1),(852,'vocation',0,1),(853,'permettre',0,1),(854,'diverses',0,1),(855,'mesures',0,1),(856,'fréquentation',0,1),(857,'refus',0,1),(858,'entraîner',0,1),(859,'impossibilité',0,1),(860,'suivante',0,1),(861,'refuser',0,1),(862,'explorer',0,1),(863,'onglet',0,1),(864,'outil',0,1),(865,'pictogramme',0,1),(866,'forme',0,1),(867,'rouage',0,1),(868,'haut',0,1),(869,'droite',0,1),(870,'options',0,1),(871,'cliquez',0,1),(872,'confidentialité',0,1),(873,'choisissez',0,1),(874,'bloquer',0,1),(875,'validez',0,1),(876,'attribution',0,1),(877,'juridiction',0,1),(878,'litige',0,1),(879,'relation',0,1),(880,'soumis',0,1),(881,'français',0,1),(882,'exclusive',0,1),(883,'tribunaux',0,1),(884,'compétents',0,1),(885,'paris',0,1),(886,'principales',0,1),(887,'concernées',0,1),(888,'modifiée',0,1),(889,'lexique',0,1),(890,'connectant',0,1),(891,'permettent',0,1),(892,'quelque',0,1),(893,'directement',0,1),(894,'personnes',0,1),(895,'physiques',0,1),(896,'auxquelles',0,1),(897,'appliquent',0,1),(898,'crédits',0,1),(899,'générées',0,1),(900,'offertes',0,1),(901,'subdelirium',0,1),(902,'agence',0,1),(903,'web',0,1),(904,'angoulême',0,1),(905,'extraordinaire',0,1),(906,'apprécie',0,1),(907,'telle',0,1),(908,'pouvoir',0,1),(909,'crois',0,1);
/*!40000 ALTER TABLE `phpbb_search_wordlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_search_wordmatch`
--

DROP TABLE IF EXISTS `phpbb_search_wordmatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `un_mtch` (`word_id`,`post_id`,`title_match`),
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_search_wordmatch`
--

LOCK TABLES `phpbb_search_wordmatch` WRITE;
/*!40000 ALTER TABLE `phpbb_search_wordmatch` DISABLE KEYS */;
INSERT INTO `phpbb_search_wordmatch` VALUES (2,2,0),(3,2,0),(5,2,0),(7,2,0),(8,2,0),(11,2,0),(12,2,0),(13,2,0),(2,3,0),(8,3,0),(2,4,0),(8,4,0),(2,5,0),(3,5,0),(8,7,0),(1,9,0),(2,9,0),(3,9,0),(3,9,1),(8,9,0),(2,10,0),(1,13,0),(2,13,0),(3,13,0),(2,16,0),(8,16,0),(8,18,0),(1,19,0),(1,19,1),(2,19,0),(8,19,0),(2,20,0),(8,20,0),(3,22,0),(3,25,0),(8,25,0),(1,26,0),(3,26,0),(8,26,0),(8,28,0),(2,31,0),(8,31,0),(2,33,0),(8,33,0),(2,34,0),(3,34,0),(8,34,0),(12,34,0),(15,34,0),(16,34,0),(2,35,0),(3,35,0),(8,35,0),(1,36,0),(2,36,0),(3,36,0),(6,36,0),(8,36,0),(8,36,1),(8,42,0),(2,44,0),(8,44,0),(2,47,0),(3,47,0),(8,47,0),(11,47,0),(13,47,0),(2,50,0),(3,50,0),(8,50,0),(12,50,0),(2,51,0),(3,51,0),(8,51,0),(16,51,0),(3,65,0),(8,65,0),(1,67,0),(2,67,0),(2,95,0),(2,96,0),(2,97,0),(5,97,0),(8,97,0),(12,97,0),(2,98,0),(3,98,0),(8,98,0),(2,99,0),(2,100,0),(2,101,0),(3,101,0),(2,102,0),(1,103,0),(2,103,0),(6,103,0),(8,103,0),(1,104,0),(2,104,0),(3,104,0),(2,105,0),(2,106,0),(2,107,0),(3,107,0),(8,107,0),(1,108,0),(2,108,0),(3,108,0),(3,108,1),(8,108,0),(2,109,0),(2,110,0),(2,111,0),(2,112,0),(2,113,0),(2,114,0),(2,115,0),(8,115,0),(2,116,0),(2,117,0),(2,118,0),(8,118,0),(2,119,0),(8,119,0),(2,120,0),(2,121,0),(2,122,0),(2,123,0),(2,124,0),(2,125,0),(8,125,0),(2,126,0),(1,127,0),(2,127,0),(3,127,0),(8,127,0),(2,128,0),(2,129,0),(8,129,0),(2,130,0),(2,131,0),(8,131,0),(2,132,0),(2,133,0),(2,134,0),(8,134,0),(2,135,0),(2,136,0),(8,136,0),(2,137,0),(8,137,0),(12,137,0),(2,138,0),(3,138,0),(3,138,1),(8,138,0),(1,139,0),(2,139,0),(3,139,0),(8,139,0),(2,140,0),(2,141,0),(2,142,0),(3,142,0),(12,142,0),(2,143,0),(3,143,0),(8,143,0),(12,143,0),(15,143,0),(2,144,0),(2,145,0),(2,146,0),(2,147,0),(2,148,0),(3,148,0),(8,148,0),(2,149,0),(2,150,0),(3,150,0),(8,150,0),(2,151,0),(2,152,0),(3,152,0),(6,152,0),(8,152,0),(2,153,0),(2,154,0),(2,155,0),(8,155,0),(2,156,0),(5,156,0),(2,157,0),(2,158,0),(2,159,0),(8,159,0),(2,160,0),(2,161,0),(2,162,0),(3,162,0),(3,162,1),(2,163,0),(2,164,0),(2,165,0),(2,166,0),(2,167,0),(2,168,0),(2,169,0),(2,170,0),(2,171,0),(8,171,0),(2,172,0),(2,173,0),(2,174,0),(2,175,0),(2,176,0),(2,177,0),(2,178,0),(2,179,0),(2,180,0),(3,180,0),(8,180,0),(2,181,0),(2,182,0),(2,183,0),(8,183,0),(2,184,0),(3,184,0),(8,184,0),(2,185,0),(2,186,0),(2,187,0),(2,188,0),(3,188,0),(5,188,0),(12,188,0),(2,189,0),(2,190,0),(2,191,0),(2,192,0),(2,193,0),(2,194,0),(3,194,0),(2,195,0),(2,196,0),(2,197,0),(2,198,0),(2,199,0),(2,200,0),(2,201,0),(2,202,0),(2,203,0),(8,203,0),(2,204,0),(2,205,0),(2,206,0),(2,207,0),(3,207,0),(8,207,0),(2,208,0),(8,208,0),(2,209,0),(2,210,0),(2,211,0),(8,211,0),(2,212,0),(8,212,0),(2,213,0),(2,214,0),(2,215,0),(2,216,0),(2,217,0),(2,218,0),(2,219,0),(2,220,0),(2,221,0),(2,222,0),(2,223,0),(2,224,0),(2,225,0),(2,226,0),(2,227,0),(2,228,0),(2,229,0),(8,229,0),(2,230,0),(3,230,0),(8,230,0),(2,231,0),(2,232,0),(2,233,0),(2,234,0),(2,235,0),(3,235,0),(8,235,0),(2,236,0),(3,236,0),(8,236,0),(2,237,0),(2,238,0),(3,238,0),(2,239,0),(3,239,0),(2,240,0),(2,241,0),(2,242,0),(2,243,0),(2,244,0),(2,245,0),(8,245,0),(2,246,0),(2,247,0),(2,248,0),(8,248,0),(2,249,0),(2,250,0),(2,251,0),(8,251,0),(2,252,0),(2,253,0),(2,254,0),(2,255,0),(8,255,0),(2,256,0),(8,256,0),(2,257,0),(2,258,0),(2,259,0),(2,260,0),(2,261,0),(2,262,0),(1,263,0),(2,263,0),(3,263,0),(8,263,0),(12,263,0),(14,263,0),(2,264,0),(2,265,0),(3,265,0),(8,265,0),(2,266,0),(2,267,0),(2,268,0),(3,268,0),(8,268,0),(2,269,0),(2,270,0),(2,271,0),(2,272,0),(2,273,0),(2,274,0),(2,275,0),(2,276,0),(2,277,0),(2,278,0),(2,279,0),(3,279,0),(8,279,0),(2,280,0),(2,281,0),(13,281,0),(2,282,0),(7,282,1),(9,282,1),(10,282,1),(2,283,0),(3,283,0),(2,284,1),(1,285,0),(1,286,0),(8,286,0),(15,286,0),(1,287,0),(1,288,0),(8,288,0),(1,289,0),(6,289,0),(1,290,0),(3,290,0),(6,290,0),(1,291,0),(8,291,0),(1,292,0),(1,293,0),(1,294,0),(3,294,0),(1,295,0),(1,296,0),(6,296,0),(1,297,0),(1,298,0),(1,299,0),(1,300,0),(7,300,0),(1,301,0),(1,302,0),(1,303,0),(1,304,1),(3,305,0),(3,306,0),(3,307,0),(3,308,0),(3,309,0),(3,310,0),(8,310,0),(3,311,0),(3,312,0),(3,313,0),(8,313,0),(14,313,0),(16,313,0),(3,314,0),(3,315,0),(3,316,0),(3,317,0),(3,318,0),(3,319,0),(8,319,0),(3,320,0),(8,320,0),(3,322,0),(3,323,0),(8,323,0),(3,324,0),(3,325,0),(3,326,0),(3,327,0),(3,328,0),(3,329,0),(3,330,0),(8,330,0),(3,331,0),(3,332,0),(3,333,0),(3,334,0),(3,335,0),(3,336,0),(8,336,0),(3,337,0),(3,338,0),(3,339,0),(3,340,0),(3,341,0),(3,342,0),(3,343,0),(8,343,0),(3,344,0),(8,344,0),(3,345,0),(8,345,0),(3,346,0),(3,347,0),(3,348,0),(3,349,0),(8,349,0),(3,350,0),(3,351,0),(3,352,0),(3,353,0),(3,354,0),(3,355,0),(3,356,0),(3,357,0),(3,358,0),(3,359,0),(3,360,0),(3,361,0),(3,362,0),(3,363,0),(3,364,0),(3,365,0),(3,366,0),(3,367,0),(3,368,0),(3,369,0),(3,370,0),(3,371,0),(8,371,0),(3,372,0),(3,373,0),(3,374,0),(3,375,0),(3,376,0),(3,377,0),(3,378,0),(3,379,1),(3,380,0),(3,380,1),(3,381,0),(3,382,0),(3,383,0),(3,384,0),(8,384,0),(3,385,0),(3,386,0),(3,387,0),(3,388,0),(3,389,0),(3,390,0),(3,391,0),(3,392,0),(3,393,0),(3,394,0),(3,395,0),(3,396,0),(6,396,1),(3,397,0),(3,398,0),(3,399,0),(3,400,0),(3,401,0),(3,402,0),(3,403,0),(8,403,0),(3,404,0),(3,405,0),(3,406,0),(3,407,0),(3,408,0),(3,409,0),(8,409,0),(3,410,0),(3,411,0),(3,412,0),(3,413,0),(3,414,0),(3,415,0),(3,416,0),(3,417,0),(6,417,0),(3,418,0),(3,419,0),(3,420,0),(3,421,0),(3,422,0),(3,423,0),(3,424,0),(3,425,0),(3,426,0),(8,426,0),(13,426,0),(3,427,0),(3,428,0),(3,429,0),(3,430,0),(3,431,0),(3,432,0),(3,433,0),(3,434,0),(3,435,0),(3,436,0),(3,437,0),(3,438,0),(3,439,0),(3,440,0),(3,441,0),(3,442,0),(6,442,0),(3,443,0),(6,443,0),(3,444,0),(8,444,0),(3,445,0),(3,446,0),(3,447,0),(3,448,0),(3,449,0),(3,450,0),(3,451,0),(3,452,0),(3,453,0),(3,454,0),(3,455,0),(6,455,0),(3,456,0),(6,456,0),(3,457,0),(3,458,0),(3,459,0),(3,460,0),(3,461,0),(3,462,0),(3,463,0),(3,464,0),(3,465,0),(3,466,0),(3,467,0),(3,468,0),(3,469,0),(3,470,0),(3,471,0),(3,472,0),(3,473,0),(3,474,0),(8,474,0),(3,475,0),(3,476,0),(3,477,0),(3,478,0),(3,479,0),(3,480,0),(3,481,0),(3,482,0),(3,483,0),(3,484,0),(3,485,0),(3,486,0),(3,487,0),(3,488,0),(6,488,0),(3,489,0),(6,489,0),(5,490,0),(5,491,0),(5,492,0),(12,492,0),(5,493,0),(5,494,0),(5,495,0),(11,495,0),(13,495,0),(5,496,1),(11,496,1),(12,496,1),(13,496,1),(14,496,1),(15,496,1),(16,496,1),(5,497,1),(11,497,1),(12,497,1),(13,497,1),(14,497,1),(15,497,1),(16,497,1),(11,499,0),(16,499,0),(11,500,0),(8,501,0),(11,501,0),(12,502,0),(12,503,0),(7,504,0),(8,504,0),(12,504,0),(12,505,0),(16,505,0),(12,506,0),(13,507,0),(13,508,0),(13,509,0),(13,510,0),(13,511,0),(10,512,0),(13,512,0),(15,512,0),(13,513,0),(6,514,0),(6,515,0),(6,516,0),(6,517,0),(6,518,0),(6,519,0),(6,520,1),(8,520,0),(6,521,0),(6,522,0),(6,523,0),(6,524,0),(14,525,0),(14,526,0),(14,527,0),(7,528,0),(8,529,0),(8,530,0),(8,531,0),(8,532,0),(8,533,0),(8,534,0),(8,535,0),(8,536,0),(8,537,0),(8,538,0),(8,539,0),(8,540,0),(8,541,0),(8,542,0),(8,543,0),(8,544,0),(8,545,0),(8,546,0),(8,547,0),(8,548,0),(8,549,0),(8,550,0),(8,551,0),(8,552,0),(8,553,0),(8,554,0),(8,555,0),(8,556,0),(8,557,0),(8,558,0),(8,559,0),(8,560,0),(8,561,0),(8,562,0),(8,563,0),(8,564,0),(8,565,0),(8,566,0),(8,567,0),(8,567,1),(8,568,0),(8,568,1),(8,569,0),(8,570,0),(8,571,0),(8,572,0),(8,573,0),(8,574,0),(8,575,0),(8,576,0),(8,577,0),(8,578,0),(8,579,0),(8,580,0),(8,581,0),(8,582,0),(8,583,0),(8,584,0),(8,585,0),(8,586,0),(8,587,0),(8,588,0),(8,589,0),(8,590,0),(8,591,0),(8,592,0),(8,593,0),(8,594,0),(8,595,0),(8,596,0),(8,597,0),(8,598,0),(8,599,0),(8,600,0),(8,601,0),(8,602,0),(8,603,0),(8,604,0),(8,605,0),(8,606,0),(8,607,0),(8,608,0),(8,609,0),(8,610,0),(8,611,0),(8,612,0),(8,613,0),(8,614,0),(8,615,0),(8,616,0),(8,617,0),(8,618,0),(8,619,0),(8,620,0),(8,621,0),(8,622,0),(8,623,0),(8,624,0),(8,625,0),(8,626,0),(8,627,0),(8,628,0),(8,629,0),(8,630,0),(8,631,0),(8,632,0),(8,633,0),(8,634,0),(8,635,0),(8,636,0),(8,637,0),(8,638,0),(8,639,0),(8,640,0),(8,641,0),(8,642,0),(8,643,0),(8,644,0),(8,645,0),(8,646,0),(8,647,0),(8,648,0),(8,649,0),(8,650,0),(8,651,0),(8,652,0),(8,653,0),(8,654,0),(8,655,0),(8,656,0),(8,657,0),(8,658,0),(8,659,0),(8,660,0),(8,661,0),(8,662,0),(8,663,0),(8,664,0),(8,665,0),(8,666,0),(8,667,0),(8,668,0),(8,669,0),(8,670,0),(8,671,0),(8,672,0),(8,673,0),(8,674,0),(8,675,0),(8,676,0),(8,677,0),(8,678,0),(8,679,0),(8,680,0),(8,681,0),(8,682,0),(8,683,0),(8,684,0),(8,685,0),(8,686,0),(8,687,0),(8,688,0),(8,689,0),(8,690,0),(8,691,0),(8,692,0),(8,693,0),(8,694,0),(8,695,0),(8,696,0),(8,697,0),(8,698,0),(8,699,0),(8,700,0),(8,701,0),(8,702,0),(8,703,0),(8,704,0),(8,705,0),(8,706,0),(8,707,0),(8,708,0),(8,709,0),(8,710,0),(8,711,0),(8,712,0),(8,713,0),(8,714,0),(8,715,0),(8,716,0),(8,717,0),(8,718,0),(8,719,0),(8,720,0),(8,721,0),(8,722,0),(8,723,0),(8,724,0),(8,725,0),(8,726,0),(8,727,0),(8,728,0),(8,729,0),(8,730,0),(8,731,0),(8,732,0),(8,733,0),(8,734,0),(8,735,0),(8,736,0),(8,737,0),(8,738,0),(8,739,0),(8,740,0),(8,741,0),(8,742,0),(8,743,0),(8,744,0),(8,745,0),(8,746,0),(8,747,0),(8,748,0),(8,749,0),(8,750,0),(8,751,0),(8,752,0),(8,753,0),(8,754,0),(8,755,0),(8,756,0),(8,757,0),(8,758,0),(8,759,0),(8,760,0),(8,761,0),(8,762,0),(8,763,0),(8,764,0),(8,765,0),(8,766,0),(8,767,0),(8,768,0),(8,769,0),(8,770,0),(8,771,0),(8,772,0),(8,773,0),(8,774,0),(8,775,0),(8,776,0),(8,777,0),(8,778,0),(8,779,0),(8,780,0),(8,781,0),(8,782,0),(8,783,0),(8,784,0),(8,785,0),(8,786,0),(8,787,0),(8,788,0),(8,789,0),(8,790,0),(8,791,0),(8,792,0),(8,793,0),(8,794,0),(8,795,0),(8,796,0),(8,797,0),(8,798,0),(8,799,0),(8,800,0),(8,801,0),(8,802,0),(8,803,0),(8,804,0),(8,805,0),(8,806,0),(8,807,0),(8,808,0),(8,809,0),(8,810,0),(8,811,0),(8,812,0),(8,813,0),(8,814,0),(8,815,0),(8,816,0),(8,817,0),(8,818,0),(8,819,0),(8,820,0),(8,821,0),(8,822,0),(8,823,0),(8,824,0),(8,825,0),(8,826,0),(8,827,0),(8,828,0),(8,829,0),(8,830,0),(8,831,0),(8,832,0),(8,833,0),(8,834,0),(8,835,0),(8,836,0),(8,837,0),(8,838,0),(8,839,0),(8,840,0),(8,841,0),(8,842,0),(8,843,0),(8,844,0),(8,845,0),(8,846,0),(8,847,0),(8,848,0),(8,849,0),(8,850,0),(8,851,0),(8,852,0),(8,853,0),(8,854,0),(8,855,0),(8,856,0),(8,857,0),(8,858,0),(8,859,0),(8,860,0),(8,861,0),(8,862,0),(8,863,0),(8,864,0),(8,865,0),(8,866,0),(8,867,0),(8,868,0),(8,869,0),(8,870,0),(8,871,0),(8,872,0),(8,873,0),(8,874,0),(8,875,0),(8,876,0),(8,877,0),(8,878,0),(8,879,0),(8,880,0),(8,881,0),(8,882,0),(8,883,0),(8,884,0),(8,885,0),(8,886,0),(8,887,0),(8,888,0),(8,889,0),(8,890,0),(8,891,0),(8,892,0),(8,893,0),(8,894,0),(8,895,0),(8,896,0),(8,897,0),(8,898,0),(8,899,0),(8,900,0),(8,901,0),(8,902,0),(8,903,0),(8,904,0),(15,905,0),(15,906,0),(15,907,0),(16,908,0),(16,909,0);
/*!40000 ALTER TABLE `phpbb_search_wordmatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_sessions`
--

DROP TABLE IF EXISTS `phpbb_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_last_visit` int(11) unsigned NOT NULL DEFAULT '0',
  `session_start` int(11) unsigned NOT NULL DEFAULT '0',
  `session_time` int(11) unsigned NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_time` (`session_time`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_fid` (`session_forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_sessions`
--

LOCK TABLES `phpbb_sessions` WRITE;
/*!40000 ALTER TABLE `phpbb_sessions` DISABLE KEYS */;
INSERT INTO `phpbb_sessions` VALUES ('582880cb8d7160fd4d56ab3946da14d4',48,1439902809,1439906648,1439906648,'91.178.173.136','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0','','index.php',1,1,0,0),('74062023624157a39610406407563861',48,1439891841,1439903438,1439904762,'91.178.135.63','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0','','index.php',1,1,1,0),('7e0914d1fa43448463b036fa0cca0b39',1,1439923588,1439923588,1439923588,'66.249.93.161','Google favicon','','index.php',1,0,0,0),('ad61db37e97fca3e190160fc402e3db9',1,1439907983,1439907983,1439907983,'85.27.74.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36','','index.php',1,0,0,0),('f574643a4ede24bed538b539cca4d4a1',48,1439891841,1439906478,1439906545,'91.178.173.136','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36','','index.php',1,1,0,0);
/*!40000 ALTER TABLE `phpbb_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_sessions_keys`
--

DROP TABLE IF EXISTS `phpbb_sessions_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_sessions_keys`
--

LOCK TABLES `phpbb_sessions_keys` WRITE;
/*!40000 ALTER TABLE `phpbb_sessions_keys` DISABLE KEYS */;
INSERT INTO `phpbb_sessions_keys` VALUES ('2888bf11cc776be4237289d813e4f6b7',50,'80.200.19.209',1439144307),('796e2dc0a99c3be293a0d76c01e31931',48,'91.178.173.136',1439906478),('806fdb4bba7fc764aaf3eeead9b0ac0a',2,'81.240.237.210',1433338181),('8c220daf7398cce66599708ea64724f6',48,'91.178.173.136',1439906649),('9cf313633dc1b019d9c561f2440b78d8',48,'91.178.137.211',1434612561),('ccecda1f47d3bc86a2c74c9796d5aeb3',48,'91.178.185.14',1437093890),('db4368d482b2eb347cb7ca68cbcbdbd9',48,'91.177.136.56',1436374768),('fb9a1b4be98b9c0e12b2fcb3ff6f0044',48,'80.200.19.209',1439474416);
/*!40000 ALTER TABLE `phpbb_sessions_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_sitelist`
--

DROP TABLE IF EXISTS `phpbb_sitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_sitelist`
--

LOCK TABLES `phpbb_sitelist` WRITE;
/*!40000 ALTER TABLE `phpbb_sitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_sitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_smilies`
--

DROP TABLE IF EXISTS `phpbb_smilies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`smiley_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_smilies`
--

LOCK TABLES `phpbb_smilies` WRITE;
/*!40000 ALTER TABLE `phpbb_smilies` DISABLE KEYS */;
INSERT INTO `phpbb_smilies` VALUES (1,':D','Heureux','icon_e_biggrin.gif',15,17,1,1),(2,':-D','Heureux','icon_e_biggrin.gif',15,17,4,1),(3,':grin:','Heureux','icon_e_biggrin.gif',15,17,5,1),(4,':)','Sourire','icon_e_smile.gif',15,17,6,1),(5,':-)','Sourire','icon_e_smile.gif',15,17,7,1),(6,':smile:','Sourire','icon_e_smile.gif',15,17,8,1),(7,';)','Clin d’œil','icon_e_wink.gif',15,17,9,1),(8,';-)','Clin d’œil','icon_e_wink.gif',15,17,10,1),(9,':wink:','Clin d’œil','icon_e_wink.gif',15,17,11,1),(10,':(','Triste','icon_e_sad.gif',15,17,12,1),(11,':-(','Triste','icon_e_sad.gif',15,17,13,1),(12,':sad:','Triste','icon_e_sad.gif',15,17,14,1),(13,':o','Étonné','icon_e_surprised.gif',15,17,15,1),(14,':-o','Étonné','icon_e_surprised.gif',15,17,16,1),(15,':eek:','Étonné','icon_e_surprised.gif',15,17,17,1),(16,':shock:','Scandalisé','icon_eek.gif',15,17,18,1),(17,':?','Troublé','icon_e_confused.gif',15,17,19,1),(18,':-?','Troublé','icon_e_confused.gif',15,17,20,1),(19,':???:','Troublé','icon_e_confused.gif',15,17,21,1),(20,'8-)','Décontracté','icon_cool.gif',15,17,22,1),(21,':cool:','Décontracté','icon_cool.gif',15,17,23,1),(22,':lol:','Rire','icon_lol.gif',15,17,24,1),(23,':x','Colère','icon_mad.gif',15,17,25,1),(24,':-x','Colère','icon_mad.gif',15,17,26,1),(25,':mad:','Colère','icon_mad.gif',15,17,27,1),(26,':P','Tire la langue','icon_razz.gif',15,17,28,1),(27,':-P','Tire la langue','icon_razz.gif',15,17,29,1),(28,':razz:','Tire la langue','icon_razz.gif',15,17,30,1),(29,':oops:','Embarrassé','icon_redface.gif',15,17,31,1),(30,':cry:','Pleure','icon_cry.gif',15,17,32,1),(31,':evil:','Colère diabolique','icon_evil.gif',15,17,33,1),(32,':twisted:','Sourire diabolique','icon_twisted.gif',15,17,34,1),(33,':roll:','Roule des yeux','icon_rolleyes.gif',15,17,35,1),(34,':!:','Exclamation','icon_exclaim.gif',15,17,36,1),(35,':?:','Question','icon_question.gif',15,17,37,1),(36,':idea:','Idée','icon_idea.gif',15,17,38,1),(37,':arrow:','Flèche','icon_arrow.gif',15,17,39,1),(38,':|','Neutre','icon_neutral.gif',15,17,40,1),(39,':-|','Neutre','icon_neutral.gif',15,17,41,1),(40,':mrgreen:','M. Vert','icon_mrgreen.gif',15,17,42,1),(41,':geek:','Geek','icon_e_geek.gif',17,17,43,1),(42,':ugeek:','Super geek','icon_e_ugeek.gif',17,18,44,1),(43,':B:','Bravo','icon_bravo.gif',20,30,3,1),(44,'(y)','Super','icon_pouce.gif',19,19,2,1);
/*!40000 ALTER TABLE `phpbb_smilies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_styles`
--

DROP TABLE IF EXISTS `phpbb_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_styles` (
  `style_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `style_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `style_parent_id` int(4) unsigned NOT NULL DEFAULT '0',
  `style_parent_tree` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`style_id`),
  UNIQUE KEY `style_name` (`style_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_styles`
--

LOCK TABLES `phpbb_styles` WRITE;
/*!40000 ALTER TABLE `phpbb_styles` DISABLE KEYS */;
INSERT INTO `phpbb_styles` VALUES (1,'prosilver','&copy; phpBB Limited',1,'prosilver','kNg=',0,'');
/*!40000 ALTER TABLE `phpbb_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_teampage`
--

DROP TABLE IF EXISTS `phpbb_teampage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_teampage` (
  `teampage_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `teampage_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `teampage_position` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `teampage_parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`teampage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_teampage`
--

LOCK TABLES `phpbb_teampage` WRITE;
/*!40000 ALTER TABLE `phpbb_teampage` DISABLE KEYS */;
INSERT INTO `phpbb_teampage` VALUES (1,5,'',1,0),(2,4,'',2,0);
/*!40000 ALTER TABLE `phpbb_teampage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_topics`
--

DROP TABLE IF EXISTS `phpbb_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_length` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `topic_delete_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_delete_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `forum_id_type` (`forum_id`,`topic_type`),
  KEY `last_post_time` (`topic_last_post_time`),
  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`),
  KEY `topic_visibility` (`topic_visibility`),
  KEY `forum_vis_last` (`forum_id`,`topic_visibility`,`topic_last_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_topics`
--

LOCK TABLES `phpbb_topics` WRITE;
/*!40000 ALTER TABLE `phpbb_topics` DISABLE KEYS */;
INSERT INTO `phpbb_topics` VALUES (1,6,0,0,0,'Explication du forum',2,1439034525,0,14,1,0,1,'Alexandra','AA0000',1,2,'Alexandra','AA0000','Explication du forum',1439034525,1439902597,0,0,0,'',0,0,0,0,0,1,0,'',0,1,0,0),(2,3,0,0,0,'Réglement',2,1439035357,0,11,1,0,2,'Alexandra','AA0000',2,2,'Alexandra','AA0000','Réglement',1439035357,1439645661,0,0,0,'',0,0,0,0,0,1,0,'',0,1,0,0),(3,6,0,0,0,'Tout &quot;savoir&quot; s\'acquiert, toute &quot;connaissance&quot; se transmet.',2,1439140458,0,25,0,0,3,'Alexandra','AA0000',3,2,'Alexandra','AA0000','Tout &quot;savoir&quot; s\'acquiert, toute &quot;connaissance&quot; se transmet.',1439140458,1439888040,0,0,0,'',0,0,0,0,0,1,0,'',0,1,0,0),(5,18,0,0,0,'Phrases positives',2,1439422190,0,16,0,0,5,'Alexandra','AA0000',16,2,'Alexandra','AA0000','Re: Phrases positives',1439628455,1439655119,0,0,0,'',0,0,0,0,0,1,0,'',0,7,0,0),(6,13,0,0,0,'Titre Livres',2,1439423341,0,14,0,0,6,'Alexandra','AA0000',6,2,'Alexandra','AA0000','Titre Livres',1439423341,1439891841,0,0,0,'',0,0,0,0,0,1,0,'',0,1,0,0),(7,19,0,0,0,'Alexandra',2,1439455715,0,4,0,0,7,'Alexandra','AA0000',10,2,'Alexandra','AA0000','Re: Alexandra',1439627772,1439655725,0,0,0,'',0,0,1,0,0,1,0,'',0,3,0,0),(8,3,0,0,0,'Les conditions générales',2,1439471617,0,6,1,0,8,'Alexandra','AA0000',8,2,'Alexandra','AA0000','Les conditions générales',1439471617,1439645426,0,0,0,'',0,0,1,0,0,1,0,'',0,1,0,0);
/*!40000 ALTER TABLE `phpbb_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_topics_posted`
--

DROP TABLE IF EXISTS `phpbb_topics_posted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_topics_posted`
--

LOCK TABLES `phpbb_topics_posted` WRITE;
/*!40000 ALTER TABLE `phpbb_topics_posted` DISABLE KEYS */;
INSERT INTO `phpbb_topics_posted` VALUES (2,1,1),(2,2,1),(2,3,1),(2,5,1),(2,6,1),(2,7,1),(2,8,1);
/*!40000 ALTER TABLE `phpbb_topics_posted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_topics_track`
--

DROP TABLE IF EXISTS `phpbb_topics_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_topics_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_topics_track`
--

LOCK TABLES `phpbb_topics_track` WRITE;
/*!40000 ALTER TABLE `phpbb_topics_track` DISABLE KEYS */;
INSERT INTO `phpbb_topics_track` VALUES (2,3,6,1439149813),(2,5,18,1439628455),(2,6,13,1439453684),(2,7,19,1439627772);
/*!40000 ALTER TABLE `phpbb_topics_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_topics_watch`
--

DROP TABLE IF EXISTS `phpbb_topics_watch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_topics_watch`
--

LOCK TABLES `phpbb_topics_watch` WRITE;
/*!40000 ALTER TABLE `phpbb_topics_watch` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_topics_watch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_user_group`
--

DROP TABLE IF EXISTS `phpbb_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_leader` (`group_leader`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_user_group`
--

LOCK TABLES `phpbb_user_group` WRITE;
/*!40000 ALTER TABLE `phpbb_user_group` DISABLE KEYS */;
INSERT INTO `phpbb_user_group` VALUES (1,1,0,0),(2,2,0,0),(4,2,0,0),(5,2,1,0),(6,3,0,0),(6,4,0,0),(6,5,0,0),(6,6,0,0),(6,7,0,0),(6,8,0,0),(6,9,0,0),(6,10,0,0),(6,11,0,0),(6,12,0,0),(6,13,0,0),(6,14,0,0),(6,15,0,0),(6,16,0,0),(6,17,0,0),(6,18,0,0),(6,19,0,0),(6,20,0,0),(6,21,0,0),(6,22,0,0),(6,23,0,0),(6,24,0,0),(6,25,0,0),(6,26,0,0),(6,27,0,0),(6,28,0,0),(6,29,0,0),(6,30,0,0),(6,31,0,0),(6,32,0,0),(6,33,0,0),(6,34,0,0),(6,35,0,0),(6,36,0,0),(6,37,0,0),(6,38,0,0),(6,39,0,0),(6,40,0,0),(6,41,0,0),(6,42,0,0),(6,43,0,0),(6,44,0,0),(6,45,0,0),(6,46,0,0),(6,47,0,0),(2,48,0,0),(7,48,0,0),(2,49,0,0),(7,49,0,0),(4,49,0,0),(2,50,0,0),(7,50,0,0),(2,51,0,0),(7,51,0,0),(2,52,0,0),(7,52,0,0),(2,53,0,0),(7,53,0,0);
/*!40000 ALTER TABLE `phpbb_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_user_notifications`
--

DROP TABLE IF EXISTS `phpbb_user_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_user_notifications` (
  `item_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `method` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notify` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_user_notifications`
--

LOCK TABLES `phpbb_user_notifications` WRITE;
/*!40000 ALTER TABLE `phpbb_user_notifications` DISABLE KEYS */;
INSERT INTO `phpbb_user_notifications` VALUES ('notification.type.post',0,2,'',1),('notification.type.post',0,2,'notification.method.email',1),('notification.type.topic',0,2,'',1),('notification.type.topic',0,2,'notification.method.email',1),('notification.type.post',0,3,'',1),('notification.type.post',0,3,'notification.method.email',1),('notification.type.topic',0,3,'',1),('notification.type.topic',0,3,'notification.method.email',1),('notification.type.post',0,4,'',1),('notification.type.post',0,4,'notification.method.email',1),('notification.type.topic',0,4,'',1),('notification.type.topic',0,4,'notification.method.email',1),('notification.type.post',0,5,'',1),('notification.type.post',0,5,'notification.method.email',1),('notification.type.topic',0,5,'',1),('notification.type.topic',0,5,'notification.method.email',1),('notification.type.post',0,6,'',1),('notification.type.post',0,6,'notification.method.email',1),('notification.type.topic',0,6,'',1),('notification.type.topic',0,6,'notification.method.email',1),('notification.type.post',0,7,'',1),('notification.type.post',0,7,'notification.method.email',1),('notification.type.topic',0,7,'',1),('notification.type.topic',0,7,'notification.method.email',1),('notification.type.post',0,8,'',1),('notification.type.post',0,8,'notification.method.email',1),('notification.type.topic',0,8,'',1),('notification.type.topic',0,8,'notification.method.email',1),('notification.type.post',0,9,'',1),('notification.type.post',0,9,'notification.method.email',1),('notification.type.topic',0,9,'',1),('notification.type.topic',0,9,'notification.method.email',1),('notification.type.post',0,10,'',1),('notification.type.post',0,10,'notification.method.email',1),('notification.type.topic',0,10,'',1),('notification.type.topic',0,10,'notification.method.email',1),('notification.type.post',0,11,'',1),('notification.type.post',0,11,'notification.method.email',1),('notification.type.topic',0,11,'',1),('notification.type.topic',0,11,'notification.method.email',1),('notification.type.post',0,12,'',1),('notification.type.post',0,12,'notification.method.email',1),('notification.type.topic',0,12,'',1),('notification.type.topic',0,12,'notification.method.email',1),('notification.type.post',0,13,'',1),('notification.type.post',0,13,'notification.method.email',1),('notification.type.topic',0,13,'',1),('notification.type.topic',0,13,'notification.method.email',1),('notification.type.post',0,14,'',1),('notification.type.post',0,14,'notification.method.email',1),('notification.type.topic',0,14,'',1),('notification.type.topic',0,14,'notification.method.email',1),('notification.type.post',0,15,'',1),('notification.type.post',0,15,'notification.method.email',1),('notification.type.topic',0,15,'',1),('notification.type.topic',0,15,'notification.method.email',1),('notification.type.post',0,16,'',1),('notification.type.post',0,16,'notification.method.email',1),('notification.type.topic',0,16,'',1),('notification.type.topic',0,16,'notification.method.email',1),('notification.type.post',0,17,'',1),('notification.type.post',0,17,'notification.method.email',1),('notification.type.topic',0,17,'',1),('notification.type.topic',0,17,'notification.method.email',1),('notification.type.post',0,18,'',1),('notification.type.post',0,18,'notification.method.email',1),('notification.type.topic',0,18,'',1),('notification.type.topic',0,18,'notification.method.email',1),('notification.type.post',0,19,'',1),('notification.type.post',0,19,'notification.method.email',1),('notification.type.topic',0,19,'',1),('notification.type.topic',0,19,'notification.method.email',1),('notification.type.post',0,20,'',1),('notification.type.post',0,20,'notification.method.email',1),('notification.type.topic',0,20,'',1),('notification.type.topic',0,20,'notification.method.email',1),('notification.type.post',0,21,'',1),('notification.type.post',0,21,'notification.method.email',1),('notification.type.topic',0,21,'',1),('notification.type.topic',0,21,'notification.method.email',1),('notification.type.post',0,22,'',1),('notification.type.post',0,22,'notification.method.email',1),('notification.type.topic',0,22,'',1),('notification.type.topic',0,22,'notification.method.email',1),('notification.type.post',0,23,'',1),('notification.type.post',0,23,'notification.method.email',1),('notification.type.topic',0,23,'',1),('notification.type.topic',0,23,'notification.method.email',1),('notification.type.post',0,24,'',1),('notification.type.post',0,24,'notification.method.email',1),('notification.type.topic',0,24,'',1),('notification.type.topic',0,24,'notification.method.email',1),('notification.type.post',0,25,'',1),('notification.type.post',0,25,'notification.method.email',1),('notification.type.topic',0,25,'',1),('notification.type.topic',0,25,'notification.method.email',1),('notification.type.post',0,26,'',1),('notification.type.post',0,26,'notification.method.email',1),('notification.type.topic',0,26,'',1),('notification.type.topic',0,26,'notification.method.email',1),('notification.type.post',0,27,'',1),('notification.type.post',0,27,'notification.method.email',1),('notification.type.topic',0,27,'',1),('notification.type.topic',0,27,'notification.method.email',1),('notification.type.post',0,28,'',1),('notification.type.post',0,28,'notification.method.email',1),('notification.type.topic',0,28,'',1),('notification.type.topic',0,28,'notification.method.email',1),('notification.type.post',0,29,'',1),('notification.type.post',0,29,'notification.method.email',1),('notification.type.topic',0,29,'',1),('notification.type.topic',0,29,'notification.method.email',1),('notification.type.post',0,30,'',1),('notification.type.post',0,30,'notification.method.email',1),('notification.type.topic',0,30,'',1),('notification.type.topic',0,30,'notification.method.email',1),('notification.type.post',0,31,'',1),('notification.type.post',0,31,'notification.method.email',1),('notification.type.topic',0,31,'',1),('notification.type.topic',0,31,'notification.method.email',1),('notification.type.post',0,32,'',1),('notification.type.post',0,32,'notification.method.email',1),('notification.type.topic',0,32,'',1),('notification.type.topic',0,32,'notification.method.email',1),('notification.type.post',0,33,'',1),('notification.type.post',0,33,'notification.method.email',1),('notification.type.topic',0,33,'',1),('notification.type.topic',0,33,'notification.method.email',1),('notification.type.post',0,34,'',1),('notification.type.post',0,34,'notification.method.email',1),('notification.type.topic',0,34,'',1),('notification.type.topic',0,34,'notification.method.email',1),('notification.type.post',0,35,'',1),('notification.type.post',0,35,'notification.method.email',1),('notification.type.topic',0,35,'',1),('notification.type.topic',0,35,'notification.method.email',1),('notification.type.post',0,36,'',1),('notification.type.post',0,36,'notification.method.email',1),('notification.type.topic',0,36,'',1),('notification.type.topic',0,36,'notification.method.email',1),('notification.type.post',0,37,'',1),('notification.type.post',0,37,'notification.method.email',1),('notification.type.topic',0,37,'',1),('notification.type.topic',0,37,'notification.method.email',1),('notification.type.post',0,38,'',1),('notification.type.post',0,38,'notification.method.email',1),('notification.type.topic',0,38,'',1),('notification.type.topic',0,38,'notification.method.email',1),('notification.type.post',0,39,'',1),('notification.type.post',0,39,'notification.method.email',1),('notification.type.topic',0,39,'',1),('notification.type.topic',0,39,'notification.method.email',1),('notification.type.post',0,40,'',1),('notification.type.post',0,40,'notification.method.email',1),('notification.type.topic',0,40,'',1),('notification.type.topic',0,40,'notification.method.email',1),('notification.type.post',0,41,'',1),('notification.type.post',0,41,'notification.method.email',1),('notification.type.topic',0,41,'',1),('notification.type.topic',0,41,'notification.method.email',1),('notification.type.post',0,42,'',1),('notification.type.post',0,42,'notification.method.email',1),('notification.type.topic',0,42,'',1),('notification.type.topic',0,42,'notification.method.email',1),('notification.type.post',0,43,'',1),('notification.type.post',0,43,'notification.method.email',1),('notification.type.topic',0,43,'',1),('notification.type.topic',0,43,'notification.method.email',1),('notification.type.post',0,44,'',1),('notification.type.post',0,44,'notification.method.email',1),('notification.type.topic',0,44,'',1),('notification.type.topic',0,44,'notification.method.email',1),('notification.type.post',0,45,'',1),('notification.type.post',0,45,'notification.method.email',1),('notification.type.topic',0,45,'',1),('notification.type.topic',0,45,'notification.method.email',1),('notification.type.post',0,46,'',1),('notification.type.post',0,46,'notification.method.email',1),('notification.type.topic',0,46,'',1),('notification.type.topic',0,46,'notification.method.email',1),('notification.type.post',0,47,'',1),('notification.type.post',0,47,'notification.method.email',1),('notification.type.topic',0,47,'',1),('notification.type.topic',0,47,'notification.method.email',1),('notification.type.post',0,48,'',1),('notification.type.post',0,48,'notification.method.email',1),('notification.type.topic',0,48,'',1),('notification.type.topic',0,48,'notification.method.email',1),('notification.type.post',0,49,'',1),('notification.type.post',0,49,'notification.method.email',1),('notification.type.topic',0,49,'',1),('notification.type.topic',0,49,'notification.method.email',1),('notification.type.post',0,50,'',1),('notification.type.post',0,50,'notification.method.email',1),('notification.type.topic',0,50,'',1),('notification.type.topic',0,50,'notification.method.email',1),('notification.type.post',0,51,'',1),('notification.type.post',0,51,'notification.method.email',1),('notification.type.topic',0,51,'',1),('notification.type.topic',0,51,'notification.method.email',1),('notification.type.post',0,52,'',1),('notification.type.post',0,52,'notification.method.email',1),('notification.type.topic',0,52,'',1),('notification.type.topic',0,52,'notification.method.email',1),('notification.type.post',0,53,'',1),('notification.type.post',0,53,'notification.method.email',1),('notification.type.topic',0,53,'',1),('notification.type.topic',0,53,'notification.method.email',1);
/*!40000 ALTER TABLE `phpbb_user_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_users`
--

DROP TABLE IF EXISTS `phpbb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastmark` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) unsigned NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) unsigned NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_dateformat` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_options` int(11) unsigned NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_elonw` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_clean` (`username_clean`),
  KEY `user_birthday` (`user_birthday`),
  KEY `user_email_hash` (`user_email_hash`),
  KEY `user_type` (`user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_users`
--

LOCK TABLES `phpbb_users` WRITE;
/*!40000 ALTER TABLE `phpbb_users` DISABLE KEYS */;
INSERT INTO `phpbb_users` VALUES (1,2,1,'00000000000w27wrgg\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\n\n\n\n\n\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000',0,'',1433253173,'Anonymous','anonymous','',0,'',0,'',0,0,0,'','2GUD2ATAXI',0,0,0,0,0,0,0,'en','','d M Y H:i',1,0,'',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,230271,'','',0,0,'','','','','','','e6b3caf84a77face',1,0,0,1),(2,3,5,'zik0zjzik0zjzik0zc\nqlc4ph000000\ni1cjyo000000\nzik0zj000000\nqlc4ph000000\nqlc4ph000000\nzik0zj000000\n\n\n\n\n\nzik0zj000000\nzik0zj000000\nzik0zj000000\nzik0zj000000\ni1cjyo000000\nzik0zj000000\nzik0zj000000\nzik0zj000000\nzik0zj000000',0,'85.27.74.173',1433253173,'Alexandra','alexandra','$2y$10$f/sblnjMZrS6IUKuZjuxOO/Grpi7IYRobYw4Vj6AD.TMf6BzQTG3O',0,'alexandra7voyante@gmail.com',319870854727,' 7- 7-1965',1439727680,0,1439628455,'adm/index.php?action=edit&i=users&u=50','',1439035430,0,0,0,0,0,15,'fr','Europe/Brussels','d F Y, H:i',1,1,'AA0000',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,1,230271,'2_1439205782.jpg','avatar.driver.upload',72,90,'','','','','','','e4b43df1cfb1bbdf',0,0,0,1),(3,2,6,'',0,'',1433253189,'AdsBot [Google]','adsbot [google]','',1433253189,'',0,'',0,1433253189,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','31c2feae24536a71',0,0,0,1),(4,2,6,'',0,'',1433253189,'Alexa [Bot]','alexa [bot]','',1433253189,'',0,'',0,1433253189,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','defe38f3bf46572d',0,0,0,1),(5,2,6,'',0,'',1433253190,'Alta Vista [Bot]','alta vista [bot]','',1433253190,'',0,'',0,1433253190,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','d98fbee74f803683',0,0,0,1),(6,2,6,'',0,'',1433253190,'Ask Jeeves [Bot]','ask jeeves [bot]','',1433253190,'',0,'',0,1433253190,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','2de5d831c4c1442b',0,0,0,1),(7,2,6,'',0,'',1433253190,'Baidu [Spider]','baidu [spider]','',1433253190,'',0,'',0,1433253190,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','b540367073b3011d',0,0,0,1),(8,2,6,'\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\n\n\n\n\n\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000',0,'',1433253190,'Bing [Bot]','bing [bot]','',1433253190,'',0,'',1439596613,1433253190,0,'viewforum.php?f=17','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','9ab7fda57bf5ef37',0,0,0,1),(9,2,6,'',0,'',1433253190,'Exabot [Bot]','exabot [bot]','',1433253190,'',0,'',0,1433253190,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','281643595e7c24c3',0,0,0,1),(10,2,6,'',0,'',1433253190,'FAST Enterprise [Crawler]','fast enterprise [crawler]','',1433253190,'',0,'',0,1433253190,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','2d39483b75fb8dfc',0,0,0,1),(11,2,6,'',0,'',1433253190,'FAST WebCrawler [Crawler]','fast webcrawler [crawler]','',1433253190,'',0,'',0,1433253190,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','c9fea51cfb845883',0,0,0,1),(12,2,6,'',0,'',1433253190,'Francis [Bot]','francis [bot]','',1433253190,'',0,'',0,1433253190,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','9f812d572840314f',0,0,0,1),(13,2,6,'',0,'',1433253190,'Gigabot [Bot]','gigabot [bot]','',1433253190,'',0,'',0,1433253190,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','d05d4ab6b2a364ad',0,0,0,1),(14,2,6,'',0,'',1433253190,'Google Adsense [Bot]','google adsense [bot]','',1433253190,'',0,'',0,1433253190,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','22026f84315cf9e2',0,0,0,1),(15,2,6,'',0,'',1433253190,'Google Desktop','google desktop','',1433253190,'',0,'',0,1433253190,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','2622094f0ccb0a10',0,0,0,1),(16,2,6,'',0,'',1433253190,'Google Feedfetcher','google feedfetcher','',1433253190,'',0,'',1439417827,1433253190,0,'index.php','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','940387e7a537d781',0,0,0,1),(17,2,6,'',0,'',1433253190,'Google [Bot]','google [bot]','',1433253190,'',0,'',1439417003,1433253190,0,'app.php/robots.txt','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','56f98da223d1bbdd',0,0,0,1),(18,2,6,'',0,'',1433253190,'Heise IT-Markt [Crawler]','heise it-markt [crawler]','',1433253191,'',0,'',0,1433253191,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','8750edd3313f6000',0,0,0,1),(19,2,6,'',0,'',1433253191,'Heritrix [Crawler]','heritrix [crawler]','',1433253191,'',0,'',0,1433253191,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','0b6bba1613774fc5',0,0,0,1),(20,2,6,'',0,'',1433253191,'IBM Research [Bot]','ibm research [bot]','',1433253191,'',0,'',0,1433253191,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','ed433bb03c66f0eb',0,0,0,1),(21,2,6,'',0,'',1433253191,'ICCrawler - ICjobs','iccrawler - icjobs','',1433253191,'',0,'',0,1433253191,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','900443294efb138c',0,0,0,1),(22,2,6,'',0,'',1433253191,'ichiro [Crawler]','ichiro [crawler]','',1433253191,'',0,'',0,1433253191,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','62c2954ce8cd098a',0,0,0,1),(23,2,6,'',0,'',1433253191,'Majestic-12 [Bot]','majestic-12 [bot]','',1433253191,'',0,'',1436235537,1433253191,0,'feed.php?f=5','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','b67bae985d0aa528',0,0,0,1),(24,2,6,'',0,'',1433253191,'Metager [Bot]','metager [bot]','',1433253191,'',0,'',0,1433253191,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','504e049ea5ff5124',0,0,0,1),(25,2,6,'',0,'',1433253191,'MSN NewsBlogs','msn newsblogs','',1433253191,'',0,'',0,1433253191,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','366393c3ca26dd62',0,0,0,1),(26,2,6,'',0,'',1433253191,'MSN [Bot]','msn [bot]','',1433253191,'',0,'',0,1433253191,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','6d2200850788632c',0,0,0,1),(27,2,6,'',0,'',1433253191,'MSNbot Media','msnbot media','',1433253191,'',0,'',0,1433253191,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','d557e14a1eb3c562',0,0,0,1),(28,2,6,'',0,'',1433253192,'Nutch [Bot]','nutch [bot]','',1433253192,'',0,'',0,1433253192,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','79634f06658872fe',0,0,0,1),(29,2,6,'',0,'',1433253192,'Online link [Validator]','online link [validator]','',1433253192,'',0,'',0,1433253192,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','ffea6952c19e0b61',0,0,0,1),(30,2,6,'',0,'',1433253192,'psbot [Picsearch]','psbot [picsearch]','',1433253192,'',0,'',0,1433253192,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','5dd038ff95981f26',0,0,0,1),(31,2,6,'',0,'',1433253192,'Sensis [Crawler]','sensis [crawler]','',1433253192,'',0,'',0,1433253192,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','e3725245d6e7c062',0,0,0,1),(32,2,6,'',0,'',1433253192,'SEO Crawler','seo crawler','',1433253192,'',0,'',0,1433253192,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','687c019360196498',0,0,0,1),(33,2,6,'',0,'',1433253192,'Seoma [Crawler]','seoma [crawler]','',1433253192,'',0,'',0,1433253192,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','dbd89c7d02f49997',0,0,0,1),(34,2,6,'',0,'',1433253192,'SEOSearch [Crawler]','seosearch [crawler]','',1433253192,'',0,'',0,1433253192,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','e1f0e852438e201a',0,0,0,1),(35,2,6,'',0,'',1433253192,'Snappy [Bot]','snappy [bot]','',1433253192,'',0,'',0,1433253192,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','c7c84a5bf52e67c1',0,0,0,1),(36,2,6,'',0,'',1433253192,'Steeler [Crawler]','steeler [crawler]','',1433253192,'',0,'',0,1433253192,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','14ca6e1bc8510c29',0,0,0,1),(37,2,6,'',0,'',1433253192,'Telekom [Bot]','telekom [bot]','',1433253192,'',0,'',0,1433253192,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','cac985a3616b1e04',0,0,0,1),(38,2,6,'',0,'',1433253192,'TurnitinBot [Bot]','turnitinbot [bot]','',1433253192,'',0,'',0,1433253192,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','cd72ef89fa7df921',0,0,0,1),(39,2,6,'',0,'',1433253192,'Voyager [Bot]','voyager [bot]','',1433253193,'',0,'',0,1433253193,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','32a3f5d6eaa6c91c',0,0,0,1),(40,2,6,'',0,'',1433253193,'W3 [Sitesearch]','w3 [sitesearch]','',1433253193,'',0,'',0,1433253193,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','b2a51dc60d3f00c1',0,0,0,1),(41,2,6,'',0,'',1433253193,'W3C [Linkcheck]','w3c [linkcheck]','',1433253193,'',0,'',0,1433253193,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','c524293647c661bd',0,0,0,1),(42,2,6,'',0,'',1433253193,'W3C [Validator]','w3c [validator]','',1433253193,'',0,'',0,1433253193,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','d8da0624bf790e6c',0,0,0,1),(43,2,6,'',0,'',1433253193,'YaCy [Bot]','yacy [bot]','',1433253193,'',0,'',0,1433253193,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','d3a83979e81f4f4a',0,0,0,1),(44,2,6,'',0,'',1433253193,'Yahoo MMCrawler [Bot]','yahoo mmcrawler [bot]','',1433253193,'',0,'',0,1433253193,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','75d10ff0e3d2e401',0,0,0,1),(45,2,6,'',0,'',1433253193,'Yahoo Slurp [Bot]','yahoo slurp [bot]','',1433253193,'',0,'',0,1433253193,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','00a96db42867bae1',0,0,0,1),(46,2,6,'',0,'',1433253193,'Yahoo [Bot]','yahoo [bot]','',1433253193,'',0,'',0,1433253193,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','5a44221709798593',0,0,0,1),(47,2,6,'',0,'',1433253193,'YahooSeeker [Bot]','yahooseeker [bot]','',1433253193,'',0,'',0,1433253193,0,'','',0,0,0,0,0,0,0,'fr','UTC','d F Y, H:i',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'','',0,0,'','','','','','','dc122213d035b1a9',0,0,0,1),(48,3,2,'002t4vzik0ziccftm0\nqlc4ph000000\ni1cjyo000000\ni1cjyo000000\nqlc4ph000000\nqlc4ph000000\nqlc4pj000000\n\n\n\n\n\nqlc4pj000000\nqlc4pj000000\nqlc4pj000000\nqlc4pj000000\ni1cjyo000000\nqlc4pj000000\nqlc4pj000000\nqlc4pj000000\ni1cjyo000000',0,'81.240.237.210',1433318699,'GrCOTE7','grcote7','$2y$10$YKKnUan5ct08uzv7yaLLmOtmrwBbfsQ8UOvYBoudCWiIbQFzMgmWW',1433318699,'grcote7@gmail.com',389317056317,'',1439902809,1433318699,0,'viewforum.php?f=6','',0,0,0,0,0,0,0,'fr','Europe/Paris','|d M Y|, H:i',1,0,'',0,0,0,0,-3,1439159727,0,'t','d',0,'t','a',0,1,0,1,1,1,1,230271,'','',0,0,'','','','','','','db1f554b65234a24',1,0,0,1),(49,0,2,'',0,'85.201.177.181',1433339150,'Pauline','pauline','$2y$10$KW4cxQdsMydz9oAhb6pkMOuNPeEUA6tfMFk5jhNaQ48n9qyj2HG.m',1433339150,'pioupiouone@msn.com',304191433419,'',1433339452,1433339150,0,'memberlist.php?mode=viewprofile&u=49','',0,0,0,0,0,0,0,'fr','Europe/Brussels','|d M Y|, H:i',1,0,'',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,1,230271,'','',0,0,'','','','','','','69446dbe6096fb3c',1,0,0,1),(50,0,2,'',0,'85.27.74.173',1433427983,'Doro','doro','$2y$10$akPNw5WmRvtg6nIRWaqqmOPj.PVZ8Z3o4q4Hf/OKQHV.2NnvMv91u',1439120289,'wilkinson.doro1@gmail.com',15211310925,'',1439219376,1433427983,0,'index.php','',1439038522,0,0,3,0,0,0,'fr','Europe/Brussels','|d M Y|, H:i',1,0,'',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,1,230271,'','',0,0,'','','','','3Q76CQ8FX','$2y$10$NUE4FUaZBbBnPUHaie1g6efs7EgMFWfcQkV9ZVb4Lmk0xq11wczW2','94c1dedbdd7bf2b3',1,0,0,1),(51,0,2,'',0,'85.27.74.173',1433600842,'Carolina','carolina','$2y$10$MWyNnV3twjdlGG4djH8mbuog0WKxFM5aoYnBneWsYu8tafgXN9OXm',1433600842,'jadoulette@live.fr',428529335118,'',1433766464,1433600842,0,'viewforum.php?f=5','',0,0,0,0,0,0,0,'fr','Europe/Brussels','|d M Y|, H:i',1,0,'',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,1,230271,'','',0,0,'','','','','','','bd15c6d99b6e48fc',1,0,0,1),(52,0,2,'',0,'212.71.14.219',1437994025,'Fafa1970','fafa1970','$2y$10$jSFRzr0Ndwj1qh0AGFno8uobNlz5dXRmZG.2s/uruz8ydTf6qLC2i',1437994025,'fabrice.demarco@gmail.com',197746449725,'',1438862827,1437994025,0,'viewforum.php?f=5','',0,0,0,0,0,0,0,'fr','Europe/Brussels','|d M Y|, H:i',1,0,'',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,1,230271,'','',0,0,'','','','','','','249f42485f8339de',1,0,0,1),(53,0,2,'',0,'85.26.2.106',1438090977,'chantal rouyr','chantal rouyr','$2y$10$3qgmlOyrxN75Dy8BA3ewh.45Cq9Ev.lzHbu7bTHzNg6ygsCxchHVy',1438090977,'rouyr.chantal@gmail.com',404016176423,'',1438872354,1438090977,0,'ucp.php?mode=login','',0,0,0,0,0,0,0,'fr','Europe/Brussels','|d M Y|, H:i',1,0,'',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,1,230271,'','',0,0,'','','','','','','513b8c2a9ace7a82',1,0,0,1);
/*!40000 ALTER TABLE `phpbb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_warnings`
--

DROP TABLE IF EXISTS `phpbb_warnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `warning_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_warnings`
--

LOCK TABLES `phpbb_warnings` WRITE;
/*!40000 ALTER TABLE `phpbb_warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_warnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_words`
--

DROP TABLE IF EXISTS `phpbb_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_words`
--

LOCK TABLES `phpbb_words` WRITE;
/*!40000 ALTER TABLE `phpbb_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_zebra`
--

DROP TABLE IF EXISTS `phpbb_zebra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_zebra` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `zebra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `foe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`zebra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_zebra`
--

LOCK TABLES `phpbb_zebra` WRITE;
/*!40000 ALTER TABLE `phpbb_zebra` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_zebra` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-04 10:54:05
