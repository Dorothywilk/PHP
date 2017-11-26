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
  `id`    INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `pseudo` VARCHAR(25)      NULL,
  `lv`     TINYINT(2)       NOT NULL DEFAULT '0',
  `typ`    CHAR(2)          NOT NULL DEFAULT '',
  `lva`    TINYINT(5)       NOT NULL DEFAULT '0',
  `lvp`    TINYINT(5)       NOT NULL DEFAULT '0',
  `parr`   VARCHAR(50)      NOT NULL DEFAULT '0',
  `bg`     TINYINT(5)       NOT NULL DEFAULT '0',
  `bd`     TINYINT(5)       NOT NULL DEFAULT '0',
  `pf`     TINYINT(5)       NOT NULL DEFAULT '0'
)
  COLLATE = 'latin1_general_ci'
  ENGINE = InnoDB
    SELECT
      uid as id,
      uname as pseudo,
      lv,
      typ,
      lva,
      lvp,
      parr
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
  INOUT parrain     INT,
  INOUT reponses VARCHAR(255)
)
  BEGIN
    SELECT pseudo
    INTO parrain
    FROM xu
    WHERE pseudo = ori;

    IF parrain IS NULL
    THEN
      SELECT reponses AS Upline;
    ELSE
      SET reponses = concat(reponses, ', ', parrain);
      SET ori = parrain;
      CALL getUpline(parrain, parrain, reponses);
    END IF;
  END |
DELIMITER ;

SET AUTOCOMMIT = 1;


call  getUpline(6,@parrain, @reponse);
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
