<h3>Kid</h3><?php

include './class/Kid.php';

$property = 'age';
$value    = 14;


// echo ('age' === $property);

$billy          = new Kid();
$billy->age     = 14;
$billy->cheveux = 'noirs';

echo 'Billy est agé de ', $billy->age, ' ans <br><br>et ses cheveux sont de couleur <hr>', $billy->cheveux;

// La propiété age est gérée par la classe, même si pas défini dans les propiété de la classe.

// __set() et __get(), méthodes magiques Accessor et getter sont codé de façon particulière, telles qu'elle ne feront leur 'travail' que sur une propriété à la volée nommée 'age'

// La propriété de cheveux n'est pas considée d'où code d'erreur en fin de page
