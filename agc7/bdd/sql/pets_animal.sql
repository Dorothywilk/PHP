-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.18 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Export de la structure de la table laravel_a_remettre_laravel. animaux
DROP TABLE IF EXISTS `animaux`;
CREATE TABLE IF NOT EXISTS `animaux` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `clt_id` int(11) unsigned DEFAULT NULL,
  `espece` varchar(40) NOT NULL,
  `sexe` char(1) DEFAULT NULL,
  `date_naissance` datetime DEFAULT NULL,
  `commentaires` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Export de données de la table laravel_a_remettre_laravel.animaux : ~60 rows (environ)
DELETE FROM `animaux`;
/*!40000 ALTER TABLE `animaux` DISABLE KEYS */;
INSERT INTO `animaux` (`id`, `nom`, `clt_id`, `espece`, `sexe`, `date_naissance`, `commentaires`) VALUES
	(1, 'Rox', 11, 'Chien', 'M', '2010-04-05 13:43:00', 'Mordille beaucoup'),
	(2, 'Roucky', 19, 'Chat', NULL, '2010-03-24 02:23:00', NULL),
	(3, 'Schtroumpfette', 18, 'Chat', 'F', '2010-09-13 15:02:00', NULL),
	(4, NULL, NULL, 'Tortue', 'F', '2009-08-03 05:12:00', NULL),
	(5, 'Choupi', 17, 'Chat', NULL, '2010-10-03 16:44:00', 'Né sans oreille gauche'),
	(6, 'Bobosse', 15, 'Tortue', 'F', '2009-06-13 08:17:00', 'Carapace bizarre'),
	(7, 'Caroline', 20, 'Chien', 'F', '2008-12-06 05:18:00', NULL),
	(8, 'Bagherra', 20, 'Chat', 'M', '2008-09-11 15:38:00', NULL),
	(9, NULL, 14, 'Tortue', NULL, '2010-08-23 05:18:00', NULL),
	(10, 'Bobo', 16, 'Chien', 'M', '2010-07-21 15:41:00', NULL),
	(11, 'Canaille', 8, 'Chien', 'F', '2008-02-20 15:45:00', NULL),
	(12, 'Cali', 16, 'Chien', 'F', '2009-05-26 08:54:00', NULL),
	(13, 'Rouquine', NULL, 'Chien', 'F', '2007-04-24 12:54:00', NULL),
	(14, 'Fila', NULL, 'Chien', 'F', '2009-05-26 08:56:00', NULL),
	(15, 'Anya', 17, 'Chien', 'F', '2008-02-20 15:47:00', NULL),
	(16, 'Louya', 2, 'Chien', 'F', '2009-05-26 08:50:00', NULL),
	(17, 'Welva', NULL, 'Chien', 'F', '2008-03-10 13:45:00', NULL),
	(18, 'Zira', 15, 'Chien', 'F', '2007-04-24 12:59:00', NULL),
	(19, 'Java', 18, 'Chien', 'F', '2009-05-26 09:02:00', NULL),
	(20, 'Balou', NULL, 'Chien', 'M', '2007-04-24 12:45:00', NULL),
	(21, 'Pataude', 6, 'Chien', 'F', '2008-03-10 13:43:00', NULL),
	(22, 'Bouli', 15, 'Chien', 'M', '2007-04-24 12:42:00', NULL),
	(23, 'Parlotte', 14, 'Perroquet', 'F', '2009-03-26 07:55:00', NULL),
	(24, 'Cartouche', NULL, 'Chien', 'M', '2007-04-12 05:23:00', NULL),
	(25, 'Zambo', 11, 'Chien', 'M', '2006-05-14 15:50:00', NULL),
	(26, 'Samba', 10, 'Chien', 'M', '2006-05-14 15:48:00', NULL),
	(27, 'Moka', 1, 'Chien', 'M', '2008-03-10 13:40:00', NULL),
	(28, 'Pilou', 14, 'Chien', 'M', '2006-05-14 15:40:00', NULL),
	(29, 'Fiero', 1, 'Chat', 'M', '2009-05-14 06:30:00', NULL),
	(30, 'Zonko', NULL, 'Chat', 'M', '2007-03-12 12:05:00', NULL),
	(31, 'Filou', 9, 'Chat', 'M', '2008-02-20 15:45:00', NULL),
	(32, 'Farceur', 15, 'Chat', 'M', '2007-03-12 12:07:00', NULL),
	(33, 'Caribou', NULL, 'Chat', 'M', '2006-05-19 16:17:00', NULL),
	(34, 'Capou', 19, 'Chat', 'M', '2008-04-20 03:22:00', NULL),
	(35, 'Raccou', NULL, 'Chat', 'M', '2006-05-19 16:56:00', 'Pas de queue depuis la naissance'),
	(36, 'Boucan', 16, 'Chat', 'M', '2009-05-14 06:42:00', NULL),
	(37, 'Callune', 19, 'Chat', 'F', '2006-05-19 16:06:00', NULL),
	(38, 'Boule', 18, 'Chat', 'F', '2009-05-14 06:45:00', NULL),
	(39, 'Zara', 20, 'Chat', 'F', '2008-04-20 03:26:00', NULL),
	(40, 'Milla', 16, 'Chat', 'F', '2007-03-12 12:00:00', NULL),
	(41, 'Feta', 5, 'Chat', 'F', '2006-05-19 15:59:00', NULL),
	(42, 'Bilba', 17, 'Chat', 'F', '2008-04-20 03:20:00', 'Sourde de l\'oreille droite à 80%'),
	(43, 'Cracotte', 1, 'Chat', 'F', '2007-03-12 11:54:00', NULL),
	(44, 'Cawette', 18, 'Chat', 'F', '2006-05-19 16:16:00', NULL),
	(45, 'Nikki', 9, 'Tortue', 'F', '2007-04-01 18:17:00', NULL),
	(46, 'Tortilla', 1, 'Tortue', 'F', '2009-03-24 08:23:00', NULL),
	(47, 'Scroupy', 16, 'Tortue', 'F', '2009-03-26 01:24:00', NULL),
	(48, 'Lulla', 6, 'Tortue', 'F', '2006-03-15 14:56:00', NULL),
	(49, 'Dana', 14, 'Tortue', 'F', '2008-03-15 12:02:00', NULL),
	(50, 'Cheli', NULL, 'Tortue', 'F', '2009-05-25 19:57:00', NULL),
	(51, 'Chicaca', 3, 'Tortue', 'F', '2007-04-01 03:54:00', NULL),
	(52, 'Redbul', 11, 'Tortue', 'F', '2006-03-15 14:26:00', 'Insomniaque'),
	(53, 'Spoutnik', 19, 'Tortue', 'M', '2007-04-02 01:45:00', NULL),
	(54, 'Bubulle', NULL, 'Tortue', 'M', '2008-03-16 08:20:00', NULL),
	(55, 'Relou', NULL, 'Tortue', 'M', '2008-03-15 18:45:00', 'Surpoids'),
	(56, 'Bulbizard', NULL, 'Tortue', 'M', '2009-05-25 18:54:00', NULL),
	(57, 'Safran', 6, 'Perroquet', 'M', '2007-03-04 19:36:00', NULL),
	(58, 'Gingko', NULL, 'Perroquet', 'M', '2008-02-20 02:50:00', NULL),
	(59, 'Bavard', 6, 'Perroquet', 'M', '2009-03-26 08:28:00', NULL),
	(61, 'Jumbo', NULL, 'Élephant', 'M', '1977-03-23 00:00:00', 'Léger surpoids');
