<?php namespace Agc7\Arbre;

/**
 * Class Ri - Représentation Intervallaire
 * @package Agc7\Arbre
 *
 */
class RiArr
{
  public static function addChild( $nom, $bgParrain, $f )
  {

    foreach ( $f as $m ) {
      if ( $m[ 'bg' ] === $bgParrain ) {
        $ref = $m[ 'bd' ]; // Référence
        $profp = $m[ 'prof' ]; // Prof du parrain
        $parr = $m[ 'nom' ];
      }
    }

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
//    if ( $membre[ 'nom' ] === 'Jeny' ) {
//      echo '<h3>'.$i.' bg: '.$membre['bg'].' - bd: '. $membre['bd'].' - Nom:    '.$membre['nom'].'</h3>';
//    };
      //  echo '+2 / bg - $i='.$i;
      if ( $membre[ 'bg' ] >= $ref ) {
        $f[ $i ][ 'bg' ] += 2;
      }
      $i++;
    }

    // 3)Insertion du membre avec bg =bd de ref (élément de référence, là, qui reçoit),
    $f[] = [
      'bg' => $ref,
      'bd' => $ref + 1,
      'nom' => $nom,
      'parr' => $parr,
      'prof' => $profp + 1 ];

    return $f;
  }

  public function affMembre( $m )
  {
    echo '&nbsp;' . str_repeat( '&nbsp;', $m[ 'prof' ] * 5 ) . $m[ 'nom' ] . ' ( ' . $m[ 'bg' ] . ' - ' . $m[ 'bd' ] . ' )&nbsp;<br>';
  }


  public function affGroupe( Array $f )
  {
    sort( $f );
    echo '  <table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">';
    foreach ( $f as $m ) {
      affMembre( $m );
    }
    echo '</td></tr></table>';
  }

  public function affVd( $var )
  {
    echo '<table style="padding:10px;">
  <tr>
    <td><pre>';
    print_r( $var );
    echo '</pre></td>
  </tr>
</table>';
  }

  public function getGroupe( $bgRef, $f )
  {

    // affMembre($f[2]);

    $ref = unserialize( getRensM( $bgRef, $f ) );
    $bdRef = $ref[ 'bdRef' ];

    $gr = [ ];
    foreach ( $f as $m ) { // BG > BgRef && BD < BdRef
      if ( $m[ 'bg' ] >= $bgRef && $m[ 'bd' ] <= $bdRef ) {
        $gr[] = $m;
      }
    }
    return $gr;
  }

  public function getRensM( $bg, $f )
  {
    foreach ( $f as $m ) {
      if ( $m[ 'bg' ] === $bg ) {
        return serialize( [
          'bdRef' => $m[ 'bd' ],     // Référence
          'profRef' => $m[ 'prof' ], // Prof du parrain
          'nom' => $m[ 'nom' ]
        ] );
      }
    }

    return 1;
  }

  /**
   * Retourne la Upline d'un membre
   *
   * @param $nom
   * @param $f
   */
  public function getUpline( $nom, $f )
  {
    //  On récupère les bornes du sujet pour qui on veut la Upline //
    foreach ( $f as $m ) {
      if ( strtolower( $m[ 'nom' ] ) === strtolower( $nom ) ) {
        $bg = $m[ 'bg' ];
        $bd = $m[ 'bd' ];
      }
    }
    echo $bg . ' ' . $bd . '<hr>';

    // On va chercher les membres de la Upline
    /*
    foreach($f as $m){
        if ($m['bg']<=$bg and $m['bd']>$bd)
      echo $m['nom'].' ('.$m['prof'].')<br>';
    }-+
    */
  }

}
