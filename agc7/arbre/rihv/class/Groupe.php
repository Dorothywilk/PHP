<?php namespace Agc7\Arbre;

/**
 * Created by C7.
 * User: Li
 * Date: 15/01/2018
 * Time: 11:49
 */

class Groupe
{
  public $membres;
  // Tableau des bornes droites des noeuds pour fermer les 3 div créées pour les parents
  public $bds = array ();
  // L'attribut qui stockera l'instance unique de cette classe singleton
  private static $_instance;

  /**
   * La méthode statique qui permet d'instancier ou de récupérer l'instance unique
   **/
  public static function getInstance( $fondateur )
  {
    if ( is_null( self::$_instance ) ) {
      echo '<p class="lead">Je créé un groupe initial avec ' . $fondateur . ' comme fondateur.</p>';
      self::$_instance = new Membre( $fondateur );
    } else {
      echo '<p class="lead">NB: La création du fondateur ' . $fondateur . ' n\'est pas considérée car un précédent fondateur a déjà été nommé (' . self::$_instance->nom . ')...</p>';
    }
    return self::$_instance;
  }

  public function __construct( $fondateur )
  {
//    vd(self::$_instance);
    $this->membres[] = $this->getInstance( $fondateur );
  }

  public function add( $nom, $parrId )
  {
    echo '<span class="lead">Ajout de ' . $nom . ' sous le parrain  ' . $this->membres{$parrId}->nom . '</span>';

    $parr = $this->membres[ $parrId ];


    echo 'Parrain: ' . $parr->nom . ' (' . $parr->bg . ', ' . $parr->bd . ')<br>';
    $ref = $parr->bd;
    foreach ( $this->membres as $m ) {

//      echo 'Étude de ' . $m->nom . ' (' . $m->bg . ', ' . $m->bd . ')<br>';

      /* 1) Ajouter 2 aux BD qui sont à droite ( = >= à celle de bd qui reçoit) */
      if ( $m->bd >= $ref ) {
        $m->bd += 2;
      }

      /* 2) Ajouter 2 aux BG qui sont à droite ( = > à celle de bd qui reçoit) */
      if ( $m->bg >= $ref ) {
        echo $m->nom;
        $m->bg += 2;
      }
    }

    /* 3)Insertion du membre avec bg =bd de ref (élément de référence, là, qui reçoit) */
    $this->membres[] = new Membre( $nom, $ref, $ref + 1, $parr->nom, $parr->pf + 1, 'c' );


//    echo $this->membres{$parr}->nom;


  }

  public function nbr()
  {
    return count( $this->membres );
  }

  public function affListeMembres()
  {
    echo '<div class="lead">Liste des membres:</div>
<ul>';
    foreach ( $this->membres as $k => $m )
//      echo '<li>' . $k . ' :  ' . $m->nom . '</li>';
      echo "<li>$k :  $m->nom ($m->bg, $m->bd | Parr: $m->parr |Prof:
$m->pf | Type: $m->t)  </li>";
    echo '</ul><hr>';
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
