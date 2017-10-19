<?php

class Homme extends EtreHumain
{
  /**
   * Construit l'objet Homme
   *
   * @param string $nom Nom de l'homme
   * @return void
   */
  public function __construct($nom)
  {
  	$this->nom = $nom;
  	$this->sexe = 'M';
  }

  /**
   * Affiche le sport de l'homme
   *
   * @param void
   * @return void
   */
  public function faireDuSport()
  {
  	echo $this->nom .' fait de la boxe';
  }

  /**
   * Affiche la distraction de l'homme
   *
   * @param void
   * @return void
   */
  public function seDivertir()
  {
  	echo 'Soirée foot et bières';
  }
}

class Femme extends EtreHumain
{
  /**
   * Construit l'objet Femme
   *
   * @param string $nom Nom de la femme
   * @return void
   */
  public function __construct($nom)
  {
  	$this->nom = $nom;
  	$this->sexe = 'F';
  }
  
  /**
   * Affiche le sport de la femme
   *
   * @param void
   * @return void
   */
  public function faireDuSport()
  {
  	echo $this->nom .' fait du fitness';
  }
  
  /**
   * Affiche la distraction de la femme
   *
   * @param void
   * @return void
   */
  public function seDivertir()
  {
  	echo 'Shopping entre filles';
  }
}