<?php namespace Agc7\Arbre;
/**
 * Created by C7.
 * User: Li
 * Date: 15/01/2018
 * Time: 11:48
 */
class Xu
{
//  public $nom, $bg, $bd, $pf, $t;

  public function __construct( $membre )
  {
    $this->bg = $membre[ 'bg' ];
    $this->bd = $membre[ 'bd' ];
    $this->nom = $membre[ 'nom' ];
    $this->parr = $membre[ 'parr' ];
    $this->pf = $membre[ 'prof' ];
    /* t (type) : p pour parent // c pour child */
    $this->t = ( $this->bd - $this->bg === 1 ) ? 'c' : 'p';
  }

  public function affGroupe()
  {
    echo $this->nom;
  }
}
