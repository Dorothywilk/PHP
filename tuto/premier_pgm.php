<?php

echo '<strong> Hello World !</strong></br></br>';
 
// Ceci est un premier commentaire sur une ligne

echo 'Hello World !</br></br>';

# Ceci est un second commentaire sur une ligne

echo 'Bonjour le monde !</br></br>';

/* 
  Ce programme a été écrit par Emacs

  Il affiche la chaîne 'Hello Word' ! à l'écran
*/

echo 'Je suis une ligne de texte après le commentaire multiligne !<hr>';


// Déclaration de la constante
define('TEMPERATURE_EBULLITION_EAU', 100);
 
// Affichage de sa valeur
echo 'L\'eau bout à ', TEMPERATURE_EBULLITION_EAU ,'°C </br></br>

Pi vaut env. <b>' . M_PI . '</b><br><br>';

// Déclaration de la constante
define('FORMULE_EAU','H2O');
 
// Affichage de sa valeur
echo 'Formule chimique de l\'eau :, FORMULE_EAU </br></br>';

/* Déclaration de variables de types différents

Correct	Incorrect	Explications
Déclaration de variables PHP
$variable	variable	Une variable doit commencer par $
$Variable1	$Variable 1	Les espaces sont interdits
$variable_suite	$variable-suite	Le tiret est interdit
$_variable	$-variable	Le tiret est interdit
$variable2	$2variable	Il ne peut y avoir de chiffre après le $

*/



$a=3;

echo 'Ma var <b>$a</b> vaut <b>' . $a . '</b>';
