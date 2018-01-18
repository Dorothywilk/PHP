<?php namespace Agc7\Arbre;

//include '../../tuto/cours/ri/fonctionsRi.php'; // To classify

include 'class/XuArr.php'; // Membre d'un réseau
include 'class/RsxArr.php'; // Réseau
include 'class/RiArr.php'; // Représentation Intervallaire
include 'assets/functions/gc7.php';


$famille = [
  [ 'bg' => 1, 'bd' => 2, 'nom' => 'Lionel', 'parr' => null, 'prof' => 0 ],
];

$famille = RiArr::addChild( 'Smail', 1, $famille ); // 1 est la BG d'Aadminli
$famille = RiArr::addChild( 'Thierry', 1, $famille ); // 1 est la BG d'Aadminli
$famille = RiArr::addChild( 'Christian', 2, $famille ); // 1 est la BG d'Aadminli






//$famille = RiArr::addChild( 'Doro', 1, $famille ); // 1 est la BG d'Aadminli
//$famille = RiArr::addChild( 'Mimi', 1, $famille );
//$famille = RiArr::addChild( 'Jona', 4, $famille );
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

$rsx = new RsxArr( $famille );

//echo '<pre>';
//var_dump( $rsx );
//echo '</pre>';

//echo $rsx->nbr() . ' membres<hr>';

//echo $rsx->affNomXu( 2 );
//echo $rsx->affCardXu( 0 );

echo $rsx->affVueHV();
