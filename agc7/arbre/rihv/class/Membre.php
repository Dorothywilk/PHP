<?php namespace Agc7\Arbre\Rihv;

class Membre extends GroupeDebug
{
  public $nom, $bg, $bd, $parr, $pf, $t;
  public $membres;

  public function __construct( $nom, $bg = null, $bd = null, $parr = null, $pf = null )
  {
    if ( null !== $pf ) {
      //  echo '<p class = "lead">Création du membre ' . $nom . '.</p>';
      $this->nom = $nom;
      $this->bg = $bg;
      $this->bd = $bd;
      $this->parr = $parr;
      $this->pf = $pf;
      /* t (type) : c pour child // p pour parent */
      $this->t = ( $this->bd - $this->bg === 1 ) ? 'c' : 'p';
    } else {
      // echo '<p class="lead">Création du membre fondateur ' . $nom . '.</p>';
      self::__construct( $nom, 1, 2, null, 0 );
    }
  }

  /**
   * Donne le nom du parrain selon la Représentation Intervallaire
   *
   * @param Array $gr L'ensemble du groupe
   * @return bool Le nom s'il existe, false sinon
   */
  public function getParrRi( $gr )
  {
//    echo '<hr>' . $this->nom . ' < ' . $this->parr . '<hr>';

    $bg = $this->bg;
    $bd = $this->bd;
    $pf = $this->pf;

//    if ( $this->nom === 'Fanny' ) {
//      echo $bg . ' ' . $bd . ' ' . $pf . '<hr>';
//    }

    $parr = $this->parr;

//    vd($gr);

    foreach ( $gr as $m ) {
//      echo $m->nom . '<br>';
      if ( $m->bg <= $bg && $m->bd >= $bd && $m->pf === $pf - 1 ) {
//        echo ' (RI: ' . $m->nom . ') ';
        if ( $m->nom <> $parr ) {
          echo '<h1>**********************************************</h1>';
        }
        return $m->nom;
      }
    }

  }

}
