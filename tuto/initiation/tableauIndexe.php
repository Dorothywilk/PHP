<?php

$t=[
	'prenom'  =>  'Jade',
	'nom'			=>	'W.',
];

echo $t['prenom'] . ' ' . $t['nom'];

$c = count($t);
echo '<hr>Nbr = '. $c;

echo '<pre>';
print_r($t);
echo '</pre>';


