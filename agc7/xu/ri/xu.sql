SET AUTOCOMMIT = 0;
SET @@max_sp_recursion_depth = 255;

START TRANSACTION;

DROP DATABASE IF EXISTS `aaxu`;
CREATE DATABASE `aaxu`
  DEFAULT CHARACTER SET `latin1`
  DEFAULT COLLATE `latin1_general_ci`;
USE aaxu;


SHOW TABLES;

CREATE TABLE xu
    SELECT
      uid,
      uname,
      lv,
      typ,
      lva,
      lvp,
      parr
    FROM www_boos2013.xoops_users;

SHOW TABLES;

SELECT *
FROM xu;

SET AUTOCOMMIT = 1;
