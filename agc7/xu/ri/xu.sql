SET AUTOCOMMIT = 0;
SET @@max_sp_recursion_depth = 255;


START TRANSACTION;


DROP DATABASE IF EXISTS `aaxu`;
CREATE DATABASE `aaxu`
  DEFAULT CHARACTER SET `latin1`
  DEFAULT COLLATE `latin1_general_ci`;
USE aaxu;


DROP TABLE IF EXISTS xu;

-- #################################################################
CREATE TABLE xu
  -- colonnes
    SELECT
      uid,
      uname,
      lv,
      typ,
      lva,
      lvp,
      parr
    FROM www_boos2013.xoops_users;


SELECT count(*)
FROM xu;
-- 25 038 lignes

-- #################################################################
-- 3 mn
DROP PROCEDURE IF EXISTS `getUpline`;
SET @@max_sp_recursion_depth = 255;
DELIMITER |
CREATE PROCEDURE getUpline(
  IN    ori      INT,
  INOUT pere     INT,
  INOUT reponses VARCHAR(255)
)
  BEGIN
    SELECT xu
    INTO pere
    FROM FAMILLE
    WHERE FAM_ID = ori;

    IF pere IS NULL
    THEN
      SELECT reponses AS Upline;
    ELSE
      SET reponses = concat(reponses, ', ', pere);
      SET ori = pere;
      CALL getUpline(pere, pere, reponses);
    END IF;
  END |
DELIMITER ;

SET AUTOCOMMIT = 1;

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
