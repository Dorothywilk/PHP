<?php namespace Agc7\Arbre\rihv;

include 'class/Membre.php'; // Membre d'un groupe
//include 'class/ValidationMembre.php';
include 'class/Groupe.php';
//include 'class/Ri.php'; // Représentation Intervallaire
include 'assets/functions/gc7.php';


//$gr = new Groupe ( 'Aadminli' );
// Tentative de renommer un fondateur rejettée par le fait que la classe Groupe est un singleton
// $gr = new Groupe ( 'Aadminli2');
$gr = new Groupe ( 'Doro' );
//$gr = new Groupe ( 'Doro2' );

$gr->add( 'Jona', 0 ); // 0 = N° du membre parrain
$gr->add( 'Mimi', 0 );
$gr->add( 'Rom1', 0 );
$gr->add( 'Jade', 0 );
$gr->add( 'Fanny', 1 );
//$gr->add( 'Jeny', 4 );
//$gr->add( 'Félicien', 3 );
//$gr->add( 'Nico', 3 );
//$gr->add( 'Lionel', 0 );
//$gr->add( 'Bug', 7 ); // 0 = N° du membre parrain // Todoli gérer controle

// Affiche la liste des membres
//$gr->affListeMembres();

// Affiche une vue hierarchique du Groupe
$gr->affVueHierarchique();
