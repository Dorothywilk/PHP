<?php namespace Agc7\Arbre\rihv;

include 'class/GroupeDebug.php';
include 'class/Membre.php'; // Membre d'un groupe
//include 'class/ValidationMembre.php';
//include 'class/Ri.php'; // Représentation Intervallaire
include 'assets/functions/gc7.php';


//$gr = new Groupe ( 'Aadminli' );
// Tentative de renommer un fondateur rejettée par le fait que la classe Groupe est un singleton
// $gr = new Groupe ( 'Aadminli2');
//$gr = new Groupe ( 'Doro' );
//$gr = new Groupe ( 'Doro2' );

//$gr->add( 'Jona', 0 );
//$gr->add( 'Mimi', 0 );
//$gr->add('Jade',0);
//
////$gr->affListeMembres();
//$gr->affVueHierarchique();
//
//// schema buggé
//exit;
//unset($gr);

$gr = new GroupeDebug ( 'Doro' );
$gr->add( 'Jona', 0 ); // 0 = N° du membre parrain
$gr->add( 'Mimi', 0 );
$gr->add( 'Jade', 0 );
$gr->add( 'Fany', 1 );
$gr->add( 'Jeny', 3 );
$gr->add( 'Bug', 4 );
$gr->add( 'Lionel', 0 );

/* Vugé
$gr = new Groupe ( 'Doro' );
$gr->add( 'Jona', 0 ); // 0 = N° du membre parrain
$gr->add( 'Fany', 1 );
$gr->add( 'Lionel', 0 );
$gr->add( 'Mimi', 0 );
$gr->add( 'Jade', 0 );
$gr->add( 'Jeny', 3 );
$gr->add( 'Bug', 4 );
*/

echo 884*2.5;

//$gr->add( 'Jeny', 3 );
//$gr->add( 'Félicien', 5 );
//$gr->add( 'Félicien', 3 );

//echo ( 1.28 * 50 ) - ( 1.141 * 50 ) . '<br>';
//$m=$gr->membres[1];
//vd($m);

//echo $gr->membres[ 5 ]->nom . ' < ' . $gr->membres[ 5 ]->getParrRi( $gr );


// Test: Création aléatoire de quelques membres
for ( $i = 1; $i <1; $i++ ) {
  $fakePseudo = 'Untel_' . $i;
  $gr->add( $fakePseudo, array_rand( $gr->membres ) );
}

// Affiche la liste des membres
$gr->affListeMembres();


//vd(array_rand($gr->membres));
//echo $gr->membres[5]->affMembre( 5 );

// Affiche une vue hierarchique du Groupe
$gr->affVueHierarchique();

echo '<br>';


