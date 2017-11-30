<?php namespace GC7; ?>
<div class="jumbotron">
  <h1 class="meaDo pb10"><a
      href="https://stackoverflow.com/questions/5125096/for-loop-example-in-mysql"
      target="_blank">Boucles</a></h1>

  <h3 class="lead">Exemples divers</h3>

  <p class="lead">Nécessite la BdD `<strong>aazt</strong>` (Initiée dans page FonctionsUtilisateurs)
  </p>
</div>
<div class="maingc7">

  <?php
  $pdo = pdo( 'aazt' ); // BdD de tests

  $sql = "DROP TABLE IF EXISTS xut;
CREATE TABLE xut
    SELECT *
    FROM aaxu.xut;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "select * from xut;";
  $req( $sql, $pdo );

  $sql = "-- Représentation graphique
SELECT concat(repeat('&nbsp; ', pf * 5), pseudo) 'Type de transport'
FROM xut
ORDER BY bg;";
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


  $sql = "USE aazt;";
  affLign( $sql );
  $pdo->query( $sql );


  $sql = "select * from b;";
  $req( $sql, $pdo );

  ?>
  <h3>Itération sur la table ci-dessus (xus)</h3>

  <p>Équivalent de foreach()</p>
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


  $sql = "DROP PROCEDURE IF EXISTS simuRecursivite;
CREATE PROCEDURE simuRecursivite(INOUT rep VARCHAR(255))
  BEGIN
    DECLARE i INT;
    SET i = 4;
    SET rep = '';
    WHILE i > 0 DO
      SET rep =
          trim(concat(i, ' (', (SELECT getParr(i)), ') ', rep));
      SET i = i - 1;
    END WHILE;
     -- SET @reponses = rep;
      -- , length(reponses) AS 'Longueur de la chaîne';
  END;
CALL simuRecursivite(@reponses);";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT @reponses, length(@reponses) AS 'Longueur de la chaîne';";
  $req( $sql, $pdo );;


  $sql = "DROP PROCEDURE IF EXISTS simuRecursivite;
CREATE PROCEDURE simuRecursivite(IN i INT)
  BEGIN
    DECLARE rep varchar(255) default '';
    WHILE i > 0 DO
      SET rep =
      trim(concat(i, ' (', (SELECT getParr(i)), ') ', rep));
      SET i = i - 1;
    END WHILE;
    SELECT
      rep,
      length(rep) AS 'Longueur de la chaîne';
  END;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "CALL simuRecursivite(4);";
  $req( $sql, $pdo );


  $sql = "DROP PROCEDURE IF EXISTS boucleI;
CREATE PROCEDURE boucleI()
  BEGIN
    DECLARE i INT DEFAULT 1;
    DROP TEMPORARY TABLE IF EXISTS t_rep;
    CREATE TEMPORARY TABLE t_rep (
      n     INT(11),
      carre INT(255),
      PRIMARY KEY (n)
    );
    START TRANSACTION;
    WHILE i < 4 DO
      INSERT INTO t_rep (n, carre) VALUES (i, (SELECT getCarre(i)));
      SET i = i + 1;
    END WHILE;
    COMMIT;
  END;
CALL boucleI();";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT *
FROM t_rep;";
  $req( $sql, $pdo );

  ?>

  <h3>Utilisation de
    <g>ITERATE</g>
  </h3>
  <p>Noter le label /
    <g>WHILE</g>
  </p>

  <?php

  $sql = "DROP PROCEDURE IF EXISTS test_iterate;
CREATE PROCEDURE `test_iterate`() BEGIN
  DECLARE v_i INT DEFAULT 0;

  DROP TEMPORARY TABLE IF EXISTS t_iter;
  CREATE TEMPORARY TABLE t_iter (
    i   INT,
    msg VARCHAR(50)
  );

  boucle_while: WHILE v_i < 3 DO
    SET v_i = v_i + 1;
    INSERT INTO t_iter (i, msg) VALUE (v_i, 'Avant IF');

    IF v_i = 2
    THEN
      ITERATE boucle_while;
    END IF;
    INSERT INTO t_iter (i, msg) VALUE (v_i, 'Après IF');
    -- Ne sera pas exécuté pour v_i = 2
  END WHILE;

  SELECT * FROM t_iter;
END;
CALL test_iterate();";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT *
FROM t_iter;";
  $req( $sql, $pdo );


  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
