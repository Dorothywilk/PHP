<?php
/**
 * Created by C7.
 * User: Li
 * Date: 23/10/2017
 * Time: 18:33
 */
/**
 * Effectue recherche MySQL + [aff]
 *
 * @param      $sql                 Requête MySQL : Seul param indispensable
 * @param null $pdo                 PDO           : Nécessaire de reporter pour garder même cession
 *                                  Notamment pour transactions
 * @param null $inv                 Si défini, aucun affichage (Mettre 2ème param ($pdo ou null))
 *                                  NB: Pour aff des rands affectés, car replace() dans select => Minuscule,
 *                                  Fonctions agissant sur Tables en MAJ
 *
 * @return null|PDO
 */

function pdo( $bdd = 'ocr' )
{
  return new \PDO( 'mysql:host=localhost;dbname=' . $bdd . ';charset=utf8', 'root', '', [ PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION ] );
}

$req = function ( $sql, $pdo = null, $inv = null ) { // invisible
//  aff( $pdo );
  if ( ! isset( $inv ) )
    affLign( $sql, 1 );
  if ( null === $pdo ) {
//    echo '<h1>Instanciation PDO</h1>';
    $pdo = pdo();
  }
//  $cnx->query( 'SET lc_time_names = "fr_FR"' ); // jours en français depuis MySQL
  $cnx = $pdo->query( $sql );
  try {
    $rep = $cnx->fetchAll( \PDO::FETCH_OBJ );
  } catch ( Exception $e ) {
    echo( '<h3 class="red-text"><br>&nbsp;' . $e->getMessage() . '<br>' . $e->getFile() . ': <strong>
' . $e->getLine() . '</strong></h3>' );
  }

//  aff($rep);
  if ( $rep ) {
    affR( $rep );
  }
  if ( ! isset( $inv ) && preg_match( '/INSERT|UPDATE|REPLACE|DELETE/', $sql ) ) {
    $nbra = $cnx->rowCount(); // Nombre de rangs affectés
    $plur = ( $nbra > 1 ) ? 's' : ''; // Pluriel
    echo '=> ' . $nbra . ' rang' . $plur . ' affecté' . $plur;
  }

  return $pdo;
};

$nbr = function ( $table ) {
  $cnx = pdo();

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
 * @param $r array indexé ou object ou résultat de req MySQL
 */
function affR( $r )
{ //aff( $r );
  // $args = func_get_args(); // Réc arguments

  //if (!isset($r[0])) $r = [$r];

  if ( ! array_key_exists( 0, $r ) )
    $r = [ $r ];
  $ps = array_keys( (array) $r[ 0 ] ); // Get les clefs, nom des propriétés
  //aff( $ps );

  echo '<table class="table table-bordered table-striped table-sm">
	<thead class="grey lighten-1">
	<tr>';
  $i = 0;
//  $caseTotal='';
  foreach ( $ps as $p ) {
    $i ++;
    $caseTotal[ $i ] = null;
    echo '<th>' . ucfirst( $p ) . '</th>';
    if ( $p == 'total:' )
      $caseTotal[ $i ] = 1;
  }
  echo '</tr></thead>';
  echo '<tr>';
  foreach ( $r as $row ) {
    $i = 0;
    foreach ( $row as $p ) { // p comme propriété
      $MEAvt1 = $MEAvt2 = null;
      $i ++;
      if ( $caseTotal[ $i ] ) {
        $MEAvt1 = '<g style="font-size:1.2em; margin-left: 7%;">';
        $MEAvt2 = '</g>';
        $p      = number_format( $p, 2, ',', ' ' ) . '€.';
      }
      echo '<td style="background-color: white">' . $MEAvt1 . $p . $MEAvt2 . '</td>';
    }
    echo '</tr>';
  }
  echo '</table>';
}

/**
 * @param     $sql  Chaîne requête SQL
 * @param int $back 0 pour appel direct
 */
function affLign( $sql, $back = 0 )
{
  $lign = debug_backtrace()[ $back ][ 'line' ];
  $file = debug_backtrace()[ $back ][ 'file' ];
//  aff( debug_backtrace() );
  ?>
  <div class="clearfix sameLine" style="margin: 5px; width: 100%; margin-left: 0;">
    <pre class="float-left"><?= $sql ?></pre>
    <button class="btn float-right numLign" type="button" data-toggle="tooltipNum"
            data-placement="left" title="<?= $file ?>" id="lineFile"><?= $lign ?></button>
  </div>
  <?php
}
