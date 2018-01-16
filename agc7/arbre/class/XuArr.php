<?php namespace Agc7\Arbre;

/**
 * Class Xu - Xu, membre de Rsx
 * @package Agc7\Arbre
 */
class XuArr
{
  public function __construct( $membre )
  {
    $this->bg = $membre[ 'bg' ];
    $this->bd = $membre[ 'bd' ];
    $this->nom = $membre[ 'nom' ];
    $this->parr = $membre[ 'parr' ];
    $this->pf = $membre[ 'prof' ];
    /* t (type) : c pour child // p pour parent */
    $this->t = ( $this->bd - $this->bg === 1 ) ? 'c' : 'p';
  }

}
