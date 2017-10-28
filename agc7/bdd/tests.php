<?php
namespace GC7;
?>
  <div class="jumbotron">

    <h3 class="meaDo">Tests</h3>

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


$sql = "

SELECT count(*) as NbreDeChien
from animal
where espece_id=1

and year(date_naissance)>2005
and year(date_naissance)<2011


";
aff( $sql );
$req( $sql );



$sql = "

SELECT date_naissance
from animal
where espece_id=1
order by date_naissance
";
aff( $sql );
$req( $sql );
