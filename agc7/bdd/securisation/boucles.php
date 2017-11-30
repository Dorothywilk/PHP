<?php namespace GC7; ?>
<div class="jumbotron">
  <h1 class="meaDo pb10"><a
      href="https://stackoverflow.com/questions/5125096/for-loop-example-in-mysql"
      target="_blank">Boucles</a></h1>

  <h3 class="lead">Exemples divers</h3>
  <p class="lead">Nécessite la BdD `<strong>aazt</strong>` (Initiée dans page FonctionsUtilisateurs)</p>
</div>
<div class="maingc7">

  <?php
  $pdo = pdo( 'aazt' ); // BdD de tests

  $sql = "DROP TABLE IF EXISTS aazt.xut;
CREATE TABLE aazt.xut
    SELECT *
    FROM aaxu.xut;
";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "select * from aaxu.xut;";
  $req( $sql, $pdo );


  ?>
  <h3>For (
    <g>LOOP</g>
    )
  </h3>
  <?php


  $sql = "DROP PROCEDURE IF EXISTS compte;
CREATE PROCEDURE compte()
  BEGIN
    DECLARE reponses VARCHAR(1024);
    DECLARE a INT DEFAULT 1;
    SET reponses = '';
    simple_loop: LOOP
      SET reponses = concat(reponses, ' ', a);
      SET a = a + 1;
      IF a > 100
      THEN
        LEAVE simple_loop;
      END IF;
    END LOOP simple_loop;
    SELECT reponses;
  END;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "Call compte();";
  $req( $sql, $pdo );


  $sql = "DROP procedure if exists for_loop_example;
  CREATE procedure for_loop_example()
    wholeblock:BEGIN
    DECLARE x INT;
    DECLARE str VARCHAR(255);
    SET x = -5;
    SET str = '';
    loop_label: LOOP
      IF x > 0 THEN
        LEAVE loop_label;
      END IF;
      SET str = CONCAT(str,x,', ');
      SET x = x + 1;
      ITERATE loop_label;
    END LOOP;
    SELECT str;
  END;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "Call for_loop_example();";
  $req( $sql, $pdo );


  $sql = "select * from aaxu.xus;";
  $req( $sql, $pdo );

  ?>
  <h3>Itération sur la table ci-dessus (xus)</h3>

  <p>Équivalent de foreach()</p>
  <?php
  $sql = "DROP PROCEDURE IF EXISTS test_boucle_xus;
CREATE PROCEDURE `test_boucle_xus`(IN `p_id` INT)
  BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_id INT;
    DECLARE v_pseudo VARCHAR(255);

    DECLARE xus_cursor CURSOR FOR
      SELECT
        uid,
        uname
      FROM aaxu.xus
      WHERE uid < p_id;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    DROP TEMPORARY TABLE IF EXISTS t_xus;
    CREATE TEMPORARY TABLE t_xus (
      id     INT,
      pseudo VARCHAR(255)
    );

    OPEN xus_cursor;

    xus_loop: LOOP
      FETCH xus_cursor
      INTO v_id, v_pseudo;

      IF done
      THEN
        LEAVE xus_loop;
      END IF;

      INSERT INTO t_xus (id, pseudo) VALUES
        (v_id,
         v_pseudo);
    END LOOP;

    CLOSE xus_cursor;

SELECT *
FROM t_xus;
  END;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "call test_boucle_xus(100);";
  $req( $sql, $pdo );


  ?>
  <h3>
    <g>WHILE</g>
  </h3>
  <?php

  $sql = "DROP FUNCTION IF EXISTS getCarre;
CREATE FUNCTION getCarre(i INT(11))
  RETURNS INT
DETERMINISTIC
  BEGIN
    RETURN i * i;
  END;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT getCarre(25);";
  $req( $sql, $pdo );



  $sql = "SELECT 1";
  $req( $sql, $pdo );

  $sql = "SELECT 1";
  affLign( $sql );
  $pdo->query( $sql );


  $sql = "SELECT @@datadir
-- Une variable système définie dans my.ini
-- Dans ce fichier ; ou # pour les commentaires";
  $req( $sql, $pdo );

  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
