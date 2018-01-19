<?php namespace Agc7\Arbre\Rihv;

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
   * Méthode statique qui permet d'instancier ou de récupérer l'instance unique
   *
   * @param $fondateur
   * @return Membre
   */
  protected static function getInstance( $fondateur )
  {
    if ( null === self::$_instance ) {
//      echo '<p class="lead">Je créé un groupe initial avec ' . $fondateur . ' comme fondateur.</p>';
      self::$_instance = new Membre( $fondateur );
    } else {
      echo '<p class="lead">NB: La création du fondateur ' . $fondateur . ' n\'est pas considérée car un précédent fondateur a déjà été nommé (' . self::$_instance->nom . ')...</p>';
    }
    return self::$_instance;
  }

  public function __construct( $fondateur )
  {
//    vd(self::$_instance);
    $this->membres[] = static::getInstance( $fondateur );
  }

  public function add( $nom, $parrId )
  {
//    echo '<div class="lead">Ajout de ' . $nom . ' sous le parrain  ' . $this->membres{$parrId}->nom . '</div>';
    $parr = $this->membres[ $parrId ];
    $parr->t = 'p';
//    echo 'Parrain: ' . $parr->nom . ' (' . $parr->bg . ', ' . $parr->bd . ')<br>';
    $ref = $parr->bd;

    foreach ( $this->membres as $m ) {

//      echo 'Étude de ' . $m->nom . ' (' . $m->bg . ', ' . $m->bd . ')<br>';

      /* 1) Ajouter 2 aux BD qui sont à droite ( = >= à celle de bd qui reçoit) */
      if ( $m->bd >= $ref ) {
        $m->bd += 2;
      }

      /* 2) Ajouter 2 aux BG qui sont à droite ( = > à celle de bd qui reçoit) */
      if ( $m->bg >= $ref ) {
        $m->bg += 2;
      }
    }

    /* 3)Insertion du membre avec bg =bd de ref (Élément de référence, là, qui reçoit) */
    $this->membres[] = new Membre( $nom, $ref, $ref + 1, $parr->nom, $parr->pf + 1, 'c' );


  }

  /**
   * @return int Nombre de membres
   *
   */
  public function nbr()
  {
    return count( $this->membres );
  }

  public function affListeMembres()
  {
    echo '<div class="lead">Liste des membres (Nom(BG, BD | Nom | Profondeur | Type)) :</div>
<ul>';
    foreach ( $this->membres as $k => $m )
//      echo '<li>' . $k . ' :  ' . $m->nom . '</li>';

      echo "<li>$k :  $m->nom ($m->bg, $m->bd | Parr: $m->parr | Prof: $m->pf | Type: $m->t)</li>";
    echo '</ul>';
  }


  public function affVueHierarchique()
  {
    $v = '<section class="basic-style">

  <div class="hv-container">
    <div class="hv-wrapper">

      ';

    foreach ( $this->membres as $i => $xu ) {
      // $v = ''; // Affichage rien pdt tri

      $xu->ido = $i; // Id d'origine

      usort( $this->membres, __NAMESPACE__ . '\Groupe::compare_bg_membres' );
//      echo $xu->nom . '<br>';
    }
//    echo '<hr>';


    foreach ( $this->membres as $i => $xu ) {
      $xu->id = $i;
//      echo $xu->nom . ' id =  ' . $xu->id . '<br>';
// Affichage de la carte positionnée de l'élément
      $v .= $this->affCardXu( $xu );
    }


    $v .= '  </div>
        </div>
      </div>

  </div>
</section>
';

    echo $v; // Code HTML de la vue

  }

  /**
   * Fonction pour trier les membres de la classe Groupe
   * en fonction de leur borne gauche
   *
   * @param $a Membre A
   * @param $b Membre B
   * @return int
   */
  static public function compare_bg_membres( $a, $b )
  {
    if ( $a->bg === $b->bg ) {
      return 0;
    }
    return ( $a->bg > $b->bg ) ? +1 : -1;
  }


  public function affMembre( $id )
  {
    if ( $id + 1 > self::nbr() ) {
      return 'Pas de membre avec cet ID';
    } else {
      return '<p class="lead">Le membre dont l\'index est <strong>' . $id . '</strong> se nomme <strong>
' . $this->membres[ $id ]->nom . '</strong>.<br>
(BG: ' . $this->membres[ $id ]->bg . ' - BD: ' . $this->membres[ $id ]->bd . ' | Prof: ' .
      $this->membres[ $id ]->pf . ')</p>';
    }
  }

  public function affVueHV()
  {
    $v = '<section class="basic-style">

  <div class="hv-container">
    <div class="hv-wrapper">

      ';

    foreach ( $this->membres as $i => $xu )
      $v .= $this->affCardXu( $xu );

    $v .= '  </div>
        </div>
      </div>

  </div>
</section>
';

    return $v;
  }

  public function affCardXu( $xu )
  {
//    $xu = $this->membres[ $id ];

//    vd( $xu );

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
    $ssnode = ( $xu->id > 0 ) ? '<div class="hv-item-child">' : '';
    $vt = '';
//    $vt = ' ('.serialize( $this->bds ).') '; // valeur test
//    $vt =( isset($this->bds[ 0 ])) ?($this->bds)) :'non';

    if ( array_key_exists( 0, $this->bds ) && $xu->bd + 1 === $this->bds[ 0 ] ) {
//      $vt = '*';
      array_shift( $this->bds );
      $finnodeprec = '<!-- ID = ' . $xu->id . ' -->' . '
            </div>
        </div>
    </div>
    ';
      if ( array_key_exists( $xu->id + 1, $this->membres ) &&
        $this->membres[ $xu->id + 1 ]->bg > $this->bds[ 0 ]
      ) {
        $finnodeprec .= '</div>
        </div>
    </div>';
      }
    }

    $aff = $xu->ido . ': ' . $this->membres[ $xu->id ]->nom . $vt . '<br>' . ( $xu->parr ? ' < '
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
