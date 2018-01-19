<?php namespace Agc7\Arbre\Rihv;

class Membre
{
  public $nom, $bg, $bd, $parr, $pf, $t;

//  public function __construct( $nom, $params )
  public function __construct( $nom, $bg = null, $bd = null, $parr = null, $pf = null )
  {
    if ( null !== $pf ) {

//      echo '<p class = "lead">Création du membre ' . $nom . '.</p>';
      $this->nom = $nom;
      $this->bg = $bg;
      $this->bd = $bd;
      $this->parr = $parr;
      $this->pf = $pf;
      /* t (type) : c pour child // p pour parent */
      $this->t = ( $this->bd - $this->bg === 1 ) ? 'c' : 'p';
    } else {
//      echo '<p class="lead">Création du membre fondateur ' . $nom . '.</p>';
      self::__construct( $nom, 1, 2, null, 0 );
    }
  }
}
