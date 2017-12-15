<?php namespace GC7; ?>
<div class="jumbotron">
  <h1 class="meaDo pb10"><a
      href="https://stackoverflow.com/questions/5125096/for-loop-example-in-mysql"
      target="_blank">Fonctions utilisateur</a></h1>

  <p class="lead">Nécessite d'exécuter
    <g>xu.sql</g>
  </p>
</div>
<div class="maingc7">

  <?php
  $pdo = pdo();

  $sql = "DROP DATABASE IF EXISTS `aazt`;
CREATE DATABASE `aazt`
  DEFAULT CHARACTER SET `latin1`
  DEFAULT COLLATE `latin1_general_ci`;";
  affLign( $sql );
  $pdo->query( $sql );

  $pdo = pdo( 'aazt' ); // BdD de tests


  $sql = "DROP FUNCTION IF EXISTS getCarre;
CREATE FUNCTION getCarre(n INT(11))
  RETURNS INT
DETERMINISTIC
  BEGIN
    RETURN n * n;
  END;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT getCarre(25);";
  $req( $sql, $pdo );

  ?>

  <h3>Exemple avec un extrait de la table B</h3>

  <?php


  $sql = "DROP TABLE IF EXISTS b;
CREATE TABLE `b` (
  `uid` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uname` VARCHAR(255) NOT NULL COLLATE 'latin1_general_ci',
  `parr` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE INDEX `uname` (`uname`)
)
COLLATE='latin1_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "INSERT INTO b (uid, uname, parr)
VALUES
  (1, 'Aadminli', NULL),
  (2, 'Grcote7', 'Aadminli'),
  (3, 'Doro', 'Grcote7'),
  (4, 'Jade', 'Doro'),
  (5, 'Micky', 'Jeny'),
  (7, 'Mimi', 'Doro'),
  (8, 'Jeny', 'Jade');";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "EXPLAIN b;";
  $req( $sql, $pdo );

  $sql = "SELECT * FROM b;";
  $req( $sql, $pdo );


  $sql = "DROP FUNCTION IF EXISTS getParr;
CREATE FUNCTION getParr(xuId INT)
  RETURNS INT
DETERMINISTIC
READS SQL DATA
  BEGIN
    SELECT uid
    INTO @uid
    FROM b b1
    WHERE uname = ( SELECT parr
                    FROM b
                    WHERE uid = xuId );
    RETURN @uid;
  END;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SET @uid = 3;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT   @uid           AS  uid,
         getParr(@uid)  AS  parrId;";
  $req( $sql, $pdo );

  //TodoLi https://stackoverflow.com/questions/5125096/for-loop-example-in-mysql
  // Boucle avec transaction

  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
