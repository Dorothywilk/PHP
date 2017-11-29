<?php namespace GC7; ?>
<div class="jumbotron">

  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/la-representation-intervallaire" target="_blank">XU
      (RI)</a>
  </h1>

  <p class="lead">ToDoLi</p>
  <ul>
    <ol>
      <li><i class="fa fa-check-square-o"></i> Création new database de travail ("aaxu") en ligne de
        commande
      </li>
      <li><i class="fa fa-check-square-o"></i> New Table simplifiée (www_boos2013 => xu)</li>
      <li>Boucle pour rejouer insertion du premier au dernier</li>
      <ul>
        <li><i class="fa fa-check-square-o"></i> Prépa table xu</li>
        <li><i class="fa fa-check-square-o"></i> Table -> xu (uid, uname, lv, typ, lva, lvp, parr)
        </li>
        <li><i class="fa fa-check-square-o"></i> Table -> xu: Ajouter index sur id, lv, typ, bg, bd,
          pf
        </li>
        <li>Boucle (LOOP) pour update de bg, bd et pf</li>
        <li>Tests</li>
        <li>Appliquer dans P100 (OCMS)<br>
          (Avec migration + seeder)
        </li>
      </ul>
      <li>VM PHP4 pour refaire marcher ancien système complètement</li>
      <li>Appliquer B dans P100</li>
      <h3 class="lead">Installer
        <g>xu.sql</g>
      </h3>
    </ol>
  </ul>

</div>

<div class="maingc7">
  <?php

  // Todoli quintescence => meilleur ds P100
  // TodoLi Ralentir slide // thierry ds P100


  $pdo = pdo( 'aaxu' );


  $sql = "USE aaxu;

DROP TABLE IF EXISTS b;
CREATE TABLE b
    SELECT
      uid,
      uname,
      (SELECT uid
       FROM www_boos2013.xoops_users xxu
       WHERE xxu.uname = xu.parr) AS parr
    FROM www_boos2013.xoops_users xu
    LIMIT 0, 1;

/*
-- Insertion de lignes en provenance d'une autre table
INSERT INTO b (uid, uname, parr)
SELECT
  uid,
  uname,
  (SELECT uid
   FROM www_boos2013.xoops_users xxu
   WHERE xxu.uname = xu.parr) AS parr
FROM www_boos2013.xoops_users xu
LIMIT 0, 1;
*/

INSERT INTO b (uid, uname, parr)
VALUES
  (2, 'Grcote7', 1),
  (3, 'Doro', 2),
  (4, 'Jade', 3),
  (5, 'Micky', 1),
  (6, 'Jeny', 4),
  (7, 'Mimi', 3)
;

ALTER TABLE `b`
	CHANGE COLUMN `uid` `id` INT(10) UNSIGNED
	    NOT NULL AUTO_INCREMENT FIRST,
	CHANGE COLUMN `uname` `pseudo` VARCHAR(25)
	    NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	ADD PRIMARY KEY (`id`),
	ADD UNIQUE INDEX `pseudo` (`pseudo`);
update b set parr=null where id=1;
";
  affLign( $sql );
  $pdo->query( $sql );


  $sql = 'SELECT * from b;';
  $req( $sql, $pdo );


  $sql = 'EXPLAIN b;';
  $req( $sql, $pdo );


  $sql = "DROP PROCEDURE IF EXISTS aaxu.getUplineRecursif;
SET @@max_sp_recursion_depth = 255;
CREATE PROCEDURE `getUplineRecursif`(
  IN    ori      INT,
  INOUT pere     INT,
  INOUT reponses VARCHAR(255)
)
BEGIN

  SELECT (select uid FROM www_boos2013.xoops_users where uname = xu.parr)
  INTO pere
  FROM www_boos2013.xoops_users xu
  WHERE uid = ori;

/*
  SELECT parr
  INTO pere
  FROM b
  WHERE id = ori;
*/

  IF pere IS NULL
    THEN
      SET @upline=reponses;
    ELSE
      SET reponses = concat(reponses, ', ', pere);
      SET ori = pere;
      CALL getUplineRecursif(pere, pere, reponses);
  END IF;

END;";
  affLign( $sql );
  $pdo->query( $sql );


  $uid = 140;
  $sql = 'SET @reponses = ' . $uid . ';
CALL getUplineRecursif(' . $uid . ', @id, @reponses);';
  affLign( $sql );
  $pdo->query( $sql );


  $uid = 141;
  $sql = 'SET @reponses = ' . $uid . ';
CALL getUplineRecursif(' . $uid . ', @id, @reponses);';
  affLign( $sql );
  $pdo->query( $sql );


  $sql = "SELECT @upline as 'upline de 140', @reponses as 'upline de 141';";
  $req( $sql, $pdo );


  $sql = 'SELECT uid, uname, parr
FROM www_boos2013.xoops_users
LIMIT 3';
  $req( $sql, $pdo );


  echo str_repeat( '<br>', 3 ); // 28
  ?>
</div>
