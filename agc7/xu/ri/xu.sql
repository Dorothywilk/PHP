USE aaxu;


SET AUTOCOMMIT = 0;
SET @@max_sp_recursion_depth = 255;


START TRANSACTION;


DROP DATABASE IF EXISTS `aaxu`;
CREATE DATABASE `aaxu`
  DEFAULT CHARACTER SET `latin1`
  DEFAULT COLLATE `latin1_general_ci`;


-- #################################################################
DROP TABLE IF EXISTS xu;
CREATE TABLE `xu` (
  `id`      INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `pseudo`  VARCHAR(25)      NULL,
  `lv`      TINYINT(2)       NOT NULL DEFAULT '0',
  `typ`     CHAR(2)          NOT NULL DEFAULT '',
  `lva`     TINYINT(5)       NOT NULL DEFAULT '0',
  `lvp`     TINYINT(5)       NOT NULL DEFAULT '0',
  `parrain` VARCHAR(50)      NOT NULL DEFAULT '0',
  `parr`    INT(11)          NULL     DEFAULT '0',
  `bg`      TINYINT(5)       NOT NULL DEFAULT '0',
  `bd`      TINYINT(5)       NOT NULL DEFAULT '0',
  `pf`      TINYINT(5)       NOT NULL DEFAULT '0'
)
  COLLATE = 'latin1_general_ci'
  ENGINE = InnoDB
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
       WHERE uname = parrain) AS parr
    FROM www_boos2013.xoops_users;

SELECT *
FROM xu;

-- #################################################################
-- 3 mn
DROP PROCEDURE IF EXISTS `getUpline`;
SET @@max_sp_recursion_depth = 255;

DELIMITER |
CREATE PROCEDURE getUpline(
  IN    ori      INT,
  INOUT parr     INT,
  INOUT reponses VARCHAR(255)
)
  BEGIN
    SELECT parr
    INTO parr
    FROM xu
    WHERE id = ori;

    IF parr IS NULL
    THEN
      SELECT reponses AS Upline;
    ELSE
      SET reponses = concat(reponses, ', ', parr);
      SET ori = parr;
      CALL getUpline(parr, parr, reponses);
    END IF;
  END |
DELIMITER ;


use aaxu;
set @reponses='cathi';

CALL getUpline(6, @parr, @reponses);


SELECT parr
FROM xu
WHERE id = 6;

-- #################################################################
/*
// Exemple requête père
//$req = [
//  'sql' => 'getPere1',
//  'item' => 'Transport'
//  //  'item' => 'Marin'
//];
//$maReq = new Requete( (Array) $req );
//aff('Recherche Père');
//affR( $maReq );
*/

SELECT (SELECT id
        FROM xu
        WHERE parr = 'cathi')
FROM xu
WHERE id = 6;

SELECT id
FROM xu
WHERE id = (SELECT id
            FROM xu
            WHERE parr = 'cathi');

SET AUTOCOMMIT = 1;

