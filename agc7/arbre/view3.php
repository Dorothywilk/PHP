<?php namespace Agc7\Arbre;

//include '../../tuto/cours/ri/fonctionsRi.php'; // To classify

include 'class/Xu.php'; // Membre d'un réseau
include 'class/Rsx.php'; // Réseau
include 'class/Ri.php'; // Représentation Intervallaire
include 'assets/functions/gc7.php';


$famille = [
  [ 'bg' => 1, 'bd' => 2, 'nom' => 'Aadminli', 'parr' => null, 'prof' => 0 ],
];

//$famille = Ri::addChild( 'Doro', 1, $famille ); // 1 est la BG d'Aadminli
//$famille = Ri::addChild( 'Mimi', 1, $famille );
//$famille = Ri::addChild( 'Jona', 3, $famille );
//$famille = Ri::addChild( 'Fanny', 3, $famille ); // < Fanny => Bug
//$famille = Ri::addChild( 'Minnie', 3, $famille );
//$famille = Ri::addChild( 'Jade', 4, $famille );
//$famille = Ri::addChild( 'Chiva', 5, $famille );
//$famille = Ri::addChild( 'Fanny', 4, $famille );
//$famille = Ri::addChild( 'Ulysse', 3, $famille );
//$famille = Ri::addChild( 'Nono', 9, $famille );
////$famille = Ri::addChild( 'Alice', 2, $famille );

sort( $famille );

//vd($famille);

$rsx = new Rsx( $famille );

//echo '<pre>';
//var_dump( $rsx );
//echo '</pre>';

//echo $rsx->nbr() . ' membres<hr>';

//echo $rsx->affNomXu( 2 );
//echo $rsx->affCardXu( 0 );

echo $rsx->affVueHV();
