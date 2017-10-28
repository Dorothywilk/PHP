<?php
namespace GC7;
?>
  <div class="jumbotron">

    <h3 class="meaDo">Fonctions d'agrégation</h3>

    <p class="mt5">
      Principalement pour stats
    </p>

    <p class="lead">
      COUNT(colonne ou *), SUM(), GROUP_CONCAT()
    </p>
  </div>
  <?php

$req = function ( $sql ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

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

$sql = "-- Combien de races avons-nous ? --
-- ---------------------------------
SELECT COUNT(*) AS nb_races
FROM Race";
aff( $sql );
$req( $sql );

$sql = "-- Combien de chiens avons-nous ? --
-- ---------------------------------
SELECT COUNT(*) AS nb_chiens FROM animal
INNER JOIN espece ON espece.id = animal.espece_id
WHERE espece.nom_courant = 'Chien'";
aff( $sql );
$req( $sql );

$sql = "SELECT  COUNT(*), COUNT(race_id), COUNT(DISTINCT race_id), MIN(nom),
  (select max(date_naissance) from pets)
FROM Animal;";
aff( $sql );
$req( $sql );


$sql = "SELECT GROUP_CONCAT('- ',nom_courant,': ', prix, ' €'
ORDER BY nom_courant SEPARATOR '<br>'), SUM(prix) as 'Total:' FROM espece;";
aff( "SELECT GROUP_CONCAT<g>(</g>' ', nom_courant,': ', prix, ' €.'
ORDER BY nom_courant SEPARATOR '&lt;br&gt;'<g>)</g>, SUM(prix) as 'Total:'
FROM espece;" );
$req( $sql );


?>
  <div class="jumbotron">
    <p class="h3-responsive">Les tables de référence</p>
    <?php
    $sql = 'select Id, Sexe, Nom, Commentaires, Espece_id, Race_id from animal limit 4';
    aff( 'Animal (Les 10 premiers ' . '/' . $nbr( 'animal' ) . ')' );
    $req( $sql );

    aff( 'Race (Les 3 premiers ' . '/' . $nbr( 'race' ) . ')' );
    $sql = 'select * from race limit 3';
    $req( $sql );

    //  aff( 'Animaux (Les 3 premiers ' . '/' . $nbr( 'animaux' ) . ' qui ont un propriétaire)' );
    //  $sql = 'select id, clt_id, nom, espece, sexe, commentaires from animaux where clt_id > ""
    // limit 3';
    //  $req( $sql );

    aff( 'Espèce (Les 4 premiers ' . '/' . $nbr( 'espece' ) . ')' );
    $sql = 'select * from espece';
    $req( $sql );
    ?>
  </div>
  <?php
