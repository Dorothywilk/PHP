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

-- Export de la structure de la vue ocr2. v_articles_nbcommentaires
-- Création d'une table temporaire pour palier aux erreurs de dépendances de VIEW
CREATE TABLE `v_articles_nbcommentaires` (
	`id` INT(10) UNSIGNED NOT NULL,
	`titre` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`nb_commentaires` INT(10) UNSIGNED NULL
) ENGINE=MyISAM;

-- Export de la structure de la vue ocr2. v_articles_nbcommentaires
-- Suppression de la table temporaire et création finale de la structure d'une vue
DROP TABLE IF EXISTS `v_articles_nbcommentaires`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `v_articles_nbcommentaires` AS SELECT id, titre, nb_commentaires
FROM article ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