/*!40000 ALTER TABLE `animaux` ENABLE KEYS */;

-- Export de la structure de la table laravel_a_remettre_laravel. arbre
DROP TABLE IF EXISTS `arbre`;
CREATE TABLE IF NOT EXISTS `arbre` (
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

-- Export de données de la table laravel_a_remettre_laravel.arbre : ~0 rows (environ)
DELETE FROM `arbre`;
/*!40000 ALTER TABLE `arbre` DISABLE KEYS */;
INSERT INTO `arbre` (`id`, `gauche`, `droite`, `ref`, `id_parent`) VALUES
	(1, 1, 2, 'A', 0);
/*!40000 ALTER TABLE `arbre` ENABLE KEYS */;

-- Export de la structure de la table laravel_a_remettre_laravel. clients
DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `prenom` varchar(60) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_clients_users` (`user_id`),
  CONSTRAINT `FK_clients_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Export de données de la table laravel_a_remettre_laravel.clients : ~3 rows (environ)
DELETE FROM `clients`;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` (`id`, `nom`, `user_id`, `prenom`, `date_naissance`) VALUES
	(1, 'CÔTE', 1, 'Lionel', '1965-03-23'),
	(2, 'TOP', 15, 'Pierre', '2000-06-12'),
	(3, 'RAZ', 16, 'Bob', '2000-06-12');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;

-- Export de la structure de la table laravel_a_remettre_laravel. factures
DROP TABLE IF EXISTS `factures`;
CREATE TABLE IF NOT EXISTS `factures` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `clt_id` int(11) unsigned NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` float NOT NULL,
  KEY `id` (`id`),
  KEY `FK_factures_users` (`clt_id`),
  CONSTRAINT `FK_factures_users` FOREIGN KEY (`clt_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Export de données de la table laravel_a_remettre_laravel.factures : ~4 rows (environ)
DELETE FROM `factures`;
/*!40000 ALTER TABLE `factures` DISABLE KEYS */;
INSERT INTO `factures` (`id`, `clt_id`, `date`, `total`) VALUES
	(1, 1, '2017-10-26 01:47:50', 7),
	(2, 2, '2017-10-26 01:50:52', 22),
	(3, 3, '2017-10-26 01:51:10', 77.7),
	(4, 1, '2017-10-24 01:51:31', 123);
/*!40000 ALTER TABLE `factures` ENABLE KEYS */;

-- Export de la structure de la table laravel_a_remettre_laravel. pets
DROP TABLE IF EXISTS `pets`;
CREATE TABLE IF NOT EXISTS `pets` (
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

-- Export de données de la table laravel_a_remettre_laravel.pets : ~4 rows (environ)
DELETE FROM `pets`;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` (`id`, `nom`, `clt_id`, `espece`, `sexe`, `date_naissance`) VALUES
	(1, 'Rex', NULL, 'Chien', 'M', '2008-10-24'),
	(2, 'Jeny', 1, 'Chien', 'F', '2014-07-05'),
	(3, 'Félix', NULL, 'Chat', 'M', '2012-10-24'),
	(4, 'Mimine', NULL, 'Chat', 'F', '1997-10-24');
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;

-- Export de la structure de la table laravel_a_remettre_laravel. users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
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

-- Export de données de la table laravel_a_remettre_laravel.users : ~22 rows (environ)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `created_at`, `updated_at`, `name`, `email`, `password`, `remember_token`, `role`, `valid`, `confirmed`, `confirmation_code`) VALUES
	(1, '2017-10-22 15:14:31', '2017-10-22 15:14:31', 'GrCOTE7', 'admin@la.fr', '$2y$10$xy7Rb7AAqevl5fDHxfihTueT8YDap/QDGdToI/dP5F4gPD.fuxZpG', 'rxnYjKgAwGy62XvU4ER4BfkTkLPJu0ujWQ4Sdye7NHw7fzRHFOIj6GEpTDxr', 'admin', 1, 1, NULL),
	(2, '2017-10-22 15:14:31', '2017-10-22 15:14:31', 'Lio181', 'redac@la.fr', '$2y$10$/B4f2uAkogD5nlupeEKk6.OVLfwrzM7LgNP9kL4C4bmEwMh0SjTye', 'j18xYL93Yf', 'redac', 1, 1, NULL),
	(3, '2017-10-22 15:14:31', '2017-10-22 15:14:31', 'Walker', 'walker@la.fr', '$2y$10$MfLbFGntdV/bYXqU5jfHOu2dhv6ThtnbPRKQ0bGly2U6KQ7031z0a', 'PGLN9RGzqa', 'user', 1, 1, NULL),
	(4, '2017-10-22 15:14:31', '2017-10-22 15:14:31', 'Slacker', 'slacker@la.fr', '$2y$10$XKzx.EmH4dJaOpQi..zY7OuuUp5wuPfsoRVKSqG.zMEXAv3JctkeC', 't6HULdHpiq', 'user', 1, 1, NULL),
	(5, '2017-10-22 15:14:31', '2017-10-22 15:14:31', 'Worker', 'worker@la.fr', '$2y$10$ikPGSfq6Fbw2FeOIda4riObu1fKSEbXHQQYQf81ucQisIxUEW1zLO', 'I4FxCJq5cA', 'user', 0, 1, NULL),
	(6, '2017-10-22 15:14:33', '2017-10-22 15:14:33', 'Dr. Sandra Towne DDS', 'armstrong.blanche@example.org', '$2y$10$untP9Q5.htlnmi8ligM1wul.TmXAsmfa9Fi9HY3pbwcU640EFQPhW', 'C6ITRef183', 'user', 0, 1, NULL),
	(7, '2017-10-22 15:14:33', '2017-10-22 15:14:33', 'Cleora Grimes', 'tromp.jairo@example.net', '$2y$10$yhaTMCe0tj1pbqCI5vL6zOdx.WUAYl88NVitVjpF.eybUsFztXqVa', '1wPFnBchWP', 'user', 1, 1, NULL),
	(8, '2017-10-22 15:14:33', '2017-10-22 15:14:33', 'Jerome Walsh', 'bednar.tianna@example.net', '$2y$10$Hlik3.4OG0BNC/xLeg5FAehgPDMkG4xu9wiobJz.gJXIJRmE/z9bu', '2mj3choVK5', 'user', 1, 1, NULL),
	(9, '2017-10-22 15:14:33', '2017-10-22 15:14:33', 'Ms. Janae Ankunding', 'romaguera.queenie@example.org', '$2y$10$iC6z5S630oDa0Ba7fpRxx.4ll/wmAOUZAACfvJGDgjS5DR4u59m5y', 'tTlgrf7HN8', 'user', 0, 1, NULL),
	(10, '2017-10-22 15:14:33', '2017-10-22 15:14:33', 'Kaelyn Kuphal', 'sstanton@example.net', '$2y$10$3ml97Qzq9Fx4ixwTry.4Jukj1mER/5BOv27HYVtafMxeVzI2UwZu6', 'JYwrJ4Inse', 'user', 1, 0, NULL),
	(11, '2017-10-22 15:14:33', '2017-10-22 15:14:33', 'Furman Wiza', 'xraynor@example.org', '$2y$10$1qdajomURk4R56POspjYTu9PjQonDXht0sxi.3QkTxCpmv2LcZFCO', 'FZngRbLKiT', 'user', 0, 0, NULL),
	(12, '2017-10-22 15:14:33', '2017-10-22 15:14:33', 'Rudy Johnson II', 'evelyn14@example.com', '$2y$10$Lpwn3UTw5V3/dTh0IWVM6exZsc/2nI/H1LLeez/idrMfsvulB8UU2', '3axLxyRBUd', 'user', 0, 1, NULL),
	(13, '2017-10-22 15:14:34', '2017-10-22 15:14:34', 'Kiley Heller', 'slowe@example.org', '$2y$10$kCiMju9raqvCC.0CVtToC.95ptNwrPLAz5kMlkD06e6f2komdjNmO', 'GoC2f612vx', 'user', 0, 1, NULL),
	(14, '2017-10-22 15:14:34', '2017-10-22 15:14:34', 'Harmony Pfeffer', 'howe.tierra@example.org', '$2y$10$77ybRsur7XW2NWJcar4AdesiKZuHtEOwIsJCfklSr1HtzzTBQeBqS', 'JLwatMv8n0', 'user', 0, 1, NULL),
	(15, '2017-10-22 15:14:34', '2017-10-22 15:14:34', 'Lorine', 'jsimonis@example.com', '$2y$10$5y341Uo0eAKP.Aq8lKrFHeE6HVsK3SSmcpQPFi5WAai6NjHExsoi.', '2XDnz5dWGY', 'user', 1, 0, NULL),
	(16, '2017-10-22 15:14:34', '2017-10-22 15:14:34', 'Delaney', 'bessie.welch@example.com', '$2y$10$Gr/5xomBZhKmrl1lHHF/c.Qg65xXVmJGKVJ197ydUsCJp6G/x2QRC', 'w59lHKMTpm', 'user', 1, 1, NULL),
	(17, '2017-10-22 15:14:34', '2017-10-22 15:14:34', 'Eveline Bode', 'uconnelly@example.com', '$2y$10$I6SaadgY.go81SGETEiB.e.Cycy5UjOEG8aSdAAt13aTMaKuM2ojG', 'bWOsQFG9bO', 'user', 0, 1, NULL),
	(18, '2017-10-22 15:14:34', '2017-10-22 15:14:34', 'Joannie Paucek', 'zackary.hills@example.com', '$2y$10$Y0pN6ixQ1WN7EH6NSzqoUOl5IIMGzZNXhg4sLQ7aVyiJiaaNyfIwG', 'jdruUmKBAY', 'user', 1, 0, NULL),
	(19, '2017-10-22 15:14:34', '2017-10-22 15:14:34', 'Ms. Name Lindgren Sr.', 'yasmeen.reichert@example.com', '$2y$10$Utvt6LXyOGCxBkWUrpQL0e1Kjabq4SIQJ2dL9JFkbLmOBIO64s2t2', '6p8kOYPlt3', 'user', 1, 1, NULL),
	(20, '2017-10-22 15:14:34', '2017-10-22 15:14:34', 'Wilburn Borer', 'bayer.frieda@example.net', '$2y$10$YpDO65v7he7IDdn1IvNrPObT.ZHeBPYg2ZvOnxrO5W2eTIJaMZJBK', '5lRasfH8d1', 'user', 1, 1, NULL),
	(21, '2017-10-22 15:14:36', '2017-10-22 15:14:36', 'Sorditofublos', 'sordi@la.fr', '$2y$10$B4KSc48LUnh/WprQb4s4gu8qwfzCK7AFTGruofLrRSqwVT0vFczne', 'W1dDE7ZzqD', 'user', 1, 1, NULL),
	(22, '2017-10-22 15:14:36', '2017-10-22 15:14:36', 'Martinobinus', 'martin@la.fr', '$2y$10$MLiaAIHXhIQybQcLZlqptu5hN5oiTHDZwiUO5BegTSgwQpeIsDYcu', 'TZA7WYyxGV', 'user', 0, 0, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
