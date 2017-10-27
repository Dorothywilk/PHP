<h3>Mon cours sur les concaténations</h3>

<?php

// Exemple avec formulaire
// include './tuto/initiation/tableMultiplication.php';


$nom='Jade';


$nom.=' W.'; // <=> $nom = $nom . ' W.';

echo $nom.'<hr>';


$n=17; // 17
$diviseur = 3; //3

echo '<h2>'.$n.' / '.$diviseur.' = '.(int) ($n / $diviseur).' x '.$diviseur.' + '.($n%$diviseur).'</h2>';
