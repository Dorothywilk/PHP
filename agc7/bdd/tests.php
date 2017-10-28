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
-- Afficher la date au format ISO du 5e anniversaire des animaux dont on connaît
-- soit le père, soit la mère.

select date_format(adddate(date_naissance, interval 5 year), '%Y-%m-%dT%TZ') as 'Date ISOdu 5<sup>
ème</sup>
Anniversaire', id, nom

from animal

where pere_id is not null
or mere_id is not null
";
aff( $sql );
$req( $sql );


$sql = "
SELECT DATE_FORMAT(DATE_ADD(date_naissance, INTERVAL 5 YEAR), GET_FORMAT(DATE, 'ISO')) AS dateIso
FROM Animal
WHERE pere_id IS NOT NULL
OR mere_id IS NOT NULL;
";
aff( $sql );
$req( $sql );
echo 'Soit: 21 naissances sur 5 années: 21 / 5 = '. 21/5;


