<?php
/**
 * Created by C7.
 * User: Li
 * Date: 18/01/2018
 * Time: 10:30
 */

namespace Agc7\Arbre;


class ValidationMembre
{
  public $groupe;
  public $pseudo;
  public $parr;


  /**
   * ValideFondateur constructor.
   * @param $groupe
   * @param $pseudo
   * @param null $parr
   */
  public function __construct( $groupe, $pseudo, $parr = null )
  {
    $this->groupe = $groupe;
    $this->pseudo = $pseudo;
    $this->parr = $parr;
  }

  /**
   *    * Valide la création du fondateur
   * => Doit être unique
   *
   * @return bool
   */
  public function estValide()
  {
    echo 'Validation:';
    vd( $this );
    return true;
  }
}
