DROP DATABASE IF EXISTS `aaxu`;
CREATE DATABASE `aaxu`
  DEFAULT CHARACTER SET `latin1`
  DEFAULT COLLATE `latin1_general_ci`;

USE aaxu;

CREATE TABLE aaxu.boosteurori
    SELECT *
    FROM aazt.boosteurori;

DELETE FROM boosteurori
WHERE uid = 15;

UPDATE boosteurori
SET parr = ''
WHERE uid = 1;

SELECT count(*) AS nbOri
FROM aaxu.boosteurori;

CREATE TABLE xub2
    SELECT *
    FROM aazt.xub2;


-- #################################################################################################
--
--                                       CRÉATION TABLE XU
--
-- #################################################################################################
DROP TABLE IF EXISTS aaxu.xu;

CREATE TABLE `aaxu`.`xu` (
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
  `uid`     INT(11) UNSIGNED    NOT NULL DEFAULT '0',
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


-- Initialisation Aadminli : Parrain et parr null, bornes G et D (Et pf)
-- INSERT INTO `aaxu`.xu (`id`, `pseudo`, `lv`, `typ`, `parrain`, `parr`, `bg`, `bd`, `pf`) VALUES (1, 'Aadminli', 1, 'P', NULL, NULL, 1, 2, 0);

-- SELECT * FROM xub2;

SELECT *
FROM xu;

SELECT count(*) AS nbXuB2
FROM xub2;


INSERT INTO xu (pseudo, parrain, parr, uid) SELECT
                                              pseudo,
                                              parrain,
                                              parr,
                                              uid
                                            FROM xub2
                                            WHERE id = xub2.id;

-- SELECT * FROM xu;

DELETE FROM xu
WHERE id > 1;

UPDATE xu
SET parrain = NULL, parr = NULL
WHERE id = 1;

SELECT *
FROM xu;


/*
-- Re-initialise Aadminli pour départ tests
SELECT *
FROM xu;
*/

-- #################################################################################################
--
--            PROCÉDURE pour INSERTION et calcul des bornes et profondeur (pf)
--
-- #################################################################################################
-- ToDoLi ajout lock Table qd Opé + activer transaction (Cf. arbre/exemple_proc.sql)
-- ToDoLi Cf. arbre/exemple_proc.sql pour proc avec boucle
/*
CALL insertXu('GrCOTE7', 1);
SELECT *
FROM xu;
SELECT
  @pseudoParr,
  @idParr;

CALL insertXu('Doro', 2);
CALL insertXu('Jade', 3);
SELECT *
FROM xu;


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
    FROM xu
    WHERE id = idRef;

    -- SET @pseudoParr = pseudoRef;

    UPDATE xu
    SET bd = bd + 2
    WHERE bd >= bdRef;

    UPDATE xu
    SET bg = bg + 2
    WHERE bg >= bdRef;

    INSERT INTO xu (pseudo, parrain, parr, bg, bd, pf)
    VALUES (pseudoXu, pseudoRef, idRef, bdRef, (bdRef + 1), (pfRef + 1));

    -- COMMIT;
  END |
DELIMITER ;

SELECT
  pseudo AS pseudoRef,
  bg     AS bgRef,
  bd     AS bdRef,
  pf     AS pfRef
FROM xu
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
