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

  $sql = "select count(*) as cntXu from xu;";
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

  $sql = "USE aazt;

-- #################### Préparation des tables ##################
TRUNCATE aazt.b1;
TRUNCATE aazt.b2;

INSERT INTO aazt.b1 (uid, uname, parr)
VALUES
  (2, 'Grcote7', 'Aadminli'),
  (3, 'Doro', 'Grcote7'),
  (4, 'Jade', 'Doro'),
  (5, 'Micky', 'Jeny'),
  (7, 'Mimi', 'Doro'),
  (8, 'Jeny', 'Jade'),
  (9, 'Julien', 'Rom1'),
  (10, 'Jonathan', 'Doro'),
  (11, 'Félicien', 'Rom1'),
  (12, 'rom1', 'Doro'),
  (13, 'Greg', 'Jonathan'),
  (14, 'Fanny', 'Jonathan');

INSERT INTO aazt.b2 (uid, pseudo, parr)
VALUES
  (1, 'Aadminli', NULL);

DROP PROCEDURE IF EXISTS boucle_b1;
CREATE PROCEDURE boucle_b1()
  BEGIN
    DECLARE v_stop, derId, v_id, v_parr, v_paUid, uidea, i INT DEFAULT 0;
    DECLARE v_pseudo, v_parrain VARCHAR(255);

    -- Table temporaire des arrivants en attentre
    DROP TEMPORARY TABLE IF EXISTS t_b;
    CREATE TEMPORARY TABLE t_b (
      uid     INT,
      uname   VARCHAR(255),
      parrId  INT,
      parrain VARCHAR(255)
    );

    SELECT max(uid)
    INTO derId
    FROM b1;

    SET i = 1;

    WHILE i <= derId DO

      SELECT
        uid,
        uname,
        parr
      INTO v_id, v_pseudo, v_parrain
      FROM b1
      WHERE uid = i;

      SET v_stop = v_stop + 1;

      IF v_id
      THEN

        DELETE FROM b1
        WHERE uid = v_id;

        SELECT id
        INTO v_parr
        FROM b2
        WHERE PSEUDO = v_parrain;


        IF v_parr
        THEN

          INSERT INTO b2 (pseudo, parr, uid, parrain) VALUES
            (
              v_pseudo,
              v_parr,
              v_id,
              v_parrain
            );


          IF v_pseudo IN (SELECT parrain
                          FROM t_b)
          THEN

            INSERT INTO b2 (pseudo, parr, uid, parrain)
              SELECT
                uname,
                i,
                uid,
                parrain
              FROM t_b
              WHERE parrain = v_pseudo;



          END IF;

        ELSE

          INSERT INTO t_b (uid, uname, parrain) VALUES (v_id, v_pseudo, v_parrain);

        END IF;

      END IF;

      SET i = i + 1;

      SET v_id = 0;
      SET v_parr = 0;
      SET v_pseudo = '';
      SET v_parrain = '';


    END WHILE;

    SELECT *
    FROM aazt.b2;

  END;

CALL boucle_b1()";
  affLign( $sql );
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
