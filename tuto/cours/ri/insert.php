<?php

/*
UPDATE NEW_FAMILLE
SET NFM_BD = NFM_BD + 2
WHERE NFM_BD >= 35;

UPDATE NEW_FAMILLE
SET NFM_BG = NFM_BG + 2
WHERE NFM_BG >= 35;

INSERT INTO NEW_FAMILLE (NFM_BG, NFM_BD, NFM_LIB)
VALUES (35, 36, 'Roller');
*/


/**
 * Opérationnelle
 */
function insert( $nom, $bgParrain, $f )
{

  foreach ( $f as $m ) {
    if ( $m[ 'bg' ] == $bgParrain ) {
      $ref = $m[ 'bd' ]; // Référence
      $profp = $m[ 'prof' ]; // Prof du parrain
    }
  }

  // if ($nom=='Jeny') echo $ref;


  // 1) Ajouter 2 aux BD qui sont à droite ( = >= à celle de bd qui reçoit)

  $i = 0;
  foreach ( $f as $membre ) {
    //echo $membre['nom'].'<br>';

    if ( $membre[ 'bd' ] >= $ref ) {
      $f[ $i ][ 'bd' ] += 2;
    }
    $i++;
  }


// 2) Ajouter 2 aux BG qui sont à droite ( = > à celle de bd qui reçoit)

  $i = 0;
  foreach ( $f as $membre ) {
    if ( $nom == 'Jeny' ) {
//      echo '<h3>'.$i.' bg: '.$membre['bg'].' - bd: '. $membre['bd'].' - Nom:    '.$membre['nom'].'</h3>';
    };
    //  echo '+2 / bg - $i='.$i;
    if ( $membre[ 'bg' ] >= $ref ) {
      $f[ $i ][ 'bg' ] += 2;
    }
    $i++;
  }

// 3)Insertion du membre avec bg =bd er (élément de référence, là, qui reçoit),
// bd=bg +1
  array_push( $f, [
    'bg' => $ref,
    'bd' => $ref + 1,
    'prof' => $profp + 1,
    'nom' => $nom
  ] );

  //$f[2]['ok'];

  return $f;
}

function affMembre( $m )
{
  echo '&nbsp;' . str_repeat( '&nbsp;', $m[ 'prof' ] * 5 ) . $m[ 'nom' ] . ' ( ' . $m[ 'bg' ] . ' - ' . $m[ 'bd' ] . ' )&nbsp;<br>';
}


function affGroupe( Array $f )
{
  sort( $f );
  echo '  <table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">';
  foreach ( $f as $m ) {
    affMembre( $m );
  }
  echo '</td></tr></table>';
}

function affVd( $var )
{
  echo '<table style="padding:10px;">
  <tr>
    <td><pre>';
  print_r( $var );
  echo '</pre></td>
  </tr>
</table>';
}

function getGroupe( $bgRef, $f )
{

  // affMembre($f[2]);

  $ref = unserialize( getRensM( $bgRef, $f ) );
  $bdRef = $ref[ 'bdRef' ];

  $gr = [ ];
  foreach ( $f as $m ) { // BG > BgRef && BD < BdRef
    if ( $m[ 'bg' ] >= $bgRef && $m[ 'bd' ] <= $bdRef )
      array_push( $gr, $m );
  }
  return $gr;
}

function getRensM( $bg, $f )
{
  foreach ( $f as $m ) {
    if ( $m[ 'bg' ] == $bg ) {
      return serialize( [
        'bdRef' => $m[ 'bd' ],     // Référence
        'profRef' => $m[ 'prof' ], // Prof du parrain
        'nom' => $m[ 'nom' ]
      ] );
    }
  }
}
