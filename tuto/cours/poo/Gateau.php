<?php
namespace DoGc7;
/*
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
*/  
  
//$perso->gagnerExperience(); // On gagne de l'expérience. //$perso->afficherExperience(); // On affiche la nouvelle valeur de l'attribut.


class Gateau
{
  public $gout;
  public $texture;
  public $forme;
  public $couleur;
  public $poids;
  
  
  function nourrir(){
    $msg = 'Je nourris la personne qui me mange';
    return $msg;
  }
  
  function fairePlaisir(){
    
  }
  
  function faireGrossir($mangeur){
   
    $this->poids -= 100;
    $mangeur->poids+=100;
    
    echo 'Je pèse maintenant '. $this->poids . ' <a href="#">grammes</a>.<br>';
    
    
  }
}

$cake = new Gateau;  // On créé l'objet cake = On instancie l'objet cake
$cake->gout = 'chocolat';
$cake->texture = 'mou';
$cake->forme = 'carré';
$cake->couleur = 'marron';
$cake->poids = 500;


$beignet = new Gateau; // On créé l'objet beignet

$cake->texture = 'moelleux';
$cake->couleur = 'doré';
echo '<hr>';
$lio = (object) []; // On créé l'objet lio

$cake->nourrir();
$cake->gout = 'pomme';
$cake->forme = 'rond';


$lio->poids = 60000;

$doro = (object) []; // On créé l'objet doro 
$doro->poids = 65000;
$doro->cheveux = 'gris';


$cake->faireGrossir($doro);
$cake->faireGrossir($lio);
$cake->faireGrossir($lio);

echo $lio->poids.'<br>';
echo $cake->poids.'<br>';


echo $doro->cheveux.'<hr>';

?>

<a href="http://lisacatalano.github.io/brackets_course/pc.html">Raccourcis Brackets</a>




<div class="meaDo"><a href="http://lisacatalano.github.io/brackets_course/pc.html">Raccourcis Brackets</a></div>

<p class="fdRougeDo">Ctrl + Shift + O pour Open File ;-)</p>











  <hr>
  <pre>
   Voilà ce qu'est Doro :
    <?php
      print_r($doro);
    ?>
  </pre>
