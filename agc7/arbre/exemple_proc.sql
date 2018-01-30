-- use arbre;

SET AUTOCOMMIT = 0;
SET @@max_sp_recursion_depth = 255;

START TRANSACTION;

DROP DATABASE IF EXISTS `base`;
CREATE DATABASE `base`
  DEFAULT CHARACTER SET `latin1`
  DEFAULT COLLATE `latin1_general_ci`;
USE base;


DROP TABLE IF EXISTS `travail`;

CREATE TABLE IF NOT EXISTS `travail`
(
  `rang` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `lib`  VARCHAR(255)     NOT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = `latin1`
  COLLATE = `latin1_general_ci`
  ROW_FORMAT = COMPRESSED;


DROP TABLE IF EXISTS `parent`;

CREATE TABLE IF NOT EXISTS `parent`
(
  `id`   INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `lien` INTEGER UNSIGNED NULL,
  `nom`  VARCHAR(255)     NOT NULL,
  CONSTRAINT `FK_lien` FOREIGN KEY (`lien`) REFERENCES `parent` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
  ENGINE = InnoDB
  DEFAULT CHARSET = `latin1`
  COLLATE = `latin1_general_ci`
  ROW_FORMAT = COMPRESSED;

INSERT INTO `parent` (`lien`, `nom`) VALUES
  (NULL, ''), (1, 'grand-père 1'), (1, 'grand-père 2'), (1, 'grand-père 3'),
  (2, 'père 1-1'), (2, 'père 1-2'), (2, 'père 1-3'),
  (3, 'père 2-1'), (3, 'père 2-2'), (3, 'père 2-3'),
  (4, 'père 3-1'), (4, 'père 3-2'), (4, 'père 3-3'),
  (5, 'fils 1-1-1'), (5, 'fils 1-1-2'),
  (6, 'fils 1-2-1'), (6, 'fils 1-2-2'), (6, 'fils 1-2-3'),
  (7, 'fils 1-3-1'), (7, 'fils 1-3-2'), (7, 'fils 1-3-3'),
  (8, 'fils 2-1-1'), (8, 'fils 2-1-2'),
  (9, 'fils 2-2-1'), (9, 'fils 2-2-2'), (9, 'fils 2-2-3'),
  (10, 'fils 2-3-1'), (10, 'fils 2-3-2'), (10, 'fils 1-3-3'),
  (11, 'fils 3-1-1'), (11, 'fils 3-1-2'), (12, 'fils 3-2-1'),
  (12, 'fils 3-2-2'), (12, 'fils 3-2-3'),
  (13, 'fils 3-3-1'), (13, 'fils 3-3-2'), (13, 'fils 3-3-3');
/* --------------

 --------------*/
SELECT *
FROM arbre.parent
ORDER BY lien, id;
/*--------------

+----+------+--------------+
| id | lien | nom          |
+----+------+--------------+
|  1 | NULL |              |
|  2 |    1 | grand-père 1 |
|  3 |    1 | grand-père 2 |
|  4 |    1 | grand-père 3 |
|  5 |    2 | père 1-1     |
|  6 |    2 | père 1-2     |
|  7 |    2 | père 1-3     |
|  8 |    3 | père 2-1     |
|  9 |    3 | père 2-2     |
| 10 |    3 | père 2-3     |
| 11 |    4 | père 3-1     |
| 12 |    4 | père 3-2     |
| 13 |    4 | père 3-3     |
| 14 |    5 | fils 1-1-1   |
| 15 |    5 | fils 1-1-2   |
| 16 |    6 | fils 1-2-1   |
| 17 |    6 | fils 1-2-2   |
| 18 |    6 | fils 1-2-3   |
| 19 |    7 | fils 1-3-1   |
| 20 |    7 | fils 1-3-2   |
| 21 |    7 | fils 1-3-3   |
| 22 |    8 | fils 2-1-1   |
| 23 |    8 | fils 2-1-2   |
| 24 |    9 | fils 2-2-1   |
| 25 |    9 | fils 2-2-2   |
| 26 |    9 | fils 2-2-3   |
| 27 |   10 | fils 2-3-1   |
| 28 |   10 | fils 2-3-2   |
| 29 |   10 | fils 1-3-3   |
| 30 |   11 | fils 3-1-1   |
| 31 |   11 | fils 3-1-2   |
| 32 |   12 | fils 3-2-1   |
| 33 |   12 | fils 3-2-2   |
| 34 |   12 | fils 3-2-3   |
| 35 |   13 | fils 3-3-1   |
| 36 |   13 | fils 3-3-2   |
| 37 |   13 | fils 3-3-3   |
+----+------+--------------+
--------------*/
DROP PROCEDURE IF EXISTS `arbre`;
/*--------------

--------------*/
-- Exemple de procédure avec boucle
-- Génère ici l'azrbre, le groupe
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
/* --------------

--------------*/
TRUNCATE `travail`;
/*--------------

--------------*/
CALL `arbre`(1, '');
/*   --------------

 --------------*/
SELECT lib
FROM travail;
/*
--------------

+--------------------+
| lib                |
+--------------------+
| ... grand-père 1   |
| ..... père 1-1     |
| ....... fils 1-1-1 |
| ....... fils 1-1-2 |
| ..... père 1-2     |
| ....... fils 1-2-1 |
| ....... fils 1-2-2 |
| ....... fils 1-2-3 |
| ..... père 1-3     |
| ....... fils 1-3-1 |
| ....... fils 1-3-2 |
| ....... fils 1-3-3 |
| ... grand-père 2   |
| ..... père 2-1     |
| ....... fils 2-1-1 |
| ....... fils 2-1-2 |
| ..... père 2-2     |
| ....... fils 2-2-1 |
| ....... fils 2-2-2 |
| ....... fils 2-2-3 |
| ..... père 2-3     |
| ....... fils 2-3-1 |
| ....... fils 2-3-2 |
| ....... fils 1-3-3 |
| ... grand-père 3   |
| ..... père 3-1     |
| ....... fils 3-1-1 |
| ....... fils 3-1-2 |
| ..... père 3-2     |
| ....... fils 3-2-1 |
| ....... fils 3-2-2 |
| ....... fils 3-2-3 |
| ..... père 3-3     |
| ....... fils 3-3-1 |
| ....... fils 3-3-2 |
| ....... fils 3-3-3 |
+--------------------+
--------------*/
TRUNCATE `travail`;
/*--------------

--------------*/
SET @id = (SELECT id
           FROM parent
           WHERE nom LIKE 'grand-père 2');
/*--------------

--------------*/
CALL `arbre`(@id, '');
/*
--------------

--------------*/
SELECT lib
FROM travail;
/*
--------------

+------------------+
| lib              |
+------------------+
| ... père 2-1     |
| ..... fils 2-1-1 |
| ..... fils 2-1-2 |
| ... père 2-2     |
| ..... fils 2-2-1 |
| ..... fils 2-2-2 |
| ..... fils 2-2-3 |
| ... père 2-3     |
| ..... fils 2-3-1 |
| ..... fils 2-3-2 |
| ..... fils 1-3-3 |
+------------------+
--------------*/
TRUNCATE `travail`;
/*
--------------

--------------*/
SET @id = (SELECT id
           FROM parent
           WHERE nom LIKE 'père 3-2');
/*--------------

--------------*/
CALL `arbre`(@id, '');
/*--------------

--------------*/
SELECT lib
FROM travail
     /*
     --------------
     +----------------+
     | lib            |
     +----------------+
     | ... fils 3-2-1 |
     | ... fils 3-2-2 |
     | ... fils 3-2-3 |
     +----------------+
     --------------
     */
     COMMIT;
/*--------------

--------------
*/
SET AUTOCOMMIT = 1;
/*--------------*/
