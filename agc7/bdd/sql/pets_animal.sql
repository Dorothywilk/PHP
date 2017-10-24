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

-- Export de la structure de la table laravel. animal
CREATE TABLE IF NOT EXISTS `animal` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `espece` varchar(40) NOT NULL,
  `sexe` char(1) DEFAULT NULL,
  `date_naissance` datetime NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `commentaires` text,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `Index 2` (`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- Export de données de la table laravel.animal : ~59 rows (environ)
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` (`id`, `espece`, `sexe`, `date_naissance`, `nom`, `commentaires`) VALUES
	(1, 'chien', 'M', '2010-04-05 13:43:00', 'Rox', 'Mordille beaucoup'),
	(2, 'chat', NULL, '2010-03-24 02:23:00', 'Roucky', NULL),
	(3, 'chat', 'F', '2010-09-13 15:02:00', 'Schtroumpfette', NULL),
	(4, 'tortue', 'F', '2009-08-03 05:12:00', NULL, NULL),
	(5, 'chat', NULL, '2010-10-03 16:44:00', 'Choupi', 'Né sans oreille gauche'),
	(6, 'tortue', 'F', '2009-06-13 08:17:00', 'Bobosse', 'Carapace bizarre'),
	(7, 'chien', 'F', '2008-12-06 05:18:00', 'Caroline', NULL),
	(8, 'chat', 'M', '2008-09-11 15:38:00', 'Bagherra', NULL),
	(9, 'tortue', NULL, '2010-08-23 05:18:00', NULL, NULL),
	(10, 'chien', 'M', '2010-07-21 15:41:00', 'Bobo', NULL),
	(11, 'chien', 'F', '2008-02-20 15:45:00', 'Canaille', NULL),
	(12, 'chien', 'F', '2009-05-26 08:54:00', 'Cali', NULL),
	(13, 'chien', 'F', '2007-04-24 12:54:00', 'Rouquine', NULL),
	(14, 'chien', 'F', '2009-05-26 08:56:00', 'Fila', NULL),
	(15, 'chien', 'F', '2008-02-20 15:47:00', 'Anya', NULL),
	(16, 'chien', 'F', '2009-05-26 08:50:00', 'Louya', NULL),
	(17, 'chien', 'F', '2008-03-10 13:45:00', 'Welva', NULL),
	(18, 'chien', 'F', '2007-04-24 12:59:00', 'Zira', NULL),
	(19, 'chien', 'F', '2009-05-26 09:02:00', 'Java', NULL),
	(20, 'chien', 'M', '2007-04-24 12:45:00', 'Balou', NULL),
	(21, 'chien', 'F', '2008-03-10 13:43:00', 'Pataude', NULL),
	(22, 'chien', 'M', '2007-04-24 12:42:00', 'Bouli', NULL),
	(24, 'chien', 'M', '2007-04-12 05:23:00', 'Cartouche', NULL),
	(25, 'chien', 'M', '2006-05-14 15:50:00', 'Zambo', NULL),
	(26, 'chien', 'M', '2006-05-14 15:48:00', 'Samba', NULL),
	(27, 'chien', 'M', '2008-03-10 13:40:00', 'Moka', NULL),
	(28, 'chien', 'M', '2006-05-14 15:40:00', 'Pilou', NULL),
	(29, 'chat', 'M', '2009-05-14 06:30:00', 'Fiero', NULL),
	(30, 'chat', 'M', '2007-03-12 12:05:00', 'Zonko', NULL),
	(31, 'chat', 'M', '2008-02-20 15:45:00', 'Filou', NULL),
	(32, 'chat', 'M', '2007-03-12 12:07:00', 'Farceur', NULL),
	(33, 'chat', 'M', '2006-05-19 16:17:00', 'Caribou', NULL),
	(34, 'chat', 'M', '2008-04-20 03:22:00', 'Capou', NULL),
	(35, 'chat', 'M', '2006-05-19 16:56:00', 'Raccou', 'Pas de queue depuis la naissance'),
	(36, 'chat', 'M', '2009-05-14 06:42:00', 'Boucan', NULL),
	(37, 'chat', 'F', '2006-05-19 16:06:00', 'Callune', NULL),
	(38, 'chat', 'F', '2009-05-14 06:45:00', 'Boule', NULL),
	(39, 'chat', 'F', '2008-04-20 03:26:00', 'Zara', NULL),
	(40, 'chat', 'F', '2007-03-12 12:00:00', 'Milla', NULL),
	(41, 'chat', 'F', '2006-05-19 15:59:00', 'Feta', NULL),
	(42, 'chat', 'F', '2008-04-20 03:20:00', 'Bilba', 'Sourde de l\'oreille droite à 80%'),
	(43, 'chat', 'F', '2007-03-12 11:54:00', 'Cracotte', NULL),
	(44, 'chat', 'F', '2006-05-19 16:16:00', 'Cawette', NULL),
	(45, 'tortue', 'F', '2007-04-01 18:17:00', 'Nikki', NULL),
	(46, 'tortue', 'F', '2009-03-24 08:23:00', 'Tortilla', NULL),
	(47, 'tortue', 'F', '2009-03-26 01:24:00', 'Scroupy', NULL),
	(48, 'tortue', 'F', '2006-03-15 14:56:00', 'Lulla', NULL),
	(49, 'tortue', 'F', '2008-03-15 12:02:00', 'Dana', NULL),
	(50, 'tortue', 'F', '2009-05-25 19:57:00', 'Cheli', NULL),
	(51, 'tortue', 'F', '2007-04-01 03:54:00', 'Chicaca', NULL),
	(52, 'tortue', 'F', '2006-03-15 14:26:00', 'Redbul', 'Insomniaque'),
	(53, 'tortue', 'M', '2007-04-02 01:45:00', 'Spoutnik', NULL),
	(54, 'tortue', 'M', '2008-03-16 08:20:00', 'Bubulle', NULL),
	(55, 'tortue', 'M', '2008-03-15 18:45:00', 'Relou', 'Surpoids'),
	(56, 'tortue', 'M', '2009-05-25 18:54:00', 'Bulbizard', NULL),
	(57, 'perroquet', 'M', '2007-03-04 19:36:00', 'Safran', NULL),
	(58, 'perroquet', 'M', '2008-02-20 02:50:00', 'Gingko', NULL),
	(59, 'perroquet', 'M', '2009-03-26 08:28:00', 'Bavard', NULL),
	(60, 'perroquet', 'F', '2009-03-26 07:55:00', 'Parlotte', NULL);
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;

-- Export de la structure de la table laravel. pets
CREATE TABLE IF NOT EXISTS `pets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) DEFAULT NULL,
  `espece` enum('Chien','Chat') DEFAULT NULL,
  `sexe` enum('M','F') DEFAULT NULL,
  `date_naissanceclients` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Export de données de la table laravel.pets : ~4 rows (environ)
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` (`id`, `nom`, `espece`, `sexe`, `date_naissanceclients`) VALUES
	(1, 'Rex', 'Chien', 'M', '2080-10-24'),
	(2, 'Jeny', 'Chien', 'F', '2006-10-24'),
	(3, 'Félix', 'Chat', 'M', '2012-10-24'),
	(4, 'Mimine', 'Chat', 'F', '1997-10-24');
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
