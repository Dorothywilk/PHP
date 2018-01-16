<?php namespace Agc7\Arbre;

/**
 * Created by C7.
 * User: Li
 * Date: 15/01/2018
 * Time: 11:49
 */

/**
 * Class Rsx - Réseau
 * @package Agc7\Arbre
 */
class RsxArr
{

  public $membres;
  public $bds = array (); // Tableau des bornes droites des noeuds pour fermer les 3 div créées pour

  // parents

  public function __construct( $famille )
  {
//    echo 'Je créé un groupe initial';
    foreach ( $famille as $membre ) {
      $this->membres [] = new XuArr( $membre );
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
    } else {
      return 'Le membre dont l\'index est <strong>' . $id . '</strong> se nomme <strong>
' . $this->membres[ $id ]->nom . '</strong>.<br>
(BG: ' . $this->membres[ $id ]->bg . ' - BD: ' . $this->membres[ $id ]->bd . ' | Prof: ' .
      $this->membres[ $id ]->pf . ')';
    }
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
</section>
';

    return $v;
  }

  public function affCardXu( $id )
  {
    $xu = $this->membres[ $id ];

    $node = $finnode = $finnodeprec = '';
    if ( $xu->t === 'p' ) {
      $type = 'parent';
      $coulItem = 'redLi';
      $node = '<div class="hv-item">
        <div class="hv-item-' . $type . '">';
      $finnode = '  <div class="hv-item-children">
    ';
      array_unshift( $this->bds, $xu->bd );
      //sort($this->bds);
    } else {
      $type = 'child';
      $coulItem = 'blueLi';
    }
    $ssnode = ( $id > 0 ) ? '<div class="hv-item-child">' : '';
    $vt = '';
//    $vt = ' ('.serialize( $this->bds ).') '; // valeur test
//    $vt =( isset($this->bds[ 0 ])) ?($this->bds)) :'non';

    if ( array_key_exists( 0, $this->bds ) && $xu->bd + 1 === $this->bds[ 0 ] ) {
//      $vt = '*';
      array_shift( $this->bds );
      $finnodeprec = '<!-- ID = ' . $id . ' -->' . '
            </div>
        </div>
    </div>
    ';
      if ( array_key_exists( 0, $this->bds ) && array_key_exists( $id + 1, $this->membres ) &&
        $this->membres[ $id + 1 ]->bg > $this->bds[ 0 ]
      ) {
        $finnodeprec .= '</div>
        </div>
    </div>';
      }
    }


    $aff = $id . ': ' . $this->membres[ $id ]->nom . $vt . '<br>' . ( $xu->parr ? ' < '
        . $xu->parr : '' ) . '<br>(' .
      $xu->bg .
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
    "\n" . '</div>
  ' . $finnode . $finnodeprec;
  }

}
