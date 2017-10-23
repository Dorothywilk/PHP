<h3>Mon cours sur les tableaux indexés</h3>

<?php

$t=[
	'prenom'  	=>  'Jade',
	'nom'		=>	'W.',
];

echo $t['prenom'] . ' ' . $t['nom'];

$c = count($t);
echo '<hr>Nbr = '. $c;

echo '<pre>';
print_r($t);
echo '</pre>';


foreach ($t as $k => $v) {
	echo ucfirst($k) .' : '.$v;
	echo '<br>';
}