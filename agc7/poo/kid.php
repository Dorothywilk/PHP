<?php namespace Poo;

include './class/Kid.php';

echo '<h1>Kid</h1>';


$billy      = new Kid();
$billy->age = '14a';

echo '=> Billy est agé de ', $billy->age, ' ans<hr>';

// La propiété age est gérée par la classe, même si pas défini dans les propiété de la classe.

// __set() et __get(), méthodes magiques Accessor et getter sont codé de façon particulière, telles qu'elle ne feront leur 'travail' que sur une propriété à la volée nommée 'age'


unset( $billy->voiture );
var_dump( isset( $billy->voiture ) );

// Devrait renvoyer une erreur, mais la méthode __toString()
// permet de gérer ce cas
echo $billy;


// La propriété de cheveux n'est pas considée d'où une erreur en fin de page
// mais __get() permet de gérer autrement ce fait
echo 'S\'il n\'a pas de voiture, ses cheveux sont de couleur ' , $billy->cheveux;
