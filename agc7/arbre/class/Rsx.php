<?php  namespace Agc7\Arbre;

/**
 * Created by C7.
 * User: Li
 * Date: 15/01/2018
 * Time: 11:49
 */
class Rsx
{
  public $membres;
  public $bds = [ ]; // Tableau des bornes droites des noeuds pour fermer les 3 div créées pour parents

  public function __construct( $famille )
  {
    foreach ( $famille as $membre ) {
      $this->membres [] = new Xu( $membre );
    }
  }

  public function nbr()
  {
    return count( $this->membres );
  }

  public function affNomXu( $id )
  {
    if ( $id + 1 > self::nbr() ) {
      return 'Pas de membre avec cet ID';
    } else
      return 'Le membre dont l\'index est <strong>' . $id . '</strong> se nomme <strong>
' . $this->membres[ $id ]->nom . '</strong>.<br>
(BG: ' . $this->membres[ $id ]->bg . ' - BD: ' . $this->membres[ $id ]->bd . ' | Prof: ' .
      $this->membres[ $id ]->pf . ')';
  }

  public function affVueHV()
  {
    $v = '<section class="basic-style">

  <div class="hv-container">
    <div class="hv-wrapper">

      ';

    foreach ( $this->membres as $i => $xu )
      $v .= $this->affCardXu( $i );

    $v .= '  </div>
      </div>
      </div>

    </div>
  </div>
</section>
';

    return $v;
  }

  public function affCardXu( $id )
  {
    $xu = $this->membres[ $id ];

    $type = ( $xu->t == 'c' ) ? 'child' : 'parent';
    $node = $finnode = $finnodeprec = '';
    if ( $xu->t == 'p' ) {
      $node = '<div class="hv-item">
        <div class="hv-item-' . $type . '">';
      $finnode = '  <div class="hv-item-children">

    ';

      array_unshift( $this->bds, $xu->bd );
      //sort($this->bds);

    }
    $ssnode = ( $id > 0 ) ? '<div class="hv-item-child">' : '';

//    $vt = serialize( $this->bds ); // valeur test
    $vt = $this->bds[ 0 ];

    if ( $xu->bd + 1 == $this->bds[ 0 ] ) {
      $vt = '*';
      array_shift( $this->bds );
      $finnodeprec = '</div></div></div>';
    }


    $coulItem = ( $xu->t == 'p' ) ? 'redLi' : 'blueLi';
    $aff = $id . ' : ' . $this->membres[ $id ]->nom . ' (' . $vt . ')<br>(' . $xu->bg .
      ',' .
      $xu->bd .
      ' -
    Prof: ' . $xu->pf
      . ')';
//    $aff = $xu->nom;
    $aff = '<span class="' . $coulItem . '">' . $aff . '</span>';
    return $ssnode . $node . '
    <p class="cardXu">' . $aff . '
    </p>' .
    "\n" . '</div>' . $finnode . $finnodeprec;
  }

}
