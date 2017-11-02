<?php

class NomDeLaClasse
  
  // C'est un moule qui a des propriétés et des fonctions
{
  private $_caracteristique = 50;

  public function fonction()
  {
    echo $this->caracteristique;
  }
}
    
$objetDeLaClasse = new NomDeLaClasse; // C'est quelque chose fait avec le moule
  
//$perso->gagnerExperience(); // On gagne de l'expérience. //$perso->afficherExperience(); // On affiche la nouvelle valeur de l'attribut.


class Gateau
{
  public $gout;
  public $texture;
  public $forme;
  public $couleur;
  public $poids;
  
  
  function nourrire(){
    
  }
  function fairePlaisir(){
    
  }
  function faireGrossir($mangeur){
   
    $this->poids -= 100;
    $mangeur->poids+=100;
    
    echo 'Je pèse maintenant '. $this->poids . ' grammes.<br>';
    
    
  }
}

$cake = new Gateau;  // On créé l'objet cake
$cake->gout = 'chocolat';
$cake->texture = 'mou';
$cake->forme = 'carré';
$cake->couleur = 'marron';
$cake->poids = 500;

$beignet = new Gateau; // On créé l'objet beignet
$cake->gout = 'pomme';
$cake->texture = 'moelleux';
$cake->forme = 'rond';
$cake->couleur = 'doré';

echo '<hr>';

$lio = (object) []; // On créé l'objet lio
$lio->poids = 60000;


$doro = (object) []; // On créé l'objet doro 
$doro->poids = 65000;
$doro->cheveux = 'gris';


$cake->faireGrossir($doro);
$cake->faireGrossir($lio);
$cake->faireGrossir($lio);

echo $lio->poids.'<br>';
echo $cake->poids.'<br>';


echo $doro->cheveux;



















//
?>
  <hr>
  <pre>
   Voilà ce qu'est Doro :
    <?php
      print_r($doro);
    ?>
  </pre>
