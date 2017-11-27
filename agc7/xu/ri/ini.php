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

  $sql = "SELECT * from xu limit 21";
  //  $req( $sql, $pdo );


  //    global $req;

  function getParr( $id )
  {
    global $req, $pdo;
    echo '<h3>B</h3>';
    $sql = 'SELECT uid, uname,
(SELECT uid
FROM www_boos2013.xoops_users
WHERE uname = xu.parr) as parrId, parr
FROM www_boos2013.xoops_users xu
WHERE uid =' . $id;
    $req( $sql, $pdo, 1 );

    echo '<h3>XU</h3>';
    $sql = 'SELECT id, pseudo, parr, parrain
FROM aaxu.xu
WHERE id =' . $id;
    $req( $sql, $pdo, 1 );
    echo '<hr>';
  }


  getParr( 141 );
  getParr( 81 );
  getParr( 46 );
  getParr( 6357 );
  getParr( 6347 );
  getParr( 6158 );
  getParr( 6013 );
  getParr( 5901 );
  getParr( 3163 );
  getParr( 2644 );
  getParr( 2510 );
  getParr( 2221 );
  getParr( 2172 );
  getParr( 18503 );
  getParr( 17941 );
  getParr( 2970 );
  getParr( 203 );
  getParr( 58 );
  getParr( 12 );
  getParr( 5 );
  getParr( 2 );
  getParr( 1 );
  getParr( 15 );










  echo str_repeat( '<br>', 25 ); // 28


  getParr( 10 );
  getParr( 3 );
  getParr( 2 );
  getParr( 1 );
  getParr( 15 );


  // Rappel doc SLIDES_3013.ppt (Chapitre / optimisations)
  ?>
</div>
