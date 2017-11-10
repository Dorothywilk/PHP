<?php
namespace GC7;
?>
<div class="jumbotron">

  <h1 class="meaDo mt10 pb10"><a href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/fonctions-d-agregation" target="_blank">Fonctions d'agrégation</a></h1>

  <p class="lead mv0">
    Principalement pour stats
  </p>

  <p class="lead">
    <code>COUNT (colonne ou *)</code>, <code>SUM()</code>, <code>GROUP_CONCAT()</code>
  </p>
</div>

<div class="maingc7">

<?php

$sql = "-- Combien de races avons-nous ? --
-- ---------------------------------
SELECT COUNT(*) AS 'Nombre de races'
FROM Race";
$req( $sql );


$sql = "-- Combien de chiens avons-nous ? --
-- ---------------------------------
SELECT COUNT(*) AS 'Nombre de chiens' FROM animal
  INNER JOIN espece
  ON espece.id = animal.espece_id
WHERE espece.nom_courant = 'Chien'";
$req( $sql );


$sql = "SELECT  COUNT(*) as 'total:', COUNT(race_id), COUNT(DISTINCT race_id),
        MIN(nom), (select max(date_naissance) from pets)
FROM Animal";
//$req( $sql );


$sql = "SELECT GROUP_CONCAT('- ',nom_courant,': ', prix, '€'
ORDER BY nom_courant SEPARATOR '<br>') as 'Sélection d\'animaux et leurs prix', SUM(prix) AS
'total:' FROM
espece";
affLign( "SELECT <g>GROUP_CONCAT</g> <g>(</g>' ', nom_courant,': ', prix, ' €.'
ORDER BY nom_courant SEPARATOR '&lt;br&gt;'<g>)</g>, SUM(prix) AS 'Total:'
FROM espece" );
$req( $sql, null, 0 );


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
</div>
