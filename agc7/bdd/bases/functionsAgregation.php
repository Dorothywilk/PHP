<?php
namespace GC7;
?>
<div class="jumbotron">

  <h3 class="meaDo mt10 pb10">Fonctions d'agrégation</h3>

  <p class="mt10">
    Principalement pour stats
  </p>

  <p class="lead">
    COUNT(colonne ou *), SUM(), GROUP_CONCAT()
  </p>
</div>

<?php

$sql = "-- Combien de races avons-nous ? --
-- ---------------------------------
SELECT COUNT(*) AS nb_races
FROM Race";
$req( $sql );


$sql = "-- Combien de chiens avons-nous ? --
-- ---------------------------------
SELECT COUNT(*) AS nb_chiens FROM animal
  INNER JOIN espece
  ON espece.id = animal.espece_id
WHERE espece.nom_courant = 'Chien'";
$req( $sql );


$sql = "SELECT  COUNT(*), COUNT(race_id), COUNT(DISTINCT race_id), MIN(nom),
  (select max(date_naissance) from pets)
FROM Animal";
$req( $sql );


$sql = "SELECT GROUP_CONCAT('- ',nom_courant,': ', prix, ' €'
ORDER BY nom_courant SEPARATOR '<br>'), SUM(prix) as 'Total:' FROM espece;";

aff( "SELECT GROUP_CONCAT<g>(</g>' ', nom_courant,': ', prix, ' €.'
ORDER BY nom_courant SEPARATOR '&lt;br&gt;'<g>)</g>, SUM(prix) as 'Total:'
FROM espece" );

$req( $sql );


?>
<div class="jumbotron jumbotronRef">
  <p class="h3-responsive text-center">Les tables de référence</p>
  <?php
  $sql = 'SELECT Id, Sexe, Nom, Commentaires, Espece_id, Race_id
FROM animal LIMIT 4';
  aff( 'Animal (Les 10 premiers /' . $nbr( 'animal' ) . ')' );
  $req( $sql );

  aff( 'Race (Les 3 premiers /' . $nbr( 'race' ) . ')' );
  $sql = 'SELECT * FROM race LIMIT 3';
  $req( $sql );

  aff( 'Espèce (Les 4 premiers /' . $nbr( 'espece' ) . ')' );
  $sql = 'SELECT * FROM espece';
  $req( $sql );
  ?>
</div>
