<?php namespace Agc7\Arbre\rihv;


include 'class/Groupe.php';
include 'class/Membre.php'; // Membre d'un groupe
//include 'class/ValidationMembre.php';
//include 'class/Ri.php'; // Représentation Intervallaire
include 'assets/functions/gc7.php';

//$gr = new Groupe ( 'Aadminli' );
// Tentative de renommer un fondateur rejettée par le fait que la classe Groupe est un singleton
// $gr = new Groupe ( 'Aadminli2');
//$gr = new Groupe ( 'Doro' );
//$gr = new Groupe ( 'Doro2' );

//$gr->affListeMembres();

$gr = new Groupe ( 'Do' ); // Fondateur

// 0 = Ido, Id Origine (En grand en mode construction !) du membre parrain
//$gr->add( 'Jona', 0 ); //$gr->add( 'Mimi', 0 ); //$gr->add( 'Rom1', 0 ); //$gr->add( 'Jade', 0 ); //$gr->add('Félicien', 3 );
$gr->add( 'Paul', 0 ); 
$gr->add( 'Fany', 1 );
$gr->add( 'Jeny', 0 );
$gr->add( 'Oki', 1 ); 
$gr->add( 'Lionel', 3 );
$gr->add( 'Lionel_2', 3 );
$gr->add( 'Lionel_3', 3 );
$gr->add( 'Pierre', 4 );

//vd($gr);
//echo '<h1>'.$gr->membres[5]->t.'</h1>';


//$m=$gr->membres[1];
//vd($m);
//echo $gr->membres[ 5 ]->nom . ' < ' . $gr->membres[ 5 ]->getParrRi( $gr );


// Test: Création aléatoire de $nbre membres

$nombre = 0;

for ( $i = 1; $i < $nombre+1; $i ++ ) {
	$fakePseudo = 'Untel_' . $i;
	$gr->add( $fakePseudo, array_rand( $gr->membres ) );
}

// Affiche la liste des membres
//$gr->affListeMembres();

//echo $gr->nbr();

//Affiche le nom d'un membre au hazard
//echo $gr->membres[array_rand($gr->membres)]->nom;

// Affiche une vue hierarchique du Groupe
$gr->affVueHierarchique();

echo '<br>';
