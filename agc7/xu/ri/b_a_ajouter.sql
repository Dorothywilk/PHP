-- phpMyAdmin SQL Dump
-- version 2.7.0-pl1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Mardi 30 Janvier 2018 à 14:22
-- Version du serveur: 5.0.18
-- Version de PHP: 4.4.1-pl1
-- 
-- Base de données: `wwwboos_rsx`
-- 

-- --------------------------------------------------------

USE aaxu;

-- 
-- Structure de la table `xoops_users_2_add`
-- 

CREATE TABLE `xoops_users_2_add` (uuuxoops_users_2_add
  `uid` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(60) NOT NULL default '',
  `prenom` varchar(50) NOT NULL default '',
  `uname` varchar(25) NOT NULL default '',
  `lv` tinyint(2) NOT NULL default '0',
  `typ` char(2) NOT NULL default '',
  `lva` tinyint(5) NOT NULL default '0',
  `lvp` tinyint(5) NOT NULL default '0',
  `avert` int(2) NOT NULL default '0',
  `davert` int(10) unsigned NOT NULL default '0',
  `email` varchar(60) NOT NULL default '',
  `parr` varchar(50) NOT NULL default '0',
  `g7` varchar(50) NOT NULL default '',
  `url` varchar(100) NOT NULL default '',
  `user_avatar` varchar(30) NOT NULL default 'blank.gif',
  `user_regdate` int(10) unsigned NOT NULL default '0',
  `user_int` varchar(5) NOT NULL default '',
  `user_adr` varchar(99) NOT NULL default '',
  `user_adr2` varchar(99) NOT NULL default '',
  `user_sig` tinytext NOT NULL,
  `user_viewemail` tinyint(1) unsigned NOT NULL default '0',
  `actkey` varchar(8) NOT NULL default '',
  `user_cp` int(11) NOT NULL default '0',
  `user_city` varchar(99) NOT NULL default '',
  `user_country` varchar(99) NOT NULL default '',
  `user_enseigne` varchar(99) NOT NULL default '',
  `coll` int(12) NOT NULL default '0',
  `remise` int(12) NOT NULL default '0',
  `solde` int(12) NOT NULL default '0',
  `totacq` int(12) NOT NULL default '0',
  `prod` int(12) NOT NULL default '0',
  `pass` varchar(32) NOT NULL default '',
  `posts` mediumint(8) unsigned NOT NULL default '0',
  `attachsig` tinyint(1) unsigned NOT NULL default '0',
  `rank` smallint(5) unsigned NOT NULL default '0',
  `level` tinyint(3) unsigned NOT NULL default '1',
  `theme` varchar(100) NOT NULL default '',
  `timezone_offset` float(3,1) NOT NULL default '0.0',
  `last_login` int(10) unsigned NOT NULL default '0',
  `umode` varchar(10) NOT NULL default '',
  `uorder` tinyint(1) unsigned NOT NULL default '0',
  `notify_method` tinyint(1) unsigned NOT NULL default '0',
  `notify_mode` tinyint(1) unsigned NOT NULL default '0',
  `user_occ` varchar(100) NOT NULL default '',
  `bio` tinytext NOT NULL,
  `user_intrest` varchar(150) NOT NULL default '',
  `user_mailok` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `uname` (`uname`),
  KEY `uiduname` (`uid`,`uname`),
  KEY `unamepass` (`uname`,`pass`),
  KEY `parr` (`parr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=27220 ;

-- 
-- Contenu de la table `xoops_users_2_add`
-- 

INSERT INTO `xoops_users_2_add` VALUES (27208, '', '', 'Amor22', 0, 'A', 0, 0, 0, 0, 'Amor_nasa_2022@yahoo.fr', '32ahed_zahi', '', '', 'blank.gif', 1370201185, '', '', '0', '', 0, '20021983', 0, '', '', '', 777, 0, 777, 0, 0, '8d944e60d20f33e15d680c1d0e337cff', 0, 0, 0, 1, '', 1.0, 1370201185, '', 0, 1, 0, '', '', '', 1);
INSERT INTO `xoops_users_2_add` VALUES (27209, '', '', 'Herzberger', 0, 'A', 0, 0, 0, 0, 'Sami.laabidi93@facebook.com', 'Safouna', '', '', 'blank.gif', 1371344269, '', '', '0', '', 0, 'bac2013', 0, '', '', '', 777, 0, 777, 0, 0, 'e310c6b5746d913ca8daa90f7b0879db', 0, 0, 0, 1, '', 1.0, 1371344269, '', 0, 1, 0, '', '', '', 1);
INSERT INTO `xoops_users_2_add` VALUES (27210, '', '', 'Nachoune', 0, 'A', 0, 0, 0, 0, 'Nbeaudry@orange.fr', 'Aurli4', '', '', 'blank.gif', 1371431573, '', '', '0', '', 0, 'vanessa', 0, '', '', '', 777, 0, 777, 0, 0, '282bbbfb69da08d03ff4bcf34a94bc53', 0, 0, 0, 1, '', 1.0, 1371431573, '', 0, 1, 0, '', '', '', 1);
INSERT INTO `xoops_users_2_add` VALUES (27211, '', '', 'Bobo94', 0, 'A', 0, 0, 0, 0, 'Ahmed.boudraa@ymail.com', 'Bilel', '', '', 'blank.gif', 1371963657, '', '', '0', '', 0, 'bobo', 0, '', '', '', 777, 0, 777, 0, 0, 'ca2cd2bcc63c4d7c8725577442073dde', 0, 0, 0, 1, '', 1.0, 1371963898, '', 0, 1, 0, '', '', '', 1);
INSERT INTO `xoops_users_2_add` VALUES (27212, 'KHAOULA', 'Guesmi', 'Khaoula2210', 0, 'A', 0, 0, 0, 0, 'Green_easy1987@yahoo.com', 'Tatina90', '', '', 'blank.gif', 1371992035, 'Mme.', '38 Rue Mouhamed Bejaoui Manzel Bourguiba', '', '[color=006633][font=Arial]kb[/font][/color]', 0, 'narmingu', 7050, 'BIZERT', 'TN', '', 777, 0, 777, 0, 0, '056f7bb43522776c43a1f3a90291017c', 0, 0, 0, 1, '', 1.0, 1371992224, 'nest', 0, 1, 0, '', '', '', 1);
INSERT INTO `xoops_users_2_add` VALUES (27213, '', '', 'Bibo0203', 0, 'A', 0, 0, 0, 0, 'Bechir.bouafia@ymail.com', 'Khaoula2210', '', '', 'blank.gif', 1371994743, '', '', '0', '', 0, '12345678', 0, '', '', '', 777, 0, 777, 0, 0, '2a0a69f2d69112dd4dff457c7e0db3ee', 0, 0, 0, 1, '', 1.0, 1373204096, '', 0, 1, 0, '', '', '', 1);
INSERT INTO `xoops_users_2_add` VALUES (27214, '', '', 'Nawel1012', 0, 'A', 0, 0, 0, 0, 'Kitarnawel@hotmail.com', 'Aymen', '', '', 'blank.gif', 1372154041, '', '', '0', '', 0, '22626222', 0, '', '', '', 777, 0, 777, 0, 0, '2095e29e9dd8aca363352c9e522e3e39', 0, 0, 0, 1, '', 1.0, 1372154041, '', 0, 1, 0, '', '', '', 1);
INSERT INTO `xoops_users_2_add` VALUES (27215, '', '', 'Isatay', 0, 'A', 0, 0, 0, 0, 'Josisander@yahoo.fr', 'Kajps4sure', '', '', 'blank.gif', 1372777813, '', '', '0', '', 0, 'owanga', 0, '', '', '', 777, 0, 777, 0, 0, 'e9789e07de1d7927bfdaf844023520cc', 0, 0, 0, 1, '', 1.0, 1372777813, '', 0, 1, 0, '', '', '', 1);
INSERT INTO `xoops_users_2_add` VALUES (27216, '', '', 'Evagik', 0, 'A', 0, 0, 0, 0, 'Evekouamelan@yahoo.fr', 'Perseverance70', '', '', 'blank.gif', 1372955768, '', '', '0', '', 0, 'israel', 0, '', '', '', 777, 0, 777, 0, 0, '3f8454b7f2c12cebb1622b6b0dfd1021', 0, 0, 0, 1, '', 1.0, 1372955768, '', 0, 1, 0, '', '', '', 1);
INSERT INTO `xoops_users_2_add` VALUES (27217, 'CLAUDINE', 'Beauger', 'Iris63', 0, 'A', 0, 0, 0, 0, 'Claudinebeauger63@gmail.com', 'Duchesse49', '', '', 'blank.gif', 1373194125, 'Mme.', '2 Rue Du Grand Champ', '0', '', 0, 'lampion2', 0, 'BEAUMONT', 'FR', '', 777, 0, 777, 0, 0, 'c0134b8a2c12909d73678bcb383b963e', 0, 0, 0, 1, '', 1.0, 1373194306, 'nest', 0, 1, 0, '', '', '', 1);
INSERT INTO `xoops_users_2_add` VALUES (27218, '', '', 'Gallo', 0, 'A', 0, 0, 0, 0, 'Yaroulol14@hotmail.com', 'Sarah2000', '', '', 'blank.gif', 1374014516, '', '', '0', '', 0, 'taftaf14', 0, '', '', '', 777, 0, 777, 0, 0, 'b4d6774aae147ac68972d810f0c2641f', 0, 0, 0, 1, '', 1.0, 1374161668, '', 0, 1, 0, '', '', '', 1);
INSERT INTO `xoops_users_2_add` VALUES (27219, '', '', 'Aminebenhammadi', 0, 'A', 0, 0, 0, 0, 'Amine.benhammadi@yahoo.fr', 'Foued22007', '', '', 'blank.gif', 1374085424, '', '', '0', '', 0, 'azerty19', 0, '', '', '', 777, 0, 777, 0, 0, 'aa9c750655b80c14a55e4a258ece472c', 0, 0, 0, 1, '', 1.0, 1374085424, '', 0, 1, 0, '', '', '', 1);
