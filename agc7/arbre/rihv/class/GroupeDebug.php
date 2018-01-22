<?php namespace Agc7\Arbre\Rihv;

/**
 * Fichier pour Mise au Point
 *
 * À noter qu'on a mis des class dans le /div...
 * Bien-sûr, à ne pas faire dans un fichier final qui plus est en production ! ;-)
 *
 * Created by C7.
 * User: Li
 * Date: 15/01/2018
 * Time: 11:49
 */

class GroupeDebug
{
  public $membres;
  // Tableau des bornes droites des noeuds pour fermer les 3 div créées pour les parents
  public $bds = [ ];
  // L'attribut qui stockera l'instance unique de cette classe singleton
  private static $_instance;

  /**
   * Méthode statique qui permet d'instancier ou de récupérer l'instance unique
   *
   * @param $fondateur
   *
   * @return Membre
   */
  protected static function getInstance( $fondateur )
  {
    if ( null === self::$_instance ) {
//      echo '<p class="lead">Je créé un groupe initial avec ' . $fondateur . ' comme fondateur.</p>';
      self::$_instance = new Membre( $fondateur );
    } else {
      //echo '<p class="lead">NB: La création du fondateur ' . $fondateur . ' n\'est pas considérée car un précédent fondateur a déjà été nommé (' . self::$_instance->nom . ')...</p>';
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
    if ( array_key_exists( $parrId, $this->membres ) ) {

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
    } else {
      echo 'Attention: Impossible d\'ajouter ' . $nom . ': Pas de parrain avec l\'id ' . $parrId . ' !<hr>';
    }

  }

  /**
   * @return int Nombre de membres
   *
   */
  public function nbr()
  {
    return count( $this->membres );
  }


  public function getMembre( $id )
  {
//    echo '<h1>'.$id.'</h1>';

    if ( $id + 1 > self::nbr() ) {
      return 'Pas de membre avec cet ID';
    } else {
      $m = $this->membres[ $id ];

//      vd($this->membres);

//      echo $m->nom.' : '.$m->getParrRi($this->membres);

      return
        $id . ': ' . $m->nom . ' (' . $m->bg . ', ' . $m->bd . ' | Parr: ' . $m->parr . '-' . $m->getParrRi( $this->membres ) . ' | Prof: ' . $m->pf . ' | Type: ' . $m->t .
        ')';

    }
  }

  public function affListeMembres()
  {
    echo '
    <p class=" lead">Liste des membres (Nom(BG, BD | Nom | Profondeur | Type)) :</p>

<article class="listeMembres">
';
    $gr = $this;
    foreach ( $gr->membres as $k => $m ) {
      echo '
    <p>' . $this->getMembre( $k ) . '</p>';
    }
    echo '

</article>
';
  }


  public function affVueHierarchique()
  {
    if ( $this->nbr() - 1 ) {

      $v = '
<section class="basic-style">
  <div class="hv-container">
    <div class="hv-wrapper">
      ';

      foreach ( $this->membres as $i => $m ) {
        $m->ido = $i; // Id d'origine
        usort( $this->membres, __NAMESPACE__ . '\GroupeDebug::compare_bg_membres' );
        // echo $m->nom . '<br>';
      }

      foreach ( $this->membres as $i => $m ) {
        $m->id = $i;
        // echo $m->nom . ' id =  ' . $m->id . '<br>';

        // Affichage de la carte positionnée de l'élément
        $v .= $this->affBloc( $m );
      }


      $v .= '

    </div class="finWrapper">
  </div class="finContainer">
</section>

';
    } else {
      $v = '<section
class="basic-style tac"><h2>Est-ce bien nécessaire<br>de schématiser une structure hiérarchique<br>avec
 un seul membre...?</h2>
<p class="lead">Lol...</p></section>
';
    }

    echo $v; // Code HTML de la vue

  }

  /**
   * Fonction pour trier les membres de la classe Groupe
   * en fonction de leur borne gauche
   *
   * @param $a Membre A
   * @param $b Membre B
   *
   * @return int
   */
  static public function compare_bg_membres( $a, $b )
  {
    if ( $a->bg === $b->bg ) {
      return 0;
    }
    return ( $a->bg > $b->bg ) ? +1 : -1;
  }


  public function affBloc( $m )
  {
    $node = $finNode = $finNodePrec = '';

    $html = $htmlNode = $htmlChild = "";

//    $m = $this->membres[ $id ];

//    vd( $m );

    if ( $m->t === 'p' ) {
      $type = 'parent';
      $coulItem = 'redLi';
      $node = '
        <div class="hv-item">
         <div class="hv-item-' . $type . ' mbr' . $m->bd . '">          ';
      $finNode = '<div class="hv-item-children mbr' . $m->bd . '">

    ';
      array_unshift( $this->bds, $m->bd );
      //sort($this->bds);
    } else {
      $type = 'child';
      $coulItem = 'blueLi';
      $htmlNode = '';
      $htmlChild = '
      ';
    }
    //$html = ( $type === 'child' ) ? '
    //' : '
    //';

    $ssNode = ( $m->id > 0 ) ? ( '    <div class="hv-item-child">
    ' . $htmlNode ) : '';

    //$vt = ' ('.serialize( $this->bds ).') '; // valeur test
//    $vt =( isset($this->bds[ 0 ])) ?($this->bds)) :'non';

    if ( array_key_exists( 0, $this->bds ) && $m->bd > $this->bds[ 0 ] && array_key_exists( $m->id + 1, $this->membres ) && $this->membres[ $m->id + 1 ]->bg > $this->bds[ 0 ] ) {

      array_shift( $this->bds );
      $finNodePrec = '
        </div class="finItem">
      </div class="finParent' . $this->bds[ 0 ] . '">
    ';
      $finNodePrec .= '
    </div class="finPrec">

    ';
    }
    $vt = '';
    foreach ( $this->bds as $k => $v ) {
      $vt .= $k . ': ' . $v . '<br>';
    }


//    $aff = $m->ido . ' (' . $m->id . '): ' . $this->membres[ $m->id ]->nom . $vt . '<br>' . (
//      $m->parr ? ' &lt; ' . $m->parr : '' ) . '|' . $m->getParrRi( $this->membres ) . '<br>(' . $m->bg . ',' . $m->bd . ' - Pf: ' . $m->pf . ')';


    $aff = $m->ido . ' ' . $m->nom . ' ' . $m->bg . ',' . $m->bd . '-' . $m->pf . '<br>' . $vt;


//    $aff = $m->nom;
//    $aff = '<span class="' . $coulItem . '">' . $aff . '</span>';
    return $finNodePrec . $ssNode . $node . '
          <p class="cardM ' . $coulItem . '">' . $aff . '
          </p>' . $html . '
      ' . $htmlChild .
    '  </div class="fin' . ucfirst( $type ) . '">
      '
    . $finNode;
  }

}
