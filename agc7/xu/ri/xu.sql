DROP DATABASE IF EXISTS `aaxu`;
CREATE DATABASE `aaxu`
  DEFAULT CHARACTER SET `latin1`
  DEFAULT COLLATE `latin1_general_ci`;

USE aaxu;

-- #################################################################################################
--
--                                       CRÉATION TABLE XU
--
-- #################################################################################################
DROP TABLE IF EXISTS xu;

CREATE TABLE `xu` (
  `id`      INT(11) UNSIGNED    NOT NULL AUTO_INCREMENT,
  `pseudo`  VARCHAR(255)        NOT NULL
  COLLATE 'latin1_general_ci',
  `lv`      TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `typ`     CHAR(1)             NOT NULL DEFAULT 'A' COLLATE 'latin1_general_ci',
  `lva`     TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `lvp`     TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `parrain` VARCHAR(255)        NULL     DEFAULT NULL COLLATE 'latin1_general_ci',
  `parr`    INT(11) UNSIGNED    NULL     DEFAULT NULL,
  `bg`      INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  `bd`      INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  `pf`      INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  INDEX `lv` (`lv`),
  INDEX `typ` (`typ`),
  INDEX `bg` (`bg`),
  INDEX `bd` (`bd`),
  INDEX `pf` (`pf`)
)
  COLLATE = 'latin1_general_ci'
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
    SELECT
      uid                     AS id,
      uname                   AS pseudo,
      lv,
      typ,
      lva,
      lvp,
      parr                    AS parrain,
      (SELECT uid
       FROM www_boos2013.xoops_users
       WHERE uname = xu.parr) AS parr,
      '0'                     AS bg,
      +
      '0'                     AS bd,
      '0'                     AS pf
    FROM www_boos2013.xoops_users xu;

-- ALTER TABLE aaxu.xu ADD PRIMARY KEY (id);

SELECT *
FROM xu;

-- #################################################################################################
--
--             CRÉATION TABLE xut pour test d'insertion (Départ avec Aadminli uniquement)
--
-- #################################################################################################
CREATE TABLE `aaxu`.`xut` (
  `id`      INT(11) UNSIGNED    NOT NULL AUTO_INCREMENT,
  `pseudo`  VARCHAR(255)        NOT NULL
  COLLATE 'latin1_general_ci',
  `lv`      TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `typ`     CHAR(1)             NOT NULL DEFAULT 'A' COLLATE 'latin1_general_ci',
  `lva`     TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `lvp`     TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `parrain` VARCHAR(255)        NULL     DEFAULT NULL COLLATE 'latin1_general_ci',
  `parr`    INT(11) UNSIGNED    NULL     DEFAULT NULL,
  `bg`      INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  `bd`      INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  `pf`      INT(11) UNSIGNED    NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  INDEX `lv` (`lv`),
  INDEX `typ` (`typ`),
  INDEX `bg` (`bg`),
  INDEX `bd` (`bd`),
  INDEX `pf` (`pf`)
)
  COLLATE 'latin1_general_ci'
  ENGINE = InnoDB
  ROW_FORMAT = DYNAMIC
  AUTO_INCREMENT = 27208;

-- Insertion (par copie) de Aadminli
INSERT INTO `aaxu`.`xut` (`id`, `pseudo`, `lv`, `typ`, `lva`, `lvp`, `parrain`, `parr`, `bg`, `bd`, `pf`)
  SELECT
    `id`,
    `pseudo`,
    `lv`,
    `typ`,
    `lva`,
    `lvp`,
    `parrain`,
    `parr`,
    `bg`,
    `bd`,
    `pf`
  FROM `xu`
  WHERE id < 2;

-- Initialisation Aadminli : Parrain et parr null, bornes G et D (Et pf)
UPDATE aaxu.xut
SET parrain = NULL, parr = NULL, bg = 1, bd = 2, pf = 0;

SELECT *
FROM xut;

-- #################################################################################################
--
--            PROCÉDURE pour INSERTION et calcul des bornes et profondeur (pf)
--
-- #################################################################################################






USE aaxu;

DROP PROCEDURE test_boucle;
DELIMITER |
CREATE DEFINER =`root`@`localhost` PROCEDURE `test_boucle`(IN `p_id` INT)
  BEGIN
    DECLARE v_pseudoId VARCHAR(255);

    DECLARE curs_xus CURSOR
    FOR SELECT
          id,
          pseudo
        FROM aaxu.xu
        WHERE id < p_id;

    OPEN curs_xus;

    LOOP
      FETCH curs_xus
      INTO v_pseudoId;
      SELECT CONCAT(v_pseudoId, ' ', id) AS 'Xu';
    END LOOP;

    CLOSE curs_xus;
  END|

CALL test_boucle(10);
/*
CREATE DEFINER =`root`@`localhost` PROCEDURE `test_condition`(IN `p_ville` VARCHAR(100)) BEGIN
  DECLARE v_nom, v_prenom VARCHAR(100);

  DECLARE curs_clients CURSOR
  FOR SELECT
        nom,
        prenom
      FROM Client
      WHERE ville = p_ville;

  OPEN curs_clients;

  LOOP
    FETCH curs_clients
    INTO v_nom, v_prenom;
    SELECT CONCAT(v_prenom, ' ', v_nom) AS 'Client';
  END LOOP;

  CLOSE curs_clients;
  END$$

CREATE DEFINER =`root`@`localhost` PROCEDURE `test_condition2`(IN `p_ville` VARCHAR(100)) BEGIN
  DECLARE v_nom, v_prenom VARCHAR(100);

  -- On déclare fin comme un BOOLEAN, avec FALSE pour défaut
  DECLARE fin BOOLEAN DEFAULT FALSE;

  DECLARE curs_clients CURSOR
  FOR SELECT
        nom,
        prenom
      FROM Client
      WHERE ville = p_ville;

  -- On utilise TRUE au lieu de 1
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin = TRUE;

  OPEN curs_clients;

  loop_curseur: LOOP
    FETCH curs_clients
    INTO v_nom, v_prenom;

    IF fin
    THEN -- Plus besoin de "= 1"
      LEAVE loop_curseur;
    END IF;

    SELECT CONCAT(v_prenom, ' ', v_nom) AS 'Client';
  END LOOP;

  CLOSE curs_clients;
  END$$

CREATE DEFINER =`root`@`localhost` PROCEDURE `test_iterate`() BEGIN
  DECLARE v_i INT DEFAULT 0;

  boucle_while: WHILE v_i < 3 DO
    SET v_i = v_i + 1;
    SELECT
      v_i,
      'Avant IF' AS message;

    IF v_i = 2
    THEN
      ITERATE boucle_while;
    END IF;

    SELECT
      v_i,
      'Après IF' AS message;
    -- Ne sera pas exécuté pour v_i = 2
  END WHILE;
  END$$
*/
