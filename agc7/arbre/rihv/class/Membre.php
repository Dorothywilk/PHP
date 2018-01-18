<?php namespace Agc7\Arbre;

class Membre
{
  public $nom, $bg, $bd, $parr, $pf, $t;
//todoli sérialsier les paramètres ou objets ou array pourles params (Autre que le nom)

//  public function __construct( $nom, $params )
  public function __construct( $nom, $bg = null, $bd = null, $parr = null, $pf = null )
  {
    if ( isset( $pf ) ) {

      echo '<p class = "lead">Création du membre ' . $nom . '.</p>';
      $this->nom = $nom;
      $this->bg = $bg;
      $this->bd = $bd;
      $this->parr = $parr;
      $this->pf = $pf;
      /* t (type) : c pour child // p pour parent */
      $this->t = ( $this->bd - $this->bg === 1 ) ? 'c' : 'p';
    } else {
//      echo '<p class="lead">Création du membre fondateur ' . $nom . '.</p>';
      SELF::__construct( $nom, 1, 2, null, 0, 'c' );
    }
  }
}
