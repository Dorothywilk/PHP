<?php

namespace GC7;

?>
  <div class="jumbotron">

    <h3 class="meaDo">Transactions</h3>

    <ul class="lead mt10">
      <li>Uniquement moteur MySQl InnoDB</li>
    </ul>

  </div>
  <?php


$req = function ( $sql, $pdo = null ) {
//  aff( $pdo );
  affLign( $sql );
  if ( null === $pdo ) {
    echo 'Instanciation PDO';
    $pdo = new \PDO( 'mysql:host=localhost;dbname=ocr;charset=utf8', 'root', '' );
  }
//  $cnx->query( 'SET lc_time_names = "fr_FR"' ); // jours en français depuis MySQL
  $cnx = $pdo->query( $sql );
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
    echo '=> ' . $nbra . ' rang' . $plur . ' affecté' . $plur;
  }
  return $pdo;
};

$nbr = function ( $table ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

  return $cnx->query( 'select count(*) from ' . $table )->fetch()[ 0 ];
};

?>

  <h2>Autocommit</h2>
  <p>Par defaut, AUTOCOMMIT activé (Chaque requête est exécutée immédiatement)</p>
  <code>SET AUTOCOMMIT=0;</code> pour le désactiver
  Permet de faire ensuite <code>ROLLBACK</code> si nécessaire.
  <code>START TRANSACTION</code> pour transaction jusqu'au prochain <code>ROLLBACK</code> ou <code>COMMIT</code>

  <?php

$sql = 'SELECT id, nom_courant, prix from espece where id=5 or id=1';
$pdo = $req( $sql );

$sql = 'SET AUTOCOMMIT=0'; // Sera pour toute la cession
//$sql = 'START TRANSACTION'; // Ne sera que jusqu'au COMMIT ou ROLLBACK qui mettent fin à la transaction
$pdo = $req( $sql, $pdo );

$sql = 'UPDATE espece SET prix=50 where id=5 or id =1';
$req( $sql, $pdo );

$sql = 'SELECT id, nom_courant, prix from espece where id=5 or id=1';
$req( $sql, $pdo );

//$sql = 'COMMIT'; // Change lignes 74 & 75 simultanément
$sql = 'ROLLBACK';
$req( $sql, $pdo );

echo 'Valeurs réelles 1';
$sql = 'SELECT id, nom_courant, prix from espece where id=5 or id=1';
$req( $sql );


$sql = 'UPDATE espece SET prix=50 where id=5 or id =1';
$req( $sql, $pdo );


//$sql = 'COMMIT'; // Change lignes 74 & 75 simultanément
$sql = 'ROLLBACK';
$req( $sql, $pdo );


echo '<hr>Valeurs réelles 2';
$sql = 'SELECT id, nom_courant, prix from espece where id=5 or id=1';
$req( $sql, $pdo );


$sql = 'UPDATE espece SET prix=200 where id=1';
$req( $sql );
$sql = 'UPDATE espece SET prix=20 where id=5';
$req( $sql );

?>

  <h2 class="mt10">Jalons</h2><h4>
  <CODE>START TRANSACTION</CODE>...<CODE>SAVEPOINT Jalon1;</CODE>... <CODE>COMMIT</CODE> ou <CODE>ROLLBACK</code>
</h4>
  <p>NB: Toutes opérations de modification de la structure de la Base de données, et/ou des table,
    des utilisateurs, etc..., y compris la création d'objets tels les vues et les procédures,
    entraînent une validation ( = COMMIT) implicite.</p>

  <h2>ACID</h2>
  <p>Critères pour avoir un système qui utilise les transactions, fiable:</p>
  <ul>
    <li>
      <g>A</g>
      tomicité
    </li>
    (Atôme: Qui ne peut être divisé) De même, une transaction doit former un tout. Toutes les
    transactions doivent être validées ou aucune ne doit l'être.
    <li>
      <g>C</g>
      ohérence
    </li>
    Les données doivent rester cohérentes, que la transaction se termine sans encombre (Toutes les
    requêtes sont exécutées), qi'il y ait une erreur ou une interruption (Toutes les requêtes sont
    annulées).<br>Les différentes étapes ne sont pas visibles de l'extérieur de la transaction.
    <li>
      <g>I</g>
      solation
    </li>
    Chaque transaction ne doit pas interagir avec une autre. (Les transactions ne peuvent pas s'imbriquer entre elles)
    <li>
      <g>D</g>
      urabilité
    </li>
  </ul>
  Ok
  <?php

$sql = 'SELECT nom, pere_id from animal where id=71';
$req( $sql );


echo str_repeat( '<br>&nbsp;', 50 );
/*
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
</div >
*/

function affLign( $sql )
{
  $lign = debug_backtrace()[ 1 ][ 'line' ];
//  aff( debug_backtrace() );
  ?>
  <div class="clearfix sameLine" style="margin: 5px; width: 100%; margin-left: 0;">
    <p class="float-left"><?= $sql ?></p>

    <p class="float-right">Ligne <?= $lign ?></p>
  </div>
  <?php
}

