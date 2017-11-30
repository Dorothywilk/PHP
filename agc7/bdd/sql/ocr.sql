-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  mar. 07 nov. 2017 à 10:06
-- Version du serveur :  5.7.18
-- Version de PHP :  7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ocr`
--

DELIMITER $$
--
-- Procédures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `afficher_races` ()  BEGIN
    SELECT id, nom, espece_id, prix
    FROM Race;
-- Cette fois, le ; ne nous embêtera pas
-- Et on termine bien sûr la commande CREATE PROCEDURE
-- par notre nouveau délimiteur
-- END| -- Si avec MySQL CLi
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `afficher_race_selon_espece` (IN `p_espece_id` INT)  BEGIN
    SELECT id, nom, espece_id, prix 
    FROM Race
    WHERE espece_id = p_espece_id;  -- Utilisation du paramètre
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ajouter_adoption` (IN `p_client_id` INT, IN `p_animal_id` INT, IN `p_date` DATE, IN `p_paye` TINYINT)  BEGIN
    DECLARE v_prix DECIMAL(7,2);
    
    SELECT COALESCE(Race.prix, Espece.prix) INTO v_prix
    FROM Animal
    INNER JOIN Espece ON Espece.id = Animal.espece_id
    LEFT JOIN Race ON Race.id = Animal.race_id
    WHERE Animal.id = p_animal_id;
    
    INSERT INTO Adoption (animal_id, client_id, date_reservation, date_adoption, prix, paye)
    VALUES (p_animal_id, p_client_id, CURRENT_DATE(), p_date, v_prix, p_paye);
    
  
    SELECT 'Adoption correctement ajoutée' AS message;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ajouter_adoption_continue` (IN `p_client_id` INT, IN `p_animal_id` INT, IN `p_date` DATE, IN `p_paye` TINYINT)  BEGIN
    DECLARE v_prix DECIMAL(7,2);
    DECLARE CONTINUE HANDLER FOR SQLSTATE '23000' SELECT 'Une erreur est survenue...';

    SELECT 'Début procédure';

    SELECT COALESCE(Race.prix, Espece.prix) INTO v_prix
    FROM Animal
    INNER JOIN Espece ON Espece.id = Animal.espece_id
    LEFT JOIN Race ON Race.id = Animal.race_id
    WHERE Animal.id = p_animal_id;
    
    INSERT INTO Adoption (animal_id, client_id, date_reservation, date_adoption, prix, paye)
    VALUES (p_animal_id, p_client_id, CURRENT_DATE(), p_date, v_prix, p_paye);
  
    SELECT 'Fin procédure';
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ajouter_adoption_exit` (IN `p_client_id` INT, IN `p_animal_id` INT, IN `p_date` DATE, IN `p_paye` TINYINT)  BEGIN
    DECLARE v_prix DECIMAL(7,2);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
        BEGIN
            SELECT 'Une erreur est survenue...';
            SELECT 'Arrêt prématuré de la procédure';
        END;

    SELECT 'Début procédure';

    SELECT COALESCE(Race.prix, Espece.prix) INTO v_prix
    FROM Animal
    INNER JOIN Espece ON Espece.id = Animal.espece_id
    LEFT JOIN Race ON Race.id = Animal.race_id
    WHERE Animal.id = p_animal_id;

    INSERT INTO Adoption (animal_id, client_id, date_reservation,
           date_adoption, prix, paye)
    VALUES (p_animal_id, p_client_id, CURRENT_DATE(),
           p_date, v_prix, p_paye);

    SELECT 'Fin procédure';
