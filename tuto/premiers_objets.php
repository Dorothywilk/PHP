<?php	
class user
{
	public $prenom, $age, $prof;

	function __construct($prenom)
	{
		$this->prenom = $prenom;
	}

	function vieillir(){
		echo $this->prenom. ' : Je prends un an dans la gueule<br>';
		$this->age++;
	}

	function rajeunir($cible) {
		//$cible = user(cible);

		echo $cible->prenom . ' : Je récupère un an dans ma poire<br>';
		$cible->age--;
	}

}

$hugo = new user('Hugo');
$hugo->prenom='Hugo';
$hugo->age = 21;
$hugo->profession = 'maçon';

$hadrien = new user('Hadrien');
$hadrien->prenom='Hadrien';
$hadrien->age = 18;
$hadrien->profession = 'étudiant';


echo '<h1 style ="color:green">Au début, âge Hugo = ' . $hugo->age . '</h1>';
echo '<h1 style ="color:green">Au début, âge Hadrien = ' . $hadrien->age . '</h1>';


$hugo->vieillir();
$hugo->vieillir();
$hugo->vieillir();
$hugo->vieillir();
$hugo->vieillir();


$hadrien->vieillir();
$hadrien->vieillir();
$hadrien->vieillir();
$hadrien->vieillir();
$hadrien->vieillir();


echo '<h1 style ="color:green">Age Hugo = ' . $hugo->age . '</h1>';
echo '<h1 style ="color:green">Age Hadrien = ' . $hadrien->age . '</h1><hr>';

$hadrien->rajeunir($hugo);

echo '<h1 style ="color:green">Age Hugo = ' . $hugo->age . '</h1>';
echo '<h1 style ="color:green">Age Hadrien = ' . $hadrien->age . '</h1>';
 
