<?php namespace Agc7\Arbre;

include '../../tuto/cours/ri/fonctionsRi.php'; // To classify

include 'class/Xu.php';
include 'class/Rsx.php';


$famille = [
  [ 'bg' => 1, 'bd' => 2, 'nom' => 'Adminli 1', 'parr'=>null, 'prof' => 0 ],
];

$famille = insert( 'Jona', 1, $famille ); // 1 est la BG de Doro)
$famille = insert( 'Mimi', 1, $famille );
$famille = insert( 'Rom1', 4, $famille );
$famille = insert( 'Jade', 4, $famille );
$famille = insert( 'Jeny', 5, $famille );
$famille = insert( 'Fanny', 2, $famille );
//$famille = insert( 'Félicien', 3, $famille );
//$famille = insert( 'Ulysse', 8, $famille );
//$famille = insert( 'Nono', 9, $famille );
////$famille = insert( 'Alice', 2, $famille );
//

sort( $famille );


//echo '<pre>Famille: ';
//var_dump( $famille );
//echo '</pre>';
//exit;

$rsx = new Rsx( $famille );

//echo '<pre>';
//var_dump( $rsx );
//echo '</pre>';

//echo $rsx->nbr();

foreach ( $rsx->membres as $i => $xu ) {
  echo $i . ' : ' . $xu->nom . ' (' . $xu->bg . ', ' . $xu->bd . ')<br>' . "\n";
}
//
//echo $rsx->nbr() . ' membres<hr>';

//echo $rsx->affNomXu( 2 );
//echo $rsx->affCardXu( 0 );
echo $rsx->affVueHV();

// [ 'p

//echo '<br>';
//include 'uuu.html';
