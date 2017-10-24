<?php


class user extends humain {

	public $prenom, $genre, $age, $prof,$estHumain;

	function __construct($prenom, $genre, $age, $prof)
	{
		$this->prenom = $prenom;
		$this->genre = $genre;
		$this->age = $age;
		$this->prof = $prof;

		parent::__construct($this);
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

	function estAutorise () {
		if ( $this->estHumain && $this->age > 17 ) return 'Autorisé' . (($this->sexe=='F')?'e':'');
		else return 'Non autorisé'.(($this->sexe=='F' && $this->estHumain)?'e':'') . ' :-(';
	}

}

/*$hugo = new user('Hugo');
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
*/
