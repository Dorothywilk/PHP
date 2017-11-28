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
  Ready.
  <?php

  // Todoli quintescence => meilleur ds P100
  // TodoLi Ralentir slide // thierry ds P100


  $pdo = pdo( 'aaxu' );


  $sql = "DROP PROCEDURE IF EXISTS uuu;
CREATE PROCEDURE uuu(OUT p_var VARCHAR(255))
BEGIN
  declare v_var INT default 0;
  set v_var = 7;
  -- select 1 as Valeur, v_var;
  -- Ne peut être affichée que via MySQL CLi
  select concat(
         'Var loc = ', v_var,
         ' - Résultat du IF(v_var = 7) = ',
         IF(v_var=7, 777, 333)) into p_var;
END;
call uuu(@var);";

  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT @var;";
  $req( $sql, $pdo );


  $sql = "DROP PROCEDURE IF EXISTS arbrexub;
CREATE PROCEDURE arbrexub(OUT p_rep INT)
BEGIN
  DECLARE v_uid, v_parr INT;
  DECLARE v_uname VARCHAR(255);

  SELECT(1+2) into p_rep;

END;

CALL arbreXuB(@rep);";
  affLign( $sql );
  $pdo->query( $sql );


  $sql = 'SELECT @rep;';
  $req( $sql, $pdo );

  $sql = 'SELECT uid, uname, parr
FROM www_boos2013.xoops_users
LIMIT 3';
  $req( $sql, $pdo );


  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
