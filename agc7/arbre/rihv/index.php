<?php namespace Agc7\Arbre\rihv;

//include '../../tuto/cours/ri/fonctionsRi.php'; // To classify

include 'class/Membre.php'; // Membre d'un groupe
//include 'class/ValidationMembre.php';
include 'class/Groupe.php';
//include 'class/Ri.php'; // Représentation Intervallaire
include 'assets/functions/gc7.php';


//$gr = new Groupe ( 'Aadminli' );
// Tentative de renommer un fondateur rejettée par le fait que la classe Groupe est un singleton
// $gr = new Groupe ( 'Aadminli2');
$gr = new Groupe ( 'Doro' );

$gr->add( 'Jona', 0 ); // 0 = N° du membre parrain
$gr->add( 'Mimi', 0 ); // 0 = N° du membre parrain
$gr->add( 'Rom1', 0 ); // 0 = N° du membre parrain
$gr->add( 'Jade', 0 ); // 0 = N° du membre parrain
$gr->add( 'Fanny', 1 ); // 0 = N° du membre parrain
$gr->add( 'Jeny', 4 ); // 0 = N° du membre parrain
//$gr->add( 'Bug', 7 ); // 0 = N° du membre parrain
$gr->affListeMembres();


//
//$famille = [
//  [ 'bg' => 1, 'bd' => 2, 'nom' => 'Aadminli', 'parr' => null, 'prof' => 0 ],
//];
//
//$famille = Ri::addChild( 'Doro', 1, $famille ); // 1 est la BG d'Aadminli
//$famille = Ri::addChild( 'Mimi', 1, $famille );
//$famille = Ri::addChild( 'Jona', 4, $famille );
//$famille = Ri::addChild( 'Fanny', 3, $famille ); // < Fanny => Bug
//$famille = Ri::addChild( 'Minnie', 3, $famille );
//$famille = Ri::addChild( 'Jade', 4, $famille );
//$famille = Ri::addChild( 'Chiva', 5, $famille );
//$famille = Ri::addChild( 'Fanny', 4, $famille );
//$famille = Ri::addChild( 'Ulysse', 3, $famille );
//$famille = Ri::addChild( 'Nono', 9, $famille );
////$famille = Ri::addChild( 'Alice', 2, $famille );

//sort( $famille );

//vd($famille);


//echo '<pre>';
//var_dump( $rsx );
//echo '</pre>';

//echo $rsx->nbr() . ' membres<hr>';

//echo $rsx->affNomXu( 2 );
//echo $rsx->affCardXu( 0 );

//$rsx = new Rsx( $famille );
//echo $rsx->affVueHV();
