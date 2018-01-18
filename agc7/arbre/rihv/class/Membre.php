<?php namespace Agc7\Arbre\rihv;

class Membre
{
  public $nom, $bg, $bd, $parr, $pf, $t;

//todoli sérialsier les paramètres ou objets ou array pourles params (Autre que le nom)

  public function __construct( $m )
  {
//    vd( count($membre ));
    if ( isset( $m->pf ) ) {
//      vd( $m );
//      echo count( $args );

//      echo '<p class = "lead">Création du membre ' . $nom . '.</p>';
      $this->nom = $m->nom;
      $this->bg = $m->bg;
      $this->bd = $m->bd;
      $this->parr = $m->parr;
      $this->pf = $m->pf;
      /* t (type) : c pour child // p pour parent */
      $this->t = ( $this->bd - $this->bg === 1 ) ? 'c' : 'p';
    } else {
//      echo '<p class="lead">Création du membre fondateur ' . $nom . '.</p>';
      $this->nom = $m;
      $this->bg = 1;
      $this->bd = 2;
      $this->parr = null;
      $this->pf = 0;
      //SELF::__construct( $membre );

    }
  }

  public function setArgs( $nom, $bg, $bd, $parr, $pf )
  {
    $this->nom = $nom;
    $this->bg = $bg;
    $this->bd = $bd;
    $this->parr = $parr;
    $this->pf = $pf;
  }
}
