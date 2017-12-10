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
        <li><i class="fa fa-check-square-o"></i> Table -> xu (uid, uname, lv, typ, lva, lvp, parr)</li>
        <li><i class="fa fa-check-square-o"></i> Table -> xu: Ajouter index sur id, lv, typ, bg, bd, pf</li>
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
  Membres ayant au moins un parrain.
  <hr>
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
FROM aazt.boosteur
WHERE uname = xu.parr) as parrId, parr
FROM aazt.boosteur xu
WHERE uid =' . $id;
        $req( $sql, $pdo, 1 );

    echo '<h3>XU</h3>';
    $sql = 'SELECT uid, uname, parr
FROM aazt.boosteurori
WHERE id =' . $id;
    $req( $sql, $pdo, 1 );
    echo '<hr>';
  }


  function getParrId( $id )
  {
    global $req, $pdo;

    $sql = 'SELECT parr
FROM aazt.boosteurori
WHERE uid =' . $id;
    $cnx = $pdo->query( $sql );
//    echo '<pre>'; var_dump( $cnx ); echo '</pre>';
    $rep = $cnx->fetch()[ 0 ];
    return $rep;
  }

  function getUpline( $parr )
  {
    while ( $parr != 15 ) {
      $parr = getParrId( $parr );
      echo ' < ' . $parr;

    }
  }

  // getUpline(141);



  for ( $i = 1; $i < 3e4; $i++ ) {
    if ( !getParrId( $i ) ) {

      echo $i . ' : ';
      // getUpline( $i );
      echo '<hr>';
    }
  }

  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
