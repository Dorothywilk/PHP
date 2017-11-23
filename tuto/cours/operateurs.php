<div class='titreCoursDo actionManShaded'>
  <a href="https://apprendre-php.com/tutoriels/tutoriel-8-les-oprateurs.html" target="_blank" title="Lien direct su tuto d'Emacs">Les Opérateurs</a></div>

<?php

// Les 5 Opérateurs arithmétiques
$a = 10;
$b = 2;
$c = 0;
// $c vaut 10+2 = 12
$c = $a + $b;
// $c vaut 10x2 = 20
$c = $a * $b;
// $c vaut 10/2 = 5
$c = $a / $b;
// $c vaut 10-2 = 8
$c = $a - $b;
// $c vaut le reste de la division de $a par $b soit 0
$c = $a % $b;

// Opérateurs d'incrémentation/ de décrémentation
// Incrémentation de $a
$a++;
// Décrémentation de $b
$b--;

// L'opérateur modulo (%) retourne le reste de la division de deux nombres.
// L'opérateur d'incrémentation augmente de 1 la valeur de la variable. La syntaxe $a++ est identique à :
// $a+=1 et $a = $a+1.
// L'opérateur de décrémentation diminue de 1 la valeur de la variable. La syntaxe $b-- est identique à $b-= 1 et $b = $b-1.


 $n=17;
// 17
 $diviseur = 3;
// 3
echo '<hr><h2>'.$n.' / '.$diviseur.' = '.(int) ($n / $diviseur).' x '.$diviseur.' + '.($n%$diviseur).'</h2>';


// ToDoDo Sauvgarder les settings themes de brackets

// TODOLI Mettre Fichier origine ASV
