-- Réservé Gc7

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

DROP TABLE IF EXISTS aaxu.xut;
-- #################################################################################################
--
--             CRÉATION TABLE xut pour test d'insertion (Départ avec Aadminli uniquement)
--
-- #################################################################################################
CREATE TABLE `aaxu`.`xut` (
  `id`      INT(11) UNSIGNED    NOT NULL AUTO_INCREMENT,
  `pseudo`  VARCHAR(255)        NOT NULL UNIQUE
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
-- Suppr Kl
DELETE FROM `aaxu`.`xu`
WHERE `id` = 15;
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


DROP PROCEDURE IF EXISTS insertXu;
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


CALL insertXu('GrCOTE7', 1);
SELECT *
FROM xut;

CALL insertXu('Doro', 2);
CALL insertXu('Jade', 3);
SELECT *
FROM xut;


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


SELECT
  pseudo AS pseudoRef,
  bg     AS bgRef,
  bd     AS bdRef,
  pf     AS pfRef
FROM xut
WHERE id = 1;


USE aazt;

SELECT *
FROM b;


DROP PROCEDURE IF EXISTS test_boucle_b;
DELIMITER |

CREATE PROCEDURE `test_boucle_b`(IN `p_id` INT)
  BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_id INT;
    DECLARE v_pseudo VARCHAR(255);

    DECLARE b_cursor CURSOR FOR
      SELECT
        uid,
        uname
      FROM b
      WHERE uid < p_id;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN b_cursor;

    b_loop: LOOP
      FETCH b_cursor
      INTO v_id, v_pseudo;

      IF done
      THEN
        LEAVE b_loop;
      END IF;

      SELECT
        v_id,
        v_pseudo;
    END LOOP;

    CLOSE b_cursor;
  END|
DELIMITER ;


CALL test_boucle_b(21);

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


DROP PROCEDURE IF EXISTS `arbre`;
/*--------------
-- ------------
-- Exemple de procédure avec boucle
-- Génère ici l'arbre, le groupe
CREATE PROCEDURE `arbre`(IN _noeud INTEGER UNSIGNED,
                         IN _pref  CHAR(20))
DETERMINISTIC
NO SQL
  BEGIN
    DECLARE _id INTEGER DEFAULT 0;
    DECLARE _lien INTEGER DEFAULT 0;
    DECLARE _nom VARCHAR(255) DEFAULT '';

    DECLARE _fin INTEGER DEFAULT 1;
    DECLARE _tab CURSOR FOR SELECT
                              id,
                              lien,
                              nom
                            FROM `parent`
                            WHERE lien = _noeud;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET _fin = 0;

    OPEN _tab;
    FETCH _tab
    INTO _id, _lien, _nom;

    WHILE (_fin)
    DO
      INSERT INTO `travail` (`lib`) VALUES (concat(_pref, '... ', _nom));

      CALL arbre(_id, concat('..', _pref));

      FETCH _tab
      INTO _id, _lien, _nom;
    END WHILE;

    CLOSE _tab;
  END;
-- ------------
*/



/*
  DECLARE _pseudo VARCHAR(255);

  DECLARE _fin INTEGER DEFAULT 1;
  DECLARE _tab CURSOR FOR SELECT
                            id,
                            pseudo,
                            parr
                          FROM www_boos2013.xoops_users
                          WHERE uname = parr
                                AND uid < 20;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET _fin = 0;

  OPEN _tab;
  FETCH _tab
  INTO _uid, _lien, _pseudo;

  WHILE (_fin)
  DO
    SELECT
      uid,
      uname;

    CALL arbreXuB(_uid, concat('..', _pref));

    FETCH _tab
    INTO _id, _lien, _nom;
  END WHILE;

  CLOSE _tab;
*/

/*
BEGIN
DECLARE v_diff INT;
SELECT FLOOR(TIMESTAMPDIFF(MINUTE, MAX(`t_stamp`), NOW()) / 10) - 1
INTO v_diff
FROM `test`.`calendar`;

CREATE TEMPORARY TABLE calendar_bis (
  t_date  DATE,
  t_stamp DATETIME
);


WHILE v_diff >0 DO
INSERT INTO calendar_bis (`t_date`, t_stamp) VALUES (DATE(round10min(now())- INTERVAL v_diff*10 MINUTE), round10min(now())- INTERVAL v_diff*10 MINUTE);

SET v_diff = v_diff - 1;
END WHILE;
SELECT *
FROM calendar_bis;
DROP TABLE calendar_bis;
END

*/

DROP PROCEDURE IF EXISTS for_loop_example;
DELIMITER |
CREATE PROCEDURE for_loop_example()
    wholeblock: BEGIN
    DECLARE x INT;
    DECLARE str VARCHAR(255);
    SET x = -5;
    SET str = '';
    loop_label: LOOP
      IF x > 0
      THEN
        LEAVE loop_label;
      END IF;
      SET str = CONCAT(str, x, ', ');
      SET x = x + 1;
      ITERATE loop_label;
    END LOOP;
    SELECT str;
  END |
DELIMITER ;
CALL for_loop_example();

