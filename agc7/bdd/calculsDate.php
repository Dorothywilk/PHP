<?php
namespace GC7;
?>
  <div class="jumbotron">

    <h3 class="meaDo">Calculs de dates</h3>

    <ul class="lead mt10">
      <li>DATEDIFF() : qui donne un résultat en nombre de jours;</li>
      <li>TIMEDIFF() : qui donne un résultat sous forme de TIME;</li>
      <li>TIMESTAMPDIFF() : qui donne le résultat dans l'unité de temps souhaitée (heure, secondes,
        mois,…).
      </li>
    </ul>

  </div>
  <?php

$req = function ( $sql ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );
  $cnx->query( 'SET lc_time_names = "fr_FR"' );
  $cnx = $cnx->query( $sql );
  try {
    $rep = $cnx->fetchAll( \PDO::FETCH_OBJ );
  } catch ( Exception $e ) {
    aff( $e );
  }

//  aff($rep);
  if ( $rep ) {
    affR( $rep );
  }
  if ( preg_match( '/INSERT|UPDATE|REPLACE|DELETE/i', $sql ) ) {
    $nbra = $cnx->rowCount(); // Nombre de rangs affectés
    $plur = ( $nbra > 1 ) ? 's' : ''; // Pluriel
    echo '=> ' . $nbra . ' rang' . $plur . ' affecté' . $plur . '<hr>';
  }

};

$nbr = function ( $table ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

  return $cnx->query( 'select count(*) from ' . $table )->fetch()[ 0 ];
};


echo '<h3>Bases</h3>';

$sql = 'SELECT DATEDIFF("2011-12-25 22:12:18","2011-11-10") AS nb_jours';
aff( $sql );
$req( $sql );

$sql = 'SELECT
-- Avec des DATETIME
   "2011-10-08 12:35:45" AS datetime1, "2011-10-07 16:00:25" AS datetime2,
   TIMEDIFF("2011-10-08 12:35:45", "2011-10-07 16:00:25") as diffDATETIME,
-- Avec des TIME
   "12:35:45" AS time1, "00:00:25" AS time2, TIMEDIFF("12:35:45", "00:00:25") as diffTIME;';
aff( $sql );
$req( $sql );


?>
  <div class="jumbotron">
    <p class="h3-responsive">Les tables de référence</p>
    <?php
    $sql = 'select Id, Sexe, Nom, Commentaires, Espece_id, Race_id from animal limit 3';
    aff( 'Animal (Les 3 premiers ' . '/' . $nbr( 'animal' ) . ')' );
    $req( $sql );

    aff( 'Race (Les 3 premiers ' . '/' . $nbr( 'race' ) . ')' );
    $sql = 'select * from race limit 3';
    $req( $sql );

    aff( 'Espèce (Les 3 premiers ' . '/' . $nbr( 'espece' ) . ')' );
    $sql = 'select * from espece limit 3';
    $req( $sql );

    aff( 'Espèce (Les 3 premiers /' . $nbr( 'espece' ) . ')' );
    $sql = "select id, nom_courant, nom_latin, concat(left(description, 28), '...'), prix from espece limit 3";
    $req( $sql );
    ?>
  </div>
  <?php
