<?php namespace Gc7;

class Vehicule
{
  // Attributs
  protected $_marque;
  protected $_estRepare;
  protected $dateEnregistrement;

  // Méthodes
  public function __construct( $marque )
  {
    $this->_marque = $marque;
    $this->_estRepare = false;
    $this->dateEnregistrement = date('d/m/y à H:i:s');
  }

  // Donne la date d'enregistrement (Propriété protected)
  public function getDateEnregistrement()
  {
    return $this->dateEnregistrement;
  }

  // Met le véhicule en maintenance
  public function reparer()
  {
    $this->_estRepare = true;
    echo 'Le véhicule est en réparation<br>';
  }
  
  function getMarque(){
    return $this->_marque;
  }
}
