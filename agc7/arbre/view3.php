<?php namespace Agc7\Arbre;

//include '../../tuto/cours/ri/fonctionsRi.php'; // To classify

include 'class/Xu.php';
include 'class/Rsx.php';
include 'class/Ri.php';
include 'assets/functions/gc7.php';


$famille = [
  [ 'bg' => 1, 'bd' => 2, 'nom' => 'Adminli', 'parr' => null, 'prof' => 0 ],
];

$famille = Ri::addChild( 'Doro', 1, $famille ); // 1 est la BG de Aadminli
$famille = Ri::addChild( 'Jona', 1, $famille );
$famille = Ri::addChild( 'Mimi', 1, $famille );
$famille = Ri::addChild( 'Rom1', 4, $famille );
$famille = Ri::addChild( 'Jade', 4, $famille );
$famille = Ri::addChild( 'Chiva', 5, $famille );
$famille = Ri::addChild( 'Fanny', 4, $famille );
$famille = Ri::addChild( 'Félicien', 5, $famille ); // < Fanny => Bug
//$famille = Ri::addChild( 'Ulysse', 8, $famille );
//$famille = Ri::addChild( 'Nono', 9, $famille );
////$famille = Ri::addChild( 'Alice', 2, $famille );
//

sort( $famille );

//vd($famille);

$rsx = new Rsx( $famille );

//echo '<pre>';
//var_dump( $rsx );
//echo '</pre>';

//echo $rsx->nbr();

foreach ( $rsx->membres as $i => $xu ) {
  echo $i . ' : ' . $xu->nom . ( $xu->parr ? ' < ' . $xu->parr : '' ) . ' (' .
    $xu->bg .
    ', ' . $xu->bd
    . ')
  <br>' .
    "\n";
}
//
//echo $rsx->nbr() . ' membres<hr>';

//echo $rsx->affNomXu( 2 );
//echo $rsx->affCardXu( 0 );
echo $rsx->affVueHV();

// [ 'p

echo '<br>';
include 'uuu.html';
