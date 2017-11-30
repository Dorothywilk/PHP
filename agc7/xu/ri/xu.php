<?php namespace GC7; ?>
<div class="jumbotron">
  <h1 class="meaDo pb10"><a
      href="https://stackoverflow.com/questions/5125096/for-loop-example-in-mysql"
      target="_blank">XU</a></h1>

  <h3 class="lead">Travail réel / b</h3>

  <p class="lead">Nécessite la BdD `<strong>aazt</strong>` (Initiée dans page FonctionsUtilisateurs)
  </p>
</div>
<div class="maingc7">
  <h3>But: Obtenir cette table à partir de b (S'appelle xutB)</h3>
  <?php
  $pdo = pdo( 'aazt' ); // BdD de tests

  $sql = "DROP TABLE IF EXISTS xut;
CREATE TABLE xut
    SELECT *
    FROM aaxu.xut;";
  //  affLign( $sql );
  //  $pdo->query( $sql );

  $sql = "select * from xut;";
  $req( $sql, $pdo );

  $sql = "-- Représentation graphique
SELECT concat(repeat('&nbsp; ', pf * 5), pseudo) 'Groupe global'
FROM xut
ORDER BY bg;";
  $req( $sql, $pdo );

  $sql = "select * from b;";
  $req( $sql, $pdo );

  ?>

  <h3>Préparation des tables b1 et b2</h3>
  <ul>
    <li>b1: Table intermédiaire dont les lignes sont effacées au fur et à mesure de la boucle
      itérative
    </li>
    <li>b2: Table exploitable sur laquelle une boucle pourra lancer insertXu pour chaque ligne dans
      l'ordre
    </li>
  </ul>
  <p class="load">NB:
  <ol>
    <li>La table b2 a les colonnes id, pseudo, parr, uid, parrain<br>(Les 2 dernières étant vouées à disparaître à terme)</li>
    <li>Le membre racine (Aadminli) n'est pas géré dans la procédure<br>
      (Supprimé de b1 et inséré dans b2 'à la main').
    </li>
  </ol>
  </p>


  <?php


  $sql = "DROP TABLE IF EXISTS b1;
CREATE TABLE b1
    SELECT *
    FROM b;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT * FROM b1;";
  $req( $sql, $pdo );


  $sql = "DROP TABLE IF EXISTS b2;
CREATE TABLE `b2` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pseudo` VARCHAR(255) NOT NULL COLLATE 'latin1_general_ci',
	`parr` INT(11) UNSIGNED NULL DEFAULT NULL,
	`uid` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`parrain` VARCHAR(255) NULL DEFAULT NULL
	       COLLATE 'latin1_general_ci',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `id` (`id`),
	UNIQUE INDEX `uid` (`uid`),
	UNIQUE INDEX `pseudo` (`pseudo`)
)
COLLATE='latin1_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;

INSERT INTO b2 (uid, pseudo)
VALUES (1, 'Aadminli')";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT * FROM b2;";
  $req( $sql, $pdo );

  ?>

  <h3>Boucle itérative / b1</h3>

  <?php

  $sql = "DROP PROCEDURE IF EXISTS test_boucle_b;
CREATE PROCEDURE `test_boucle_b`(IN `p_id` INT)
  BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_id INT;
    DECLARE v_pseudo, v_parr VARCHAR(255);

    DECLARE b_cursor CURSOR FOR
      SELECT
        uid,
        uname,
        parr
      FROM b
      WHERE uid < p_id;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    DROP TEMPORARY TABLE IF EXISTS t_b;
    CREATE TEMPORARY TABLE t_b (
      id     INT,
      pseudo VARCHAR(255),
      parr VARCHAR (255)
    );

    OPEN b_cursor;

    b_loop: LOOP
      FETCH b_cursor
      INTO v_id, v_pseudo, v_parr;

      IF done
      THEN
        LEAVE b_loop;
      END IF;

      INSERT INTO t_b (id, pseudo, parr) VALUES
        (v_id,
         v_pseudo,
         v_parr);
    END LOOP;

    CLOSE b_cursor;

SELECT *
FROM t_b;

END;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "call test_boucle_b(100);";
  $req( $sql, $pdo );


  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
