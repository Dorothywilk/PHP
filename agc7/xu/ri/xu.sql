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
      '0'                     AS bd,
      '0'                     AS pf
    FROM www_boos2013.xoops_users xu;

-- ALTER TABLE aaxu.xu ADD PRIMARY KEY (id);

SELECT *
FROM xu;

DROP TABLE aaxu.xut;
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
  AUTO_INCREMENT = 1;

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

-- Re-initialise Aadminli pour départ tests
TRUNCATE aaxu.xut;
INSERT INTO `aaxu`.`xut` (`id`, `pseudo`, `lv`, `typ`, `lva`, `lvp`, `parrain`, `parr`, `bg`, `bd`, `pf`)
VALUES (1, 'Aadminli', 1, 'P', 0, 0, NULL, NULL, 1, 2, 0);
SELECT *
FROM xut;

-- #################################################################################################
--
--            PROCÉDURE pour INSERTION et calcul des bornes et profondeur (pf)
--
-- #################################################################################################
-- ToDoLi ajout lock Table qd Opé + activer transaction (Cf. arbre/exemple_proc.sql)
-- ToDoLi Cf. arbre/exemple_proc.sql pour proc avec boucle

CALL insertXu('GrCOTE7', 1);
SELECT *
FROM xut;

CALL insertXu('Doro', 2);
CALL insertXu('Jade', 3);
SELECT *
FROM xut;


USE aaxu;
CALL insertXu('Mimi', 3);
CALL insertXu('Jeny', 4);
CALL insertXu('Micky', 6);


SELECT concat(id, repeat(' ', (pf + .25) * 4), pseudo, ' (', bg, '-', bd, ')') 'XUs'
FROM aaxu.xut

ORDER BY bg;


SELECT
  concat(id, repeat(' ', (pf + .25) * 4), pseudo, ' (', bg, '-', bd, ')') 'Membre',
  lv,
  typ
FROM aaxu.xut
WHERE bg >= 1
      AND bd <= 120

ORDER BY bg;


DROP PROCEDURE insertXu;
DELIMITER |
CREATE DEFINER =`root`@`localhost` PROCEDURE `insertXu`(
  IN `pseudoXu` VARCHAR(255),
  IN `idRef`    INT
)
  BEGIN
    -- START TRANSACTION;

    DECLARE pseudoRef VARCHAR(255);
    DECLARE bgRef, bdRef, pfRef INT(11);

    -- Réc valeur du parr
    SELECT
      pseudo,
      bg,
      bd,
      pf
    INTO pseudoRef, bgRef, bdRef, pfRef
    FROM xut
    WHERE id = idRef;

    -- SET @pseudoParr = pseudoRef;

    UPDATE xut
    SET bd = bd + 2
    WHERE bd >= bdRef;

    UPDATE xut
    SET bg = bg + 2
    WHERE bg >= bdRef;

    INSERT INTO xut (pseudo, parrain, parr, bg, bd, pf)
    VALUES (pseudoXu, pseudoRef, idRef, bdRef, (bdRef + 1), (pfRef + 1));

    -- COMMIT;
  END |
DELIMITER ;

SELECT
  pseudo AS pseudoRef,
  bg     AS bgRef,
  bd     AS bdRef,
  pf     AS pfRef
FROM xut
WHERE id = 1;


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
