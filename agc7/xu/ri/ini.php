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


  $sql = "DROP PROCEDURE IF EXISTS arbreXuB;
CREATE PROCEDURE arbreXuB()
BEGIN
  DECLARE v_uid, v_parr INT;
  DECLARE v_uname VARCHAR(255);

  DROP TEMPORARY TABLE IF EXISTS t_xus;

CREATE TEMPORARY TABLE t_xus
select uid, uname, parr
  FROM www_boos2013.xoops_users limit 1;

-- insert into t_xus (uid, uname, parr) values (SELECT uid, uname, parr FROM www_boos2013.xoops_users limit 2, 3);


insert into t_xus (uid, uname, parr) values (77, 'kkk', 'opop');

END;

CALL arbreXuB();";
  affLign( $sql );
  $pdo->query( $sql );


  $sql = 'SELECT * from t_xus;';
  $req( $sql, $pdo );

  $sql = 'SELECT uid, uname, parr
FROM www_boos2013.xoops_users
LIMIT 3';
  $req( $sql, $pdo );


  echo str_repeat( '<br>', 3 ); // 28
  ?>
</div>
