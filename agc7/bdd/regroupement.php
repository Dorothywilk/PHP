<?php
namespace GC7;
?>
  <div class="jumbotron">

    <h3 class="meaDo">Regroupement</h3>

    <p class="mt5">
      Regroupement de lignes en fonction d'un critère, voire de plusieurs
    </p>

    <p class="lead">
      GROUP BY
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


$sql1 = "SELECT (select nom_courant from espece where id=espece_id),
COUNT(*) AS 'Mâles'  FROM animal
where sexe='M'
GROUP BY espece_id";
aff( $sql1 );
$req( $sql1 );


$sql2 = "SELECT (select nom_courant from espece where id=espece_id),
COUNT(*) AS 'Nombre'  FROM animal
GROUP BY espece_id";
aff( $sql2 );
$req( $sql2 );


$sql = 'SELECT Espece.nom_courant, COUNT(animal.espece_id) AS nb_animaux
FROM Animal
  RIGHT JOIN Espece ON Animal.espece_id = Espece.id
  -- RIGHT puisque la table Espece est à droite.
GROUP BY nom_courant
ORDER BY nb_animaux desc;';
aff( $sql );
$req( $sql );


$sql = "SELECT nom_courant, COUNT(*) as nb_animaux
FROM Animal
INNER JOIN Espece ON Espece.id = Animal.espece_id
GROUP BY nom_courant";
//aff( $sql );
//$req( $sql );


// Regroupement sur plusieurs critères
$sql = "SELECT sexe, COUNT(*) as nb_animaux
FROM Animal
GROUP BY sexe";
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
