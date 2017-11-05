<?php

class Personnage
{
  private $_experience = 50;

  public function afficherExperience()
  {
    echo $this->_experience;
  }

  public function gagnerExperience($vecu)
  {
    // On ajoute 1 à notre attribut $_experience.
    $this->_experience +=  $vecu;
  }
}
    
$perso = new Personnage;
$perso->gagnerExperience(23); // On gagne de l'expérience.
$perso->afficherExperience(); // On affiche la nouvelle valeur de l'attribut.


echo '<hr>';
