DROP DATABASE IF EXISTS `aaxu`;
CREATE DATABASE `aaxu`
  DEFAULT CHARACTER SET `latin1`
  DEFAULT COLLATE `latin1_general_ci`;

USE aaxu;
-- #################################################################
DROP TABLE IF EXISTS xu;
CREATE TABLE `xu` (
  `id`      INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `pseudo`  VARCHAR(25)      NULL     DEFAULT NULL COLLATE 'latin1_general_ci',
  `lv`      TINYINT(2)       NOT NULL DEFAULT '0',
  `typ`     CHAR(2)          NOT NULL DEFAULT '' COLLATE 'latin1_general_ci',
  `lva`     TINYINT(5)       NOT NULL DEFAULT '0',
  `lvp`     TINYINT(5)       NOT NULL DEFAULT '0',
  `parrain` VARCHAR(50)      NOT NULL DEFAULT '0' COLLATE 'latin1_general_ci',
  `parr`    INT(11)          NULL     DEFAULT '0',
  `bg`      TINYINT(5)       NOT NULL DEFAULT '0',
  `bd`      TINYINT(5)       NOT NULL DEFAULT '0',
  `pf`      TINYINT(5)       NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  INDEX `lv` (`lv`),
  INDEX `typ` (`typ`),
  INDEX `bg` (`bg`),
  INDEX `bd` (`bd`),
  INDEX `pf` (`pf`)
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
       WHERE uname = xu.parr) AS parr,
      '0'                     AS bg,
      '0'                     AS bd,
      '0'                     AS pf
    FROM www_boos2013.xoops_users xu;

ALTER TABLE aaxu.xu ADD PRIMARY KEY (id);


SELECT *
FROM xu;

-- #################################################################
-- 3 mn
USE aaxu;
DROP PROCEDURE IF EXISTS `getUpline`;
SET @@max_sp_recursion_depth = 255;
DELIMITER |
CREATE PROCEDURE getUpline(
  IN    ori      INT,
  INOUT parrid   INT,
  INOUT reponses VARCHAR(255)
)
  BEGIN
    SELECT parr
    INTO parrid
    FROM xu
    WHERE id = ori;

    IF parrid IS NULL
    THEN
      SELECT reponses AS Upline;
    ELSE
      SET reponses = concat(reponses, ', ', parrid);
      SET ori = parrid;
      CALL getUpline(ori, parrid, reponses);
    END IF;
  END |
DELIMITER ;

SET @@max_sp_recursion_depth = 255;
use aaxu;
SET @@max_sp_recursion_depth = 255;
SET @reponses = '141';
CALL getUpline(141, @id, @reponses);

SET @reponses = '10';
CALL getUpline(10, @id, @reponses);


USE aaxu;
-- SET @reponses = 'cathi';

SELECT
  id,
  pseudo,
  parrain
FROM aaxu.xu;

SELECT uid, uname, parr
from www_boos2013.xoops_users;

SHOW VARIABLES LIKE '%thread_stack%';