-- END|
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `aujourdhui_demain` ()  BEGIN
    DECLARE v_date DATE DEFAULT CURRENT_DATE();
    -- On déclare une variable locale et on lui met
    -- une valeur par défaut
    
    SET lc_time_names = 'fr_FR';
    SET @today = v_date;

    SET v_date = v_date + INTERVAL 1 DAY;
    -- On change la valeur de la variable locale

    SELECT DATE_FORMAT(@today, '%W %e %M %Y') AS Aujourdhui,
           DATE_FORMAT(v_date, '%W %e %M %Y') AS Demain;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `calculer_prix` (IN `p_animal_id` INT, INOUT `p_prix` DECIMAL(7,2))  BEGIN
    SELECT p_prix + COALESCE(Race.prix, Espece.prix) INTO p_prix
    FROM Animal
    INNER JOIN Espece ON Espece.id = Animal.espece_id
    LEFT JOIN Race ON Race.id = Animal.race_id
    WHERE Animal.id = p_animal_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `compter_jusque_while` (IN `p_nombre` INT)  BEGIN
    DECLARE v_i INT DEFAULT 1;

    WHILE v_i <= p_nombre DO
        SELECT v_i AS nombre; 

        SET v_i = v_i + 1;    
        -- À ne surtout pas oublier, sinon la condition restera vraie
    END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `compter_races_selon_espece` (`p_espece_id` INT, OUT `p_nb_races` INT)  BEGIN
    SELECT COUNT(*) INTO p_nb_races 
    FROM Race
    WHERE espece_id = p_espece_id;                               
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `est_adopte` (IN `p_animal_id` INT)  BEGIN
    DECLARE v_nb INT DEFAULT 0;
    -- On crée une variable locale

    SELECT COUNT(*) INTO v_nb
    FROM Adoption
    WHERE animal_id = p_animal_id;
    -- On met le nombre de lignes correspondant à l'animal
    -- dans Adoption dans notre variable locale

    IF v_nb > 0 THEN
    -- On teste si v_nb est supérieur à 0
    -- (donc si l'animal a été adopté)
        SELECT "J'ai déjà été adopté !" 'Adopté ?';
    END IF;
    -- Et on n'oublie surtout pas le END IF et le ; final
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `message_sexe` (IN `p_animal_id` INT)  BEGIN
  DECLARE v_sexe VARCHAR(10);

  SELECT sexe INTO v_sexe
  FROM Animal
  WHERE id = p_animal_id;

  IF (v_sexe = 'F') THEN      -- Première possibilité
  SELECT 'Je suis une femelle !' AS sexe;
  ELSEIF (v_sexe = 'M') THEN  -- Deuxième possibilité
  SELECT 'Je suis un mâle !' AS sexe;
  ELSE                        -- Défaut
  SELECT 'Je suis en plein questionnement existentiel...' AS sexe;
  END IF;
  END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `message_sexe2` (IN `p_animal_id` INT)  BEGIN
    DECLARE v_sexe VARCHAR(10);

    SELECT sexe INTO v_sexe
    FROM Animal
    WHERE id = p_animal_id;

    CASE v_sexe
        WHEN 'F' THEN   -- Première possibilité
            SELECT 'Je suis une femelle !' AS sexe;
        WHEN 'M' THEN   -- Deuxième possibilité
            SELECT 'Je suis un mâle !' AS sexe;
        ELSE            -- Défaut
            SELECT 'Je suis en plein questionnement existentiel...' AS sexe;
    END CASE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `parcours_deux_clients` ()  BEGIN
    DECLARE v_nom, v_prenom VARCHAR(100);

    DECLARE curs_clients CURSOR
        FOR SELECT nom, prenom  -- Le SELECT récupère deux colonnes
        FROM Client
        ORDER BY nom, prenom;   
        -- On trie les clients par ordre alphabétique

    OPEN curs_clients;  -- Ouverture du curseur

    FETCH curs_clients INTO v_nom, v_prenom;    
    -- On récupère la première ligne et on assigne les valeurs récupérées à nos variables locales
    SELECT CONCAT(v_prenom, ' ', v_nom) AS 'Premier client';

    FETCH curs_clients INTO v_nom, v_prenom;
    -- On récupère la seconde ligne et on assigne les valeurs récupérées à nos variables locales
    SELECT CONCAT(v_prenom, ' ', v_nom) AS 'Second client';

    CLOSE curs_clients;     -- Fermeture du curseur
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_race_dynamique` (`p_clause` VARCHAR(255))  BEGIN
    SET @sql =
        CONCAT('SELECT nom, description FROM Race ', p_clause);

    PREPARE requete FROM @sql;
    EXECUTE requete;
-- END |
-- DELIMITER ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `test_condition` (IN `p_ville` VARCHAR(100))  BEGIN
    DECLARE v_nom, v_prenom VARCHAR(100);

    DECLARE curs_clients CURSOR
    FOR SELECT nom, prenom
        FROM Client
        WHERE ville = p_ville;

    OPEN curs_clients;

    LOOP
        FETCH curs_clients INTO v_nom, v_prenom;
        SELECT CONCAT(v_prenom, ' ', v_nom) AS 'Client';
    END LOOP;

    CLOSE curs_clients;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `test_condition2` (IN `p_ville` VARCHAR(100))  BEGIN
    DECLARE v_nom, v_prenom VARCHAR(100);
    
    -- On déclare fin comme un BOOLEAN, avec FALSE pour défaut
    DECLARE fin BOOLEAN DEFAULT FALSE;                     
    
    DECLARE curs_clients CURSOR
        FOR SELECT nom, prenom
        FROM Client
        WHERE ville = p_ville;

    -- On utilise TRUE au lieu de 1
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin = TRUE; 

    OPEN curs_clients;                                    

    loop_curseur: LOOP                                                
        FETCH curs_clients INTO v_nom, v_prenom;

        IF fin THEN     -- Plus besoin de "= 1"
            LEAVE loop_curseur;
        END IF;
                   
        SELECT CONCAT(v_prenom, ' ', v_nom) AS 'Client';
    END LOOP;

    CLOSE curs_clients; 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `test_iterate` ()  BEGIN
    DECLARE v_i INT DEFAULT 0;

    boucle_while: WHILE v_i < 3 DO
        SET v_i = v_i + 1;
        SELECT v_i, 'Avant IF' AS message;
 
        IF v_i = 2 THEN
            ITERATE boucle_while;
        END IF;
       
        SELECT v_i, 'Après IF' AS message;  
        -- Ne sera pas exécuté pour v_i = 2
    END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `test_vu` ()  BEGIN
    SET @var = 15;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `uuu` (OUT `p_var` VARCHAR(255))  BEGIN

  declare v_var INT default 0;

  set v_var = 7;

  -- select 1 as Valeur, v_var;
  -- Ne peut être affichée que via MySQL CLi

  select concat(
         'Var loc = ', v_var, ' - Résultat du IF(v_var = 7) = ',
         IF(v_var=7, 777, 333)) into p_var;

-- END|
-- DELIMITER ;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `adoption`
--

CREATE TABLE `adoption` (
  `client_id` smallint(5) UNSIGNED NOT NULL,
  `animal_id` smallint(5) UNSIGNED NOT NULL,
  `date_reservation` date NOT NULL,
  `date_adoption` date DEFAULT NULL,
  `prix` decimal(7,2) UNSIGNED NOT NULL,
  `paye` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `adoption`
--

INSERT INTO `adoption` (`client_id`, `animal_id`, `date_reservation`, `date_adoption`, `prix`, `paye`) VALUES
(1, 8, '2012-05-21', NULL, '735.00', 1),
(1, 39, '2008-08-17', '2008-08-17', '735.00', 1),
(1, 40, '2008-08-17', '2008-08-17', '735.00', 1),
(2, 3, '2011-03-12', '2011-03-12', '835.00', 1),
(2, 18, '2008-06-04', '2008-06-04', '485.00', 1),
(3, 27, '2009-11-17', '2009-11-17', '200.00', 1),
(4, 26, '2007-02-21', '2007-02-21', '485.00', 1),
(4, 41, '2007-02-21', '2007-02-21', '835.00', 1),
(5, 21, '2009-03-08', '2009-03-08', '200.00', 1),
(6, 16, '2010-01-27', '2010-01-27', '200.00', 1),
(7, 5, '2011-04-05', '2011-04-05', '150.00', 1),
(8, 42, '2008-08-16', '2008-08-16', '735.00', 1),
(9, 38, '2007-02-11', '2007-02-11', '985.00', 1),
(9, 55, '2011-02-13', '2011-02-13', '140.00', 1),
(9, 59, '2012-05-22', NULL, '700.00', 0),
(10, 49, '2010-08-17', '2010-08-17', '140.00', 0),
(11, 32, '2008-08-17', '2010-03-09', '140.00', 1),
(11, 62, '2011-03-01', '2011-03-01', '630.00', 0),
(12, 15, '2012-05-22', NULL, '200.00', 1),
(12, 69, '2007-09-20', '2007-09-20', '10.00', 1),
(12, 75, '2012-05-21', NULL, '10.00', 0),
(13, 57, '2012-01-10', '2012-01-10', '700.00', 1),
(14, 58, '2012-02-25', '2012-02-25', '700.00', 1),
(15, 30, '2008-08-17', '2008-08-17', '735.00', 1);

--
-- Déclencheurs `adoption`
--
DELIMITER $$
CREATE TRIGGER `after_delete_adoption` AFTER DELETE ON `adoption` FOR EACH ROW BEGIN
    UPDATE Animal
    SET disponible = TRUE
    WHERE id = OLD.animal_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_adoption` AFTER INSERT ON `adoption` FOR EACH ROW BEGIN
    UPDATE Animal
    SET disponible = FALSE
    WHERE id = NEW.animal_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_adoption` AFTER UPDATE ON `adoption` FOR EACH ROW BEGIN
    IF OLD.animal_id <> NEW.animal_id THEN
        UPDATE Animal
        SET disponible = TRUE
        WHERE id = OLD.animal_id;

        UPDATE Animal
        SET disponible = FALSE
        WHERE id = NEW.animal_id;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_adoption` BEFORE INSERT ON `adoption` FOR EACH ROW BEGIN
    IF NEW.paye != TRUE                                     
    AND NEW.paye != FALSE     
      THEN
        INSERT INTO Erreur (erreur) VALUES ('Erreur : paye doit valoir TRUE (1) ou FALSE (0).');

    ELSEIF NEW.date_adoption < NEW.date_reservation THEN    
        INSERT INTO Erreur (erreur) VALUES ('Erreur : date_adoption doit être >= à date_reservation.');
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_adoption` BEFORE UPDATE ON `adoption` FOR EACH ROW BEGIN
    IF NEW.paye != TRUE                                     
    AND NEW.paye != FALSE     
      THEN
        INSERT INTO Erreur (erreur) VALUES ('Erreur : paye doit valoir TRUE (1) ou FALSE (0).');

    ELSEIF NEW.date_adoption < NEW.date_reservation THEN    
        INSERT INTO Erreur (erreur) VALUES ('Erreur : date_adoption doit être >= à date_reservation.');
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `animal`
--

CREATE TABLE `animal` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `sexe` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_naissance` datetime NOT NULL,
  `nom` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commentaires` text COLLATE utf8_unicode_ci,
  `espece_id` smallint(6) UNSIGNED NOT NULL,
  `race_id` smallint(6) UNSIGNED DEFAULT NULL,
  `mere_id` smallint(6) UNSIGNED DEFAULT NULL,
  `pere_id` smallint(6) UNSIGNED DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `animal`
--

INSERT INTO `animal` (`id`, `sexe`, `date_naissance`, `nom`, `commentaires`, `espece_id`, `race_id`, `mere_id`, `pere_id`, `disponible`) VALUES
(1, 'M', '2010-04-05 13:43:00', 'Rox', 'Mordille beaucoup', 1, 1, 18, 22, 1),
(2, NULL, '2010-03-24 02:23:00', 'Roucky', NULL, 2, NULL, 40, 30, 1),
(3, 'F', '2010-09-13 15:02:00', 'Schtroumpfette', NULL, 2, 4, 41, 31, 0),
(4, 'F', '2009-08-03 05:12:00', NULL, 'Bestiole avec une carapace très dure', 3, NULL, NULL, NULL, 1),
(5, NULL, '2010-10-03 16:44:00', 'Choupi', 'Né sans oreille gauche', 2, NULL, NULL, NULL, 0),
(6, 'F', '2009-06-13 08:17:00', 'Bobosse', 'Carapace bizarre', 3, NULL, NULL, NULL, 1),
(7, 'F', '2008-12-06 05:18:00', 'Caroline', NULL, 1, 2, NULL, NULL, 1),
(8, 'M', '2008-09-11 15:38:00', 'Bagherra', NULL, 2, 5, NULL, NULL, 0),
(9, NULL, '2010-08-23 05:18:00', NULL, 'Bestiole avec une carapace très dure', 3, NULL, NULL, NULL, 1),
(10, 'M', '2010-07-21 15:41:00', 'Bobo', 'Petit pour son âge', 1, NULL, 7, 21, 1),
(11, 'F', '2008-02-20 15:45:00', 'Canaille', NULL, 1, NULL, NULL, NULL, 1),
(12, 'F', '2009-05-26 08:54:00', 'Cali', NULL, 1, 2, NULL, NULL, 1),
(13, 'F', '2007-04-24 12:54:00', 'Rouquine', NULL, 1, 1, NULL, NULL, 1),
(14, 'F', '2009-05-26 08:56:00', 'Fila', NULL, 1, 2, NULL, NULL, 1),
(15, 'F', '2008-02-20 15:47:00', 'Anya', NULL, 1, NULL, NULL, NULL, 0),
(16, 'F', '2009-05-26 08:50:00', 'Louya', NULL, 1, NULL, NULL, NULL, 0),
(17, 'F', '2008-03-10 13:45:00', 'Welva', NULL, 1, NULL, NULL, NULL, 1),
(18, 'F', '2007-04-24 12:59:00', 'Zira', NULL, 1, 1, NULL, NULL, 0),
(19, 'F', '2009-05-26 09:02:00', 'Java', NULL, 1, 2, NULL, NULL, 1),
(20, NULL, '2007-04-24 12:45:00', 'Balou', NULL, 1, 1, NULL, NULL, 1),
(21, 'F', '2008-03-10 13:43:00', 'Pataude', NULL, 1, NULL, NULL, NULL, 0),
(22, 'M', '2007-04-24 12:42:00', 'Bouli', NULL, 1, 1, NULL, NULL, 1),
(24, 'M', '2007-04-12 05:23:00', 'Cartouche', NULL, 1, NULL, NULL, NULL, 1),
(25, 'M', '2006-05-14 15:50:00', 'Zambo', NULL, 1, 1, NULL, NULL, 1),
(26, 'M', '2006-05-14 15:48:00', 'Samba', NULL, 1, 1, NULL, NULL, 0),
(27, 'M', '2008-03-10 13:40:00', 'Moka', NULL, 1, NULL, NULL, NULL, 0),
(28, 'M', '2006-05-14 15:40:00', 'Pilou', NULL, 1, 1, NULL, NULL, 1),
(29, 'M', '2009-05-14 06:30:00', 'Fiero', NULL, 2, 3, NULL, NULL, 1),
(30, 'M', '2007-03-12 12:05:00', 'Zonko', NULL, 2, 5, NULL, NULL, 0),
(31, 'M', '2008-02-20 15:45:00', 'Filou', NULL, 2, 4, NULL, NULL, 1),
(32, 'M', '2009-07-26 11:52:00', 'Spoutnik', NULL, 3, NULL, 52, NULL, 0),
(33, 'M', '2006-05-19 16:17:00', 'Caribou', NULL, 2, 4, NULL, NULL, 1),
(34, 'M', '2008-04-20 03:22:00', 'Capou', NULL, 2, 5, NULL, NULL, 1),
(35, 'M', '2006-05-19 16:56:00', 'Raccou', 'Pas de queue depuis la naissance', 2, 4, NULL, NULL, 1),
(36, 'M', '2009-05-14 06:42:00', 'Boucan', NULL, 2, 3, NULL, NULL, 1),
(37, 'F', '2006-05-19 16:06:00', 'Callune', NULL, 2, 8, NULL, NULL, 1),
(38, 'F', '2009-05-14 06:45:00', 'Boule', NULL, 2, 3, NULL, NULL, 0),
(39, 'F', '2008-04-20 03:26:00', 'Zara', NULL, 2, 5, NULL, NULL, 0),
(40, 'F', '2007-03-12 12:00:00', 'Milla', NULL, 2, 5, NULL, NULL, 0),
(41, 'F', '2006-05-19 15:59:00', 'Feta', NULL, 2, 4, NULL, NULL, 0),
(42, 'F', '2008-04-20 03:20:00', 'Bilba', 'Sourde de l\'oreille droite à 80%', 2, 5, NULL, NULL, 0),
(43, 'F', '2007-03-12 11:54:00', 'Cracotte', NULL, 2, 5, NULL, NULL, 1),
(44, 'F', '2006-05-19 16:16:00', 'Cawette', NULL, 2, 8, NULL, NULL, 1),
(45, 'F', '2007-04-01 18:17:00', 'Nikki', 'Bestiole avec une carapace très dure', 3, NULL, NULL, NULL, 1),
(46, 'F', '2009-03-24 08:23:00', 'Tortilla', 'Bestiole avec une carapace très dure', 3, NULL, NULL, NULL, 1),
(48, 'F', '2006-03-15 14:56:00', 'Lulla', 'Bestiole avec une carapace très dure', 3, NULL, NULL, NULL, 1),
(49, 'F', '2008-03-15 12:02:00', 'Dana', 'Bestiole avec une carapace très dure', 3, NULL, NULL, NULL, 0),
(50, 'F', '2009-05-25 19:57:00', 'Cheli', 'Bestiole avec une carapace très dure', 3, NULL, NULL, NULL, 1),
(51, 'F', '2007-04-01 03:54:00', 'Chicaca', 'Bestiole avec une carapace très dure', 3, NULL, NULL, NULL, 1),
(52, 'F', '2006-03-15 14:26:00', 'Redbul', 'Insomniaque', 3, NULL, NULL, NULL, 1),
(54, 'M', '2008-03-16 08:20:00', 'Bubulle', 'Bestiole avec une carapace très dure', 3, NULL, NULL, NULL, 1),
(55, 'M', '2008-03-15 18:45:00', 'Relou', 'Surpoids', 3, NULL, NULL, NULL, 0),
(56, 'M', '2009-05-25 18:54:00', 'Bulbizard', 'Bestiole avec une carapace très dure', 3, NULL, NULL, NULL, 1),
(57, 'M', '2007-03-04 19:36:00', 'Safran', 'Coco veut un gâteau !', 4, NULL, NULL, NULL, 0),
(58, 'M', '2008-02-20 02:50:00', 'Gingko', 'Coco veut un gâteau !', 4, NULL, NULL, NULL, 0),
(59, 'M', '2009-03-26 08:28:00', 'Bavard', 'Coco veut un gâteau !', 4, NULL, NULL, NULL, 0),
(60, 'F', '2009-03-26 07:55:00', 'Parlotte', 'Coco veut un gâteau !', 4, NULL, NULL, NULL, 1),
(61, 'M', '2010-11-09 00:00:00', 'Yoda', NULL, 2, 5, NULL, NULL, 1),
(62, 'M', '2010-11-05 00:00:00', 'Pipo', NULL, 1, 9, NULL, NULL, 0),
(69, 'F', '2012-02-13 15:45:00', 'Baba', NULL, 5, NULL, NULL, NULL, 0),
(70, 'M', '2012-02-13 15:48:00', 'Bibo', 'Agressif', 5, NULL, 72, 73, 1),
(72, 'F', '2008-02-01 02:25:00', 'Momy', NULL, 5, NULL, NULL, NULL, 1),
(73, 'M', '2007-03-11 12:45:00', 'Popi', NULL, 5, NULL, NULL, NULL, 1),
(75, 'F', '2007-03-12 22:03:00', 'Mimi', NULL, 5, NULL, NULL, NULL, 0);

--
-- Déclencheurs `animal`
--
DELIMITER $$
CREATE TRIGGER `after_delete_animal` AFTER DELETE ON `animal` FOR EACH ROW BEGIN
    INSERT INTO Animal_histo (
        id, sexe, date_naissance, nom, commentaires, espece_id, race_id, 
        mere_id,  pere_id, disponible, date_histo, utilisateur_histo, evenement_histo)
    VALUES (
        OLD.id, OLD.sexe, OLD.date_naissance, OLD.nom, OLD.commentaires, OLD.espece_id, OLD.race_id,
        OLD.mere_id, OLD.pere_id, OLD.disponible, NOW(), CURRENT_USER(), 'DELETE');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_animal` AFTER UPDATE ON `animal` FOR EACH ROW BEGIN
    INSERT INTO Animal_histo (
        id, sexe, date_naissance, nom, commentaires, espece_id, race_id, 
        mere_id, pere_id, disponible, date_histo, utilisateur_histo, evenement_histo)
    VALUES (
        OLD.id, OLD.sexe, OLD.date_naissance, OLD.nom, OLD.commentaires, OLD.espece_id, OLD.race_id,
        OLD.mere_id, OLD.pere_id, OLD.disponible, NOW(), CURRENT_USER(), 'UPDATE');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_animal` BEFORE INSERT ON `animal` FOR EACH ROW BEGIN
    IF NEW.sexe IS NOT NULL   
    AND NEW.sexe != 'M'       
    AND NEW.sexe != 'F'       
    AND NEW.sexe != 'A'
      THEN
        INSERT INTO Erreur (erreur) VALUES ('Erreur : sexe doit valoir "M", "F", "A" ou NULL.');
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_animal` BEFORE UPDATE ON `animal` FOR EACH ROW BEGIN
    IF NEW.sexe IS NOT NULL   
    AND NEW.sexe != 'M'       
    AND NEW.sexe != 'F' 
    AND NEW.sexe != 'A'
      THEN
        SET NEW.sexe = NULL;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `animal_histo`
--

CREATE TABLE `animal_histo` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `sexe` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_naissance` datetime NOT NULL,
  `nom` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commentaires` text COLLATE utf8_unicode_ci,
  `espece_id` smallint(6) UNSIGNED NOT NULL,
  `race_id` smallint(6) UNSIGNED DEFAULT NULL,
  `mere_id` smallint(6) UNSIGNED DEFAULT NULL,
  `pere_id` smallint(6) UNSIGNED DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT '1',
  `date_histo` datetime NOT NULL,
  `utilisateur_histo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `evenement_histo` char(6) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `animal_histo`
--

INSERT INTO `animal_histo` (`id`, `sexe`, `date_naissance`, `nom`, `commentaires`, `espece_id`, `race_id`, `mere_id`, `pere_id`, `disponible`, `date_histo`, `utilisateur_histo`, `evenement_histo`) VALUES
(10, 'M', '2010-07-21 15:41:00', 'Bobo', NULL, 1, NULL, 7, 21, 1, '2012-05-22 01:00:34', 'sdz@localhost', 'UPDATE'),
(47, 'F', '2009-03-26 01:24:00', 'Scroupy', 'Bestiole avec une carapace très dure', 3, NULL, NULL, NULL, 1, '2012-05-22 01:00:34', 'sdz@localhost', 'DELETE');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(10) UNSIGNED NOT NULL,
  `titre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `resume` text COLLATE utf8_unicode_ci,
  `contenu` text COLLATE utf8_unicode_ci NOT NULL,
  `auteur_id` int(10) UNSIGNED NOT NULL,
  `date_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `resume`, `contenu`, `auteur_id`, `date_publication`) VALUES
(1, 'Confession', 'Une fois, une seule, aimable et douce femme,\r\nA mon bras votre bras poli\r\nS\'appuya (sur le fond ténébreux de mon âme\r\nCe souvenir n\'est point pâli) ;', 'Une fois, une seule, aimable et douce femme,\r\nA mon bras votre bras poli\r\nS\'appuya (sur le fond ténébreux de mon âme\r\nCe souvenir n\'est point pâli) ;\r\n\r\nIl était tard ; ainsi qu\'une médaille neuve\r\nLa pleine lune s\'étalait,\r\nEt la solennité de la nuit, comme un fleuve,\r\nSur Paris dormant ruisselait.\r\n\r\nEt le long des maisons, sous les portes cochères,\r\nDes chats passaient furtivement,\r\nL\'oreille au guet, ou bien, comme des ombres chères,\r\nNous accompagnaient lentement.\r\n\r\nTout à coup, au milieu de l\'intimité libre\r\nÉclose à la pâle clarté,\r\nDe vous, riche et sonore instrument où ne vibre\r\nQue la radieuse gaieté,\r\n\r\nDe vous, claire et joyeuse ainsi qu\'une fanfare\r\nDans le matin étincelant,\r\nUne note plaintive, une note bizarre\r\nS\'échappa, tout en chancelant\r\n\r\nComme une enfant chétive, horrible, sombre, immonde,\r\nDont sa famille rougirait,\r\nEt qu\'elle aurait longtemps, pour la cacher au monde,\r\nDans un caveau mise au secret.\r\n\r\nPauvre ange, elle chantait, votre note criarde :\r\n\" Que rien ici-bas n\'est certain,\r\nEt que toujours, avec quelque soin qu\'il se farde,\r\nSe trahit l\'égoïsme humain ;\r\n\r\nQue c\'est un dur métier que d\'être belle femme,\r\nEt que c\'est le travail banal\r\nDe la danseuse folle et froide qui se pâme\r\nDans un sourire machinal ;\r\n\r\nQue bâtir sur les coeurs est une chose sotte ;\r\nQue tout craque, amour et beauté,\r\nJusqu\'à ce que l\'Oubli les jette dans sa hotte\r\nPour les rendre à l\'Éternité ! \"\r\n\r\nJ\'ai souvent évoqué cette lune enchantée,\r\nCe silence et cette langueur,\r\nEt cette confidence horrible chuchotée\r\nAu confessionnal du coeur.', 1, '2014-10-20 14:43:07'),
(2, 'Sonnet d\'automne', 'Ils me disent, tes yeux, clairs comme le cristal :\r\n\" Pour toi, bizarre amant, quel est donc mon mérite ? \"\r\n- Sois charmante et tais-toi ! Mon coeur, que tout irrite,\r\nExcepté la candeur de l\'antique animal,\r\n\r\nNe veut pas te montrer son secret infernal,\r\nBerceuse dont la main aux longs sommeils m\'invite,\r\nNi sa noire légende avec la flamme écrite.\r\nJe hais la passion et l\'esprit me fait mal !\r\n\r\nAimons-nous doucement. L\'Amour dans sa guérite,\r\nTénébreux, embusqué, bande son arc fatal.\r\nJe connais les engins de son vieil arsenal :\r\n\r\nCrime, horreur et folie ! - Ô pâle marguerite !\r\nComme moi n\'es-tu pas un soleil automnal,\r\nÔ ma si blanche, ô ma si froide Marguerite ?', 'Ils me disent, tes yeux, clairs comme le cristal :\r\n\" Pour toi, bizarre amant, quel est donc mon mérite ? \"\r\n- Sois charmante et tais-toi ! Mon coeur, que tout irrite,\r\nExcepté la candeur de l\'antique animal,\r\n\r\nNe veut pas te montrer son secret infernal,\r\nBerceuse dont la main aux longs sommeils m\'invite,\r\nNi sa noire légende avec la flamme écrite.\r\nJe hais la passion et l\'esprit me fait mal !\r\n\r\nAimons-nous doucement. L\'Amour dans sa guérite,\r\nTénébreux, embusqué, bande son arc fatal.\r\nJe connais les engins de son vieil arsenal :\r\n\r\nCrime, horreur et folie ! - Ô pâle marguerite !\r\nComme moi n\'es-tu pas un soleil automnal,\r\nÔ ma si blanche, ô ma si froide Marguerite ?', 1, '2014-10-24 16:38:23'),
(3, 'Le dormeur du val', 'C\'est un trou de verdure où chante une rivière,\r\nAccrochant follement aux herbes des haillons\r\nD\'argent ; où le soleil, de la montagne fière,\r\nLuit : c\'est un petit val qui mousse de rayons.', 'C\'est un trou de verdure où chante une rivière,\r\nAccrochant follement aux herbes des haillons\r\nD\'argent ; où le soleil, de la montagne fière,\r\nLuit : c\'est un petit val qui mousse de rayons.\r\n\r\nUn soldat jeune, bouche ouverte, tête nue,\r\nEt la nuque baignant dans le frais cresson bleu,\r\nDort ; il est étendu dans l\'herbe, sous la nue,\r\nPâle dans son lit vert où la lumière pleut.\r\n\r\nLes pieds dans les glaïeuls, il dort. Souriant comme\r\nSourirait un enfant malade, il fait un somme :\r\nNature, berce-le chaudement : il a froid.\r\n\r\nLes parfums ne font pas frissonner sa narine ;\r\nIl dort dans le soleil, la main sur sa poitrine,\r\nTranquille. Il a deux trous rouges au côté droit.', 2, '2014-10-28 07:50:25'),
(4, 'Les corbeaux', 'Seigneur, quand froide est la prairie,\r\nQuand dans les hameaux abattus,\r\nLes longs angelus se sont tus...\r\nSur la nature défleurie\r\nFaites s\'abattre des grands cieux\r\nLes chers corbeaux délicieux.', 'Seigneur, quand froide est la prairie,\r\nQuand dans les hameaux abattus,\r\nLes longs angelus se sont tus...\r\nSur la nature défleurie\r\nFaites s\'abattre des grands cieux\r\nLes chers corbeaux délicieux.\r\n\r\nArmée étrange aux cris sévères,\r\nLes vents froids attaquent vos nids !\r\nVous, le long des fleuves jaunis,\r\nSur les routes aux vieux calvaires,\r\nSur les fossés et sur les trous\r\nDispersez-vous, ralliez-vous !\r\n\r\nPar milliers, sur les champs de France,\r\nOù dorment des morts d\'avant-hier,\r\nTournoyez, n\'est-ce pas, l\'hiver,\r\nPour que chaque passant repense !\r\nSois donc le crieur du devoir,\r\nÔ notre funèbre oiseau noir !\r\n\r\nMais, saints du ciel, en haut du chêne,\r\nMât perdu dans le soir charmé,\r\nLaissez les fauvettes de mai\r\nPour ceux qu\'au fond du bois enchaîne,\r\nDans l\'herbe d\'où l\'on ne peut fuir,\r\nLa défaite sans avenir.', 2, '2014-10-06 07:07:42'),
(5, 'Demain dès l\'aube', 'Demain, dès l\'aube, à l\'heure où blanchit la campagne,\r\nJe partirai. Vois-tu, je sais que tu m\'attends.', 'Demain, dès l\'aube, à l\'heure où blanchit la campagne,\r\nJe partirai. Vois-tu, je sais que tu m\'attends.\r\nJ\'irai par la forêt, j\'irai par la montagne.\r\nJe ne puis demeurer loin de toi plus longtemps.\r\n\r\nJe marcherai les yeux fixés sur mes pensées,\r\nSans rien voir au dehors, sans entendre aucun bruit,\r\nSeul, inconnu, le dos courbé, les mains croisées,\r\nTriste, et le jour pour moi sera comme la nuit.\r\n\r\nJe ne regarderai ni l\'or du soir qui tombe,\r\nNi les voiles au loin descendant vers Harfleur,\r\nEt quand j\'arriverai, je mettrai sur ta tombe\r\nUn bouquet de houx vert et de bruyère en fleur.', 3, '2014-10-30 22:25:30'),
(6, 'Après l\'hiver', 'N\'attendez pas de moi que je vais vous donner \r\nDes raisons contre Dieu que je vois rayonner ; \r\nLa nuit meurt, l\'hiver fuit ; maintenant la lumière, \r\nDans les champs, dans les bois, est partout la première. \r\nJe suis par le printemps vaguement attendri. ', 'N\'attendez pas de moi que je vais vous donner \r\nDes raisons contre Dieu que je vois rayonner ; \r\nLa nuit meurt, l\'hiver fuit ; maintenant la lumière, \r\nDans les champs, dans les bois, est partout la première. \r\nJe suis par le printemps vaguement attendri. \r\nAvril est un enfant, frêle, charmant, fleuri ; \r\nJe sens devant l\'enfance et devant le zéphyre \r\nJe ne sais quel besoin de pleurer et de rire ; \r\nMai complète ma joie et s\'ajoute à mes pleurs. \r\nJeanne, George, accourez, puisque voilà des fleurs. \r\nAccourez, la forêt chante, l\'azur se dore, \r\nVous n\'avez pas le droit d\'être absents de l\'aurore. \r\nJe suis un vieux songeur et j\'ai besoin de vous, \r\nVenez, je veux aimer, être juste, être doux, \r\nCroire, remercier confusément les choses, \r\nVivre sans reprocher les épines aux roses,\r\nÊtre enfin un bonhomme acceptant le bon Dieu.\r\n\r\nÔ printemps ! bois sacrés ! ciel profondément bleu ! \r\nOn sent un souffle d\'air vivant qui vous pénètre, \r\nEt l\'ouverture au loin d\'une blanche fenêtre ;\r\nOn mêle sa pensée au clair-obscur des eaux ; \r\nOn a le doux bonheur d\'être avec les oiseaux \r\nEt de voir, sous l\'abri des branches printanières, \r\nCes messieurs faire avec ces dames des manières.', 3, '2014-10-20 05:07:45'),
(7, 'Le désespoir est assis sur un banc', 'Dans un square sur un banc\r\nIl y a un homme qui vous appelle quand on passe\r\nIl a des binocles un vieux costume gris\r\nIl fume un petit ninas il est assis\r\nEt il vous appelle quand on passe', 'Dans un square sur un banc\r\nIl y a un homme qui vous appelle quand on passe\r\nIl a des binocles un vieux costume gris\r\nIl fume un petit ninas il est assis\r\nEt il vous appelle quand on passe\r\nOu simplement il vous fait signe\r\nIl ne faut pas le regarder\r\nIl ne faut pas l\'écouter\r\nIl faut passer\r\nFaire comme si on ne le voyait pas\r\nComme si on ne l\'entendait pas\r\nIl faut passer et presser le pas\r\nSi vous le regardez\r\nSi vous l\'écoutez\r\nIl vous fait signe et rien personne\r\nNe peut vous empêcher d\'aller vous asseoir près de lui\r\nAlors il vous regarde et sourit\r\nEt vous souffrez atrocement\r\nEt l\'homme continue de sourire\r\nEt vous souriez du même sourire\r\nExactement\r\nPlus vous souriez plus vous souffrez\r\nAtrocement\r\nPlus vous souffrez plus vous souriez\r\nIrrémédiablement\r\nEt vous restez là\r\nAssis figé\r\nSouriant sur le banc\r\nDes enfants jouent tout près de vous\r\nDes passants passent\r\nTranquillement\r\nDes oiseaux s\'envolent\r\nQuittant un arbre\r\nPour un autre\r\nEt vous restez là\r\nSur le banc\r\nEt vous savez vous savez\r\nQue jamais plus vous ne jouerez\r\nComme ces enfants\r\nVous savez que jamais plus vous ne passerez\r\nTranquillement\r\nComme ces passants\r\nQue jamais plus vous ne vous envolerez\r\nQuittant un arbre pour un autre\r\nComme ces oiseaux.', 4, '2014-10-01 08:10:35'),
(8, 'Un beau matin', 'Il n\'avait peur de personne \r\nIl n\'avait peur de rien \r\nMais un matin un beau matin \r\nIl croit voir quelque chose ', 'Il n\'avait peur de personne \r\nIl n\'avait peur de rien \r\nMais un matin un beau matin \r\nIl croit voir quelque chose \r\nMais il dit Ce n\'est rien \r\nEt il avait raison \r\nAvec sa raison sans nul doute \r\nCe n\' était rien \r\nMais le matin ce même matin \r\nIl croit entendre quelqu\'un \r\nEt il ouvrit la porte \r\nEt il la referma en disant Personne \r\nEt il avait raison \r\nAvec sa raison sans nul doute \r\nIl n\'y avait personne \r\nMais soudain il eut peur \r\nEt il comprit qu\'Il était seul \r\nMais qu\'Il n\'était pas tout seul \r\nEt c\'est alors qu\'il vit \r\nRien en personne devant lui \r\n', 4, '2014-10-11 16:50:17');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'Guerre'),
(2, 'Mélancolie'),
(3, 'Amour'),
(4, 'Mort'),
(5, 'Saison');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_article`
--

CREATE TABLE `categorie_article` (
  `categorie_id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `categorie_article`
--

INSERT INTO `categorie_article` (`categorie_id`, `article_id`) VALUES
(2, 1),
(3, 1),
(3, 2),
(5, 2),
(1, 3),
(4, 3),
(2, 4),
(4, 4),
(3, 5),
(4, 5),
(5, 6),
(2, 7),
(2, 8);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_postal` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pays` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varbinary(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `adresse`, `code_postal`, `ville`, `pays`, `email`) VALUES
(1, 'Dupont', 'Jean', 'Rue du Centre, 5', '45810', 'Houtsiplou', 'France', 0x6a65616e2e6475706f6e7440656d61696c2e636f6d),
(2, 'Boudur', 'Marie', 'Place de la Gare, 2', '35840', 'Troudumonde', 'France', 0x6d617269652e626f7564757240656d61696c2e636f6d),
(3, 'Trachon', 'Fleur', 'Rue haute, 54b', '3250', 'Belville', 'Belgique', 0x666c65757274726163686f6e40656d61696c2e636f6d),
(4, 'Van Piperseel', 'Julien', NULL, NULL, NULL, NULL, 0x6a65616e767040656d61696c2e636f6d),
(5, 'Nouvel', 'Johan', NULL, NULL, NULL, 'Suisse', 0x6a6f68616e65747069726c6f75697440656d61696c2e636f6d),
(6, 'Germain', 'Frank', NULL, NULL, NULL, NULL, 0x6672616e636f69736765726d61696e40656d61696c2e636f6d),
(7, 'Antoine', 'Maximilien', 'Rue Moineau, 123', '4580', 'Trocoul', 'Belgique', 0x6d61782e616e746f696e6540656d61696c2e636f6d),
(8, 'Di Paolo', 'Hector', NULL, NULL, NULL, 'Suisse', 0x686563746f72646970616f40656d61696c2e636f6d),
(9, 'Corduro', 'Anaelle', NULL, NULL, NULL, NULL, 0x616e612e636f726475726f40656d61696c2e636f6d),
(10, 'Faluche', 'Eline', 'Avenue circulaire, 7', '45870', 'Garduche', 'France', 0x656c696e6566616c7563686540656d61696c2e636f6d),
(11, 'Penni', 'Carine', 'Boulevard Haussman, 85', '1514', 'Plasse', 'Suisse', 0x6370656e6e6940656d61696c2e636f6d),
(12, 'Broussaille', 'Virginie', 'Rue du Fleuve, 18', '45810', 'Houtsiplou', 'France', 0x766962726f757361696c6c6540656d61696c2e636f6d),
(13, 'Durant', 'Hannah', 'Rue des Pendus, 66', '1514', 'Plasse', 'Suisse', 0x6868647572616e7440656d61696c2e636f6d),
(14, 'Delfour', 'Elodie', 'Rue de Flore, 1', '3250', 'Belville', 'Belgique', 0x652e64656c666f757240656d61696c2e636f6d),
(15, 'Kestau', 'Joel', NULL, NULL, NULL, NULL, 0x6a6f656c2e6b657374617540656d61696c2e636f6d);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `auteur_id` int(10) UNSIGNED DEFAULT NULL,
  `contenu` text COLLATE utf8_unicode_ci NOT NULL,
  `date_commentaire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `article_id`, `auteur_id`, `contenu`, `date_commentaire`) VALUES
(1, 1, 4, 'Mangifique', '2014-11-10 05:06:47'),
(2, 1, NULL, 'Très joli', '2014-11-04 04:47:35'),
(3, 2, NULL, 'J\'ai pas tout compris...', '2014-11-14 06:34:30'),
(4, 2, 2, 'Quel joli texte, j\'adore !', '2014-11-05 23:07:52'),
(5, 3, NULL, 'C\'est gai tout ça...', '2014-11-26 05:42:04'),
(6, 4, 1, 'Tellement beau, on ne s\'en lasse pas.', '2014-11-23 07:44:33'),
(7, 5, 1, 'Incroyable !!!', '2014-11-22 12:05:34'),
(8, 5, 2, 'Pas mal, j\'aime bien', '2014-11-24 08:47:15'),
(9, 8, 1, 'Exceptionnel, mais un peu triste quand même...', '2014-11-15 21:56:05'),
(10, 5, NULL, 'Mouais, pas convaincue...', '2014-11-09 09:09:09');

-- --------------------------------------------------------

--
-- Structure de la table `erreur`
--

CREATE TABLE `erreur` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `erreur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `erreur`
--

INSERT INTO `erreur` (`id`, `erreur`) VALUES
(5, 'Erreur : date_adoption doit être >= à date_reservation.'),
(3, 'Erreur : paye doit valoir TRUE (1) ou FALSE (0).'),
(1, 'Erreur : sexe doit valoir \"M\", \"F\", \"A\" ou NULL.');

-- --------------------------------------------------------

--
-- Structure de la table `espece`
--

CREATE TABLE `espece` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `nom_courant` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `nom_latin` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `prix` decimal(7,2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `espece`
--

INSERT INTO `espece` (`id`, `nom_courant`, `nom_latin`, `description`, `prix`) VALUES
(1, 'Chien', 'Canis canis', 'Bestiole à quatre pattes qui aime les caresses et tire souvent la langue', '200.00'),
(2, 'Chat', 'Felis silvestris', 'Bestiole à quatre pattes qui saute très haut et grimpe aux arbres', '150.00'),
(3, 'Tortue d\'Hermann', 'Testudo hermanni', 'Bestiole avec une carapace très dure', '140.00'),
(4, 'Perroquet amazone', 'Alipiopsitta xanthops', 'Joli oiseau parleur vert et jaune', '700.00'),
(5, 'Rat brun', 'Rattus norvegicus', 'Petite bestiole avec de longues moustaches et une longue queue sans poils', '10.00');

--
-- Déclencheurs `espece`
--
DELIMITER $$
CREATE TRIGGER `before_delete_espece` BEFORE DELETE ON `espece` FOR EACH ROW BEGIN
    DELETE FROM Race
    WHERE espece_id = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `race`
--

CREATE TABLE `race` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `nom` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `espece_id` smallint(6) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `prix` decimal(7,2) UNSIGNED DEFAULT NULL,
  `date_insertion` datetime DEFAULT NULL,
  `utilisateur_insertion` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_modification` datetime DEFAULT NULL,
  `utilisateur_modification` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `race`
--

INSERT INTO `race` (`id`, `nom`, `espece_id`, `description`, `prix`, `date_insertion`, `utilisateur_insertion`, `date_modification`, `utilisateur_modification`) VALUES
(1, 'Berger allemand', 1, 'Chien sportif et élégant au pelage dense, noir-marron-fauve, noir ou gris.', '485.00', '2012-05-21 00:53:36', 'Test', '2012-05-21 00:53:36', 'Test'),
(2, 'Berger blanc suisse', 1, 'Petit chien au corps compact, avec des pattes courtes mais bien proportionnées et au pelage tricolore ou bicolore.', '935.00', '2012-05-21 00:53:36', 'Test', '2012-05-21 00:53:36', 'Test'),
(3, 'Singapura', 2, 'Chat de petite taille aux grands yeux en amandes.', '985.00', '2012-05-21 00:53:36', 'Test', '2012-05-21 00:53:36', 'Test'),
(4, 'Bleu russe', 2, 'Chat aux yeux verts et à la robe épaisse et argentée.', '835.00', '2012-05-21 00:53:36', 'Test', '2012-05-21 00:53:36', 'Test'),
(5, 'Maine coon', 2, 'Chat de grande taille, à poils mi-longs.', '735.00', '2012-05-21 00:53:36', 'Test', '2012-05-21 00:53:36', 'Test'),
(7, 'Sphynx', 2, 'Chat sans poils.', '1235.00', '2012-05-21 00:53:36', 'Test', '2012-05-21 00:53:36', 'Test'),
(8, 'Nebelung', 2, 'Chat bleu russe, mais avec des poils longs...', '985.00', '2012-05-21 00:53:36', 'Test', '2012-05-21 00:53:36', 'Test'),
(9, 'Rottweiller', 1, 'Chien d\'apparence solide, bien musclé, à la robe noire avec des taches feu bien délimitées.', '630.00', '2012-05-21 00:53:36', 'Test', '2012-05-22 00:54:13', 'sdz@localhost'),
(10, 'Yorkshire terrier', 1, 'Chien de petite taille au pelage long et soyeux de couleur bleu et feu.', '700.00', '2012-05-22 00:58:25', 'sdz@localhost', '2012-05-22 00:58:25', 'sdz@localhost');

--
-- Déclencheurs `race`
--
DELIMITER $$
CREATE TRIGGER `before_delete_race` BEFORE DELETE ON `race` FOR EACH ROW BEGIN
    UPDATE Animal 
    SET race_id = NULL
    WHERE race_id = OLD.id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_race` BEFORE INSERT ON `race` FOR EACH ROW BEGIN
    SET NEW.date_insertion = NOW();
    SET NEW.utilisateur_insertion = CURRENT_USER();
    SET NEW.date_modification = NOW();
    SET NEW.utilisateur_modification = CURRENT_USER();
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_race` BEFORE UPDATE ON `race` FOR EACH ROW BEGIN
    SET NEW.date_modification = NOW();
    SET NEW.utilisateur_modification = CURRENT_USER();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(10) UNSIGNED NOT NULL,
  `pseudo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `pseudo`, `email`, `password`) VALUES
(1, 'Baudelaire', 'baudelaire@email.com', '6fd4c29cbd6a758bce1acf991aa9f32e69ced155'),
(2, 'Rimbaud', 'rimbaud@email.com', '6fd4c29cbd6a758bce1acf991aa9f32e69ced155'),
(3, 'Victor Hugo', 'vhugo@email.com', '3edb6ce6e328ea8639a3a357c7c6997775ab52ea'),
(4, 'JacquesP', 'j.prevert@email.com', '713f55ba75af01593dc4e845a8c0dcb9fbb45a88');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adoption`
--
ALTER TABLE `adoption`
  ADD PRIMARY KEY (`client_id`,`animal_id`),
  ADD UNIQUE KEY `ind_uni_animal_id` (`animal_id`);

--
-- Index pour la table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ind_uni_nom_espece_id` (`nom`,`espece_id`),
  ADD KEY `fk_race_id` (`race_id`),
  ADD KEY `fk_mere_id` (`mere_id`),
  ADD KEY `fk_pere_id` (`pere_id`),
  ADD KEY `fk_espece_id` (`espece_id`);

--
-- Index pour la table `animal_histo`
--
ALTER TABLE `animal_histo`
  ADD PRIMARY KEY (`id`,`date_histo`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_auteur_article` (`auteur_id`),
  ADD KEY `index_date_article` (`date_publication`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie_article`
--
ALTER TABLE `categorie_article`
  ADD PRIMARY KEY (`categorie_id`,`article_id`),
  ADD KEY `fk_article_cat` (`article_id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ind_uni_email` (`email`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_article_com` (`article_id`),
  ADD KEY `fk_auteur_com` (`auteur_id`),
  ADD KEY `index_date_commentaire` (`date_commentaire`);

--
-- Index pour la table `erreur`
--
ALTER TABLE `erreur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `erreur` (`erreur`);

--
-- Index pour la table `espece`
--
ALTER TABLE `espece`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom_latin` (`nom_latin`);

--
-- Index pour la table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_race_espece_id` (`espece_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `unique_pseudo` (`pseudo`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `erreur`
--
ALTER TABLE `erreur`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `espece`
--
ALTER TABLE `espece`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `race`
--
ALTER TABLE `race`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adoption`
--
ALTER TABLE `adoption`
  ADD CONSTRAINT `fk_adoption_animal_id` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`id`),
  ADD CONSTRAINT `fk_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `fk_espece_id` FOREIGN KEY (`espece_id`) REFERENCES `espece` (`id`),
  ADD CONSTRAINT `fk_mere_id` FOREIGN KEY (`mere_id`) REFERENCES `animal` (`id`),
  ADD CONSTRAINT `fk_pere_id` FOREIGN KEY (`pere_id`) REFERENCES `animal` (`id`),
  ADD CONSTRAINT `fk_race_id` FOREIGN KEY (`race_id`) REFERENCES `race` (`id`);

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_auteur_article` FOREIGN KEY (`auteur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `categorie_article`
--
ALTER TABLE `categorie_article`
  ADD CONSTRAINT `fk_article_cat` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `fk_categorie_cat` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `fk_article_com` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `fk_auteur_com` FOREIGN KEY (`auteur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `race`
--
ALTER TABLE `race`
  ADD CONSTRAINT `fk_race_espece_id` FOREIGN KEY (`espece_id`) REFERENCES `espece` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
