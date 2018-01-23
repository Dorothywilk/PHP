<?php namespace Agc7\Arbre\Rihv;

/**
 * Fichier pour Mise au Point
 *
 * À noter qu'on a mis des class dans le /div...
 * Bien-sûr, à ne pas faire dans un fichier final qui plus est en production ! ;-)
 *
 */

class GroupeDev
{
  //public $membres;

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


  public function affVueHierarchique1()
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
        $v .= $this->affBloc1( $m );
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

  public function affBloc1( $m )
  {
    $node = $finNode = $finNodePrec = '';

    $html = $htmlNode = $htmlChild = '';

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

    $aff = $m->p;


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

  public function affVueHierarchique2()
  {
    if ( $this->nbr() - 1 ) {

      $html = '
<section class="basic-style">
  <div class="hv-container">
    <div class="hv-wrapper">
      ';

      // Les membres avant tris
      //vdColl( $this->membres, '$m->membres dans l\'ordre d\'arrivée' );

      foreach ( $this->membres as $i => $m ) {
        $m->ido = $i; // Id d'origine
        usort( $this->membres, __NAMESPACE__ . '\GroupeDebug::compare_bg_membres' );
      }

      // Les membres sont dans l'ordre du ver dans $this->Smembres
      //vdColl( $this->membres, '$m->membres après tri selon leur borne gauche' );

      foreach ( $this->membres as $i => $m ) {
        $m->id = $i; // Id selon l'ordre du déplacement du ver

        $elt = new Element( $m );
        $html .= $elt->html( $m );
        echo '*******************';
      }


      /*
            foreach ( $this->membres as $i => $m ) {
              $m->id = $i;
              //echo $m->nom . ' id =  ' .$m->ido . ' =>  ' . $m->id . '<br>';


              if ( $m->t === 'p' ) {
                $type = 'parent'; // Sûrement à suppr
                $coulItem = 'redLi';
              } else {
                $type = 'child';
                $coulItem = 'blueLi';
                $htmlNode = '';
                $htmlChild = '
            ';
              }

              $nodeParent = '
              <div class="hv-item">
               <div class="hv-item-.' . $type . '  mbr' . $m->nom . $m->bd . '">          ';

              $nodeChild = '

               <div class="hv-item-.' . $type . '  mbr' . $m->bd . '">          ';

              $finNode = '<div class="hv-item-children mbr' . $m->bd . '">

          ';


              // Affichage de la carte positionnée de l'élément
              if ( $i ) { // Cas de tous sauf fondateur
                $v .= '<div class="hv-item-child">
          ' . $this->affBloc( $m ) . '
          </div class="finChild" >
      ';
              } else { // Cas 1er membre


                $v .= $this->affBloc( $m );
              }
            }


            $v .= '

          </div class="finWrapper" >
        </div class="finContainer" >
      </section >

                ';
          } else {
            $v = '<section
      class="basic-style tac" ><h2 > Est - ce bien nécessaire < br>de schématiser une structure hiérarchique < br>avec
       un seul membre...?</h2 >
      <p class="lead" > Lol...</p ></section >
                ';
          }

          echo $v; // Code HTML de la vue
      */
    }
  }

  public function affVueHierarchique3()
  {
    if ( $this->nbr() - 1 ) {

// todole mettre dans ces vars le vrai code html
      $elt[ 'p' ] = 'Node '; //++
      $elt[ 'fp' ] = 'Html Fin Node (Vide)';
      $elt[ 'fN' ] = 'Html Fin Node Nombre = nombre de vide fn vide';
      $elt[ 'c' ] = 'Child '; // a remplacer par e //+
      $elt[ 'fc' ] = 'Fin Child '; // a remplacer par e //-

      // Les membres avant tris
      //vdColl( $this->membres, '$m->membres dans l\'ordre d\'arrivée' );

      foreach ( $this->membres as $i => $m ) {
        $m->ido = $i; // Id d'origine
        usort( $this->membres, __NAMESPACE__ . '\GroupeDebug::compare_bg_membres' );
      }

      // Les membres sont dans l'ordre du ver dans $this->Smembres
      //vdColl( $this->membres, '$m->membres après tri selon leur borne gauche' );

      // Début de la vue
      $html = '
< section class="basic-style">
  < div class="hv-container">
    < div class="hv-wrapper">
      ';

      $html .= '<hr>' . $elt[ 'p' ] . ' Doro p<hr>'; // Pour le fondateur;
      //array_unshift( $this->bds, $this->membres[ 0 ]->bd );

      array_shift( $this->membres );
      foreach ( $this->membres as $i => $m ) {
        $m->id = $i; // Id selon l'ordre du déplacement du ver

        if ( $m->t === 'p' ) {
          $type = 'parent'; // Sûrement à suppr
          $coulItem = 'redLi';
          array_unshift( $this->bds, $m->bd );
          $elt[ 'childNode' ] = 'CHILD '; //+
          $elt[ 'fChild' ] = 'fin Child '; //-
        } else {
          $elt[ 'childNode' ] = $elt[ 'fChildNode' ] = '';
          $type = 'child';
          $coulItem = 'blueLi';
          $htmlNode = '';
          $htmlChild = '
            ';
        }

        $vt = ( isset( $this->bds[ 0 ] ) ) ? serialize( $this->bds ) : 'vide'; // bd de Noeuds à fermer


// html + carte
        $html .= $elt[ 'childNode' ] . $elt[ $m->t ] . $m->nom . ' ' . $m->t . ' ' . $elt[ 'f' . $m->t ] . ' ' . $vt . '<br>';


        // Si un Node reste à être fermé

        //if ( array_key_exists( 0, $this->bds ) && $m->bd > $this->bds[ 0 ] && array_key_exists( $m->id + 1, $this->membres ) && $this->membres[ $m->id + 1 ]->bg > $this->bds[ 0 ] ) {

        if ( array_key_exists( 0, $this->bds ) // Il existe des noeud à fermer
          && array_key_exists( $m->id + 1, $this->membres ) // Il y un membre suivant
        )
          while ( array_key_exists( 0, $this->bds ) && $this->membres[ $m->id + 1 ]->bg > $this->bds[ 0 ] ) {
            $html .= '
          < /div class="finChildren">
        < /div class="finItem">
      < /div class="finChild' . $this->bds[ 0 ] . '">
    <br>';
            array_shift( $this->bds );

          }

      }
      $html .= '<hr>';

      // Fin du Node Fodateur
      $html .= '                < /div class="finChildren16">
            < /div class="finItem"><br>
';
      // Fin de la vue
      $html .= '        < /div class="finWrapper" >
    < /div class="finContainer" >
< /section >';

      echo $html;

    } else {
      // Un seul elt
    }
  }

  public function affVueHierarchique()
  {
    if ( $this->nbr() - 1 ) {

// todole mettre dans ces vars le vrai code html
      $elt[ 'p' ] = '<div class="hv-item">
        <div class="hv-item-parent mbr">
            '; //++

      $elt[ 'fp' ] = '</div class="finParent">
            <div class="hv-item-children mbr">

                ';

      $elt[ 'fN' ] = '</div class="finParent">
            <div class="hv-item-children mbr">

            ';

      $elt[ 'c' ] = '<div class="hv-item-child">
                    '; // a remplacer par e //+

      $elt[ 'fc' ] = '</div class="finChild">
'; // a remplacer par e //-

      // Les membres avant tris
      //vdColl( $this->membres, '$m->membres dans l\'ordre d\'arrivée' );

      foreach ( $this->membres as $i => $m ) {
        $m->ido = $i; // Id d'origine
        usort( $this->membres, __NAMESPACE__ . '\GroupeDev::compare_bg_membres' );
      }

      // Les membres sont dans l'ordre du ver dans $this->Smembres
      //vdColl( $this->membres, '$m->membres après tri selon leur borne gauche' );

      // Début de la vue
      $html = '
<section class="basic-style">
  <div class="hv-container">
    <div class="hv-wrapper">

      ';


      $fondateur = $this->membres[ 0 ];
      $html .= $elt[ 'p' ] . '<p class="cardM redLi">' .
        $fondateur->ido . ' ' . $fondateur->nom . ' ' . $fondateur->bg . ',' . $fondateur->bd . '-' . $fondateur->pf . '
            </p>
        ' . $elt[ 'fp' ]; // Pour le fondateur;
      //array_unshift( $this->bds, $this->membres[ 0 ]->bd );

      array_shift( $this->membres );


      foreach ( $this->membres as $i => $m ) {
        $m->id = $i; // Id selon l'ordre du déplacement du ver

        if ( $m->t === 'p' ) {
          $type = 'parent'; // Sûrement à suppr
          $coulItem = 'redLi';
          array_unshift( $this->bds, $m->bd );
          $elt[ 'childNode' ] = '<div class="hv-item-child">
                    '; //+
          $elt[ 'fChild' ] = ''; //-
        } else {
          $elt[ 'childNode' ] = $elt[ 'fChildNode' ] = '';
          $type = 'child';
          $coulItem = 'blueLi';
          $htmlNode = '';
          $htmlChild = '
            ';
        }

        $vt = ( isset( $this->bds[ 0 ] ) ) ? serialize( $this->bds ) : 'vide'; // bd de Noeuds à fermer

        // Affichage complet pour dev
        $infos = $m->ido . ' ' . $m->nom . ' ' . $m->bg . ',' . $m->bd . '-' . $m->pf . '<br>' . $vt;



        // Affichage Varte du membre
        $carte = '<p class="cardM ' . $coulItem . '">' .
          $infos
          . '
            </p>
        ';

// html + carte
        $html .= $elt[ 'childNode' ] . $elt[ $m->t ] . $carte . $elt[ 'f' . $m->t ] . $elt[ 'fChild' ];


        // Si un Node reste à être fermé

        //if ( array_key_exists( 0, $this->bds ) && $m->bd > $this->bds[ 0 ] && array_key_exists( $m->id + 1, $this->membres ) && $this->membres[ $m->id + 1 ]->bg > $this->bds[ 0 ] ) {

        if ( array_key_exists( 0, $this->bds ) // Il existe des noeud à fermer
          && array_key_exists( $m->id + 1, $this->membres ) // Il y un membre suivant
        )
          while ( array_key_exists( 0, $this->bds ) && $this->membres[ $m->id + 1 ]->bg > $this->bds[ 0 ] ) {
            $html .= '
          </div class="finChildren">
        </div class="finItem">
      </div class="finChild' . $this->bds[ 0 ] . '">
';
            array_shift( $this->bds );

          }

      }

      // Fin du Node Fondateur
      $html .= '                </div class="finChildren16">
            </div class="finItem">>
';
      // Fin de la vue
      $html .= '        </div class="finWrapper" >
    </div class="finContainer" >
</section >';

      echo $html;

    } else {
      // Un seul elt
    }
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
    $html = $htmlNode = $htmlChild = '';

//    $m = $this->membres[ $id ];
//    vd( $m );


    array_unshift( $this->bds, $m->bd );
    //sort($this->bds);
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

    // Affichage complet pour dev
    //$aff = $m->ido . ' ' . $m->nom . ' ' . $m->bg . ',' . $m->bd . '-' . $m->pf . '<br>' . $vt;

    $aff = $m->pf;

//    $aff = $m->nom;
//    $aff = '<span class="' . $coulItem . '">' . $aff . '</span>';
//    return $finNodePrec . $ssNode . $node . '
//          <p class="cardM ' . $coulItem . '">' . $aff . '
//          </p>' . $html . '
//      ' . $htmlChild .
//    '  </div class="fin' . ucfirst( $type ) . '">
//      '
//    . $finNode;
  }

}
