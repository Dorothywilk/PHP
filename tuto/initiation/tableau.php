<?php


$t[]='a';
$t[]='b';
$t[]='c';
$t[]='d';

// $t['a'..'z'];

echo '<pre>';
print_r($t);
echo '</pre>';

// echo $t[0].' - '.$t[1].' - '.$t[2] . '<br><br>';

for ($i=0; $c=count($t), $i < $c ; $i++) { 

$t[$i] = strtoupper($t[$i]);

  echo $t[$i] . ( ($i < $c-1) ? ' | ':'' );

}
echo '<hr>Nbr = '. $c;

echo '<pre>';
print_r($t);
echo '</pre>';


/*
echo '<pre>';
print_r($t);
echo '</pre>';
*/