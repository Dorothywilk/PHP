<?php
 
class Vehicule
{
  // Attributs
  public $marque;
  private $_volumeCarburant;
  protected $_estRepare;
 
  // Méthodes
  public function __construct() 
  {
    $this->_volumeCarburant = 40;
    $this->_estRepare = false;
  }
 
  // Démarre la voiture si le réservoir
  // n'est pas vide
  public function demarrer() 
  {
    if ($this->_controlerVolumeCarburant())
    {
      echo 'Le véhicule démarre';
      return true;
    }
 
    echo 'Le réservoir est vide...';
    return false;
  }
 
  // Vérifie s'il y'a du carburant dans le réservoir
  private function _controlerVolumeCarburant() 
  {
    return ($this->_volumeCarburant > 0); // renvoi true ou false
  }
 
  // Met le véhicule en maintenance
  protected function reparer()
  {
    $this->_estRepare = true;
    echo 'Le véhicule est en réparation';
  }
}