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
    <li>La table b2 a les colonnes id, pseudo, parr, uid, parrain<br>(Les 2 dernières étant vouées à
      disparaître à terme)
    </li>
    <li>Le membre racine (Aadminli) n'est pas géré dans la procédure<br>
      (Supprimé de b1 et inséré dans b2 'à la main').
    </li>
  </ol>
  </p>


  <?php


  $sql = "DROP TABLE IF EXISTS b1;
CREATE TABLE b1
    SELECT *
    FROM b;
DELETE FROM b1 where uid=1";
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

  $sql = "DROP PROCEDURE IF EXISTS boucle_b1;
CREATE PROCEDURE boucle_b1()
  BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_id, v_stop, v_parr INT;
    DECLARE v_pseudo, v_parrain VARCHAR(255);

    DECLARE b_cursor CURSOR FOR
      SELECT
        uid,
        uname,
        parr
      FROM b1;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Var pour stopper la boucle à la volée
    SET v_stop = 0;
    SET v_parr = 0;

    OPEN b_cursor;

    b_loop: LOOP
      FETCH b_cursor
      INTO v_id, v_pseudo, v_parrain;

      SELECT
        v_id,
        v_pseudo,
        v_parrain;

      SELECT id
      INTO v_parr
      FROM b2
      WHERE PSEUDO = v_parrain;

      SELECT id
      FROM b2
      WHERE PSEUDO = v_parrain;

-- SET v_parrain = concat(v_parrain, ' ', LAST_INSERT_ID);

      IF done OR v_stop = 111 OR v_parr = 0
      THEN
        LEAVE b_loop;
      END IF;

      SET v_stop = v_stop + 1;

      IF v_parr <> 0
      THEN
        INSERT INTO b2 (pseudo, parr, uid, parrain) VALUES
          (
            v_pseudo,
            v_parr,
            v_id,
            v_parrain
          );

-- SET v_parrain = concat(v_parrain, ' ', LAST_INSERT_ID());
-- update b2 set Parrain = v_parrain where pseudo = v_pseudo;

      DELETE FROM b1 where uid = LAST_INSERT_ID();

      END IF;
    END LOOP;

    CLOSE b_cursor;

  END;";
  //  affLign( $sql );
  $pdo->query( $sql );

  $sql = "call boucle_b1();";
  $pdo->query( $sql );

  ?>

  <h3>Création des données</h3>

  <?php

  $sql = "select * from b1";
  $req( $sql, $pdo );

  $sql = "select * from b2";
  $req( $sql, $pdo );


  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
