<?php
/**
 * Created by C7.
 * User: Li
 * Date: 23/10/2017
 * Time: 18:33
 */

$req = function ( $sql, $pdo = null ) {
//  aff( $pdo );
  affLign( $sql );
  if ( null === $pdo ) {
//    echo 'Instanciation PDO';
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
  $cnx = new \PDO( 'mysql:host=localhost;dbname=ocr;charset=utf8', 'root', '' );

  return $cnx->query( 'select count(*) from ' . $table )->fetch()[ 0 ];
};

function aff( $v )
{
  echo '<pre class="mt10">';
  print_r( $v );
  // var_dump($v);
  echo '</pre>';
}

/**
 * Affichage réel
 *
 * @param $r array indexé ou object
 */
function affR( $r )
{ //aff( $r );
  // $args = func_get_args(); // Réc arguments

  //if (!isset($r[0])) $r = [$r];

  if ( ! array_key_exists( 0, $r ) ) $r = [ $r ];
  $ps = array_keys( (array) $r[ 0 ] ); // Get les clefs, nom des propriétés
  //aff( $ps );

  echo '<table class="table table-bordered table-striped table-sm">
	<thead class="grey lighten-1">
	<tr>';
  foreach ( $ps as $p ) {
    echo '<th>' . ucfirst( $p ) . '</th>';
  }
  echo '</tr></thead>';
  echo '<tr>';
  foreach ( $r as $row ) {
    foreach ( $row as $p ) { // p comme propriété
      echo '<td style="background-color: white">' . $p . '</td>';
    }
    echo '</tr>';
  }
  echo '</table>';
}

function affLign( $sql )
{
  $lign = debug_backtrace()[ 1 ][ 'line' ];
  $file = debug_backtrace()[ 1 ][ 'file' ];
//  aff( debug_backtrace() );
  ?>
  <div class="clearfix sameLine" style="margin: 5px; width: 100%; margin-left: 0;">
    <pre class="float-left"><?= $sql ?></pre>

<!--    <p class="float-right">Ligne --><?//= $lign ?><!--</p>-->
    <button class="btn float-right numLign" type ="button" data-toggle="tooltip" data-placement="left" title="<?= $file ?>" id="lineFile"><?= $lign ?></button>


  </div>
<?php
/*
?>
  <button type="button" class="btn btn-primary" data-toggle="tooltip" data-placement="left" title="Tooltip on left">
  Tooltip on left
</button>
  */
}
