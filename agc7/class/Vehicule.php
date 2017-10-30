<?php

class Vehicule
{
  // Attributs
  protected $_marque;
  protected $_estRepare;

  // Méthodes
  public function __construct( $marque )
  {
    $this->_marque = $marque;
    $this->_estRepare = false;
  }

  // Met le véhicule en maintenance
  public function reparer()
  {
    $this->_estRepare = true;
    echo 'Le véhicule est en réparation<br>';
  }
}
