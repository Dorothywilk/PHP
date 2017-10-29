<?php

namespace GC7;
/*
?>
    <div class="jumbotron">

        <h3 class="meaDo">Transactions</h3>

        <ul class="lead mt10">
            <li>Uniquement moteur MySQl InnoDB</li>
        </ul>

    </div>
  <?php
*/

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

  <!--    <h3>Autocommit</h3>-->
  <!--    <p>Par defaut, AUTOCOMMIT activé</p>-->
  <!--    <code>SET AUTOCOMMIT=0;</code> pour le désactiver-->
  <!--    Permet de faire ensuite <code>ROLLBACK</code> si nécessaire;-->

  <?php

$sql = 'SELECT prix from espece where id=5';
$pdo = $req( $sql );

$sql = 'SET AUTOCOMMIT=0';
$pdo = $req( $sql, $pdo );

$sql = 'UPDATE espece SET prix=20 where id=5';
$req( $sql, $pdo );

$sql = 'SELECT prix from espece where id=5';
$req( $sql, $pdo );

$sql = 'COMMIT'; // Change lignes 74 & 75 simultanément
//$sql = 'ROLLBACK';
$req( $sql, $pdo );

//echo '<hr>Après ROLLBACK';
$sql = 'SELECT prix from espece where id=5';
$pdo = $req( $sql );

//echo __LINE__;
$sql = 'UPDATE espece SET prix=10 where id=5';
$req( $sql, $pdo );


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

