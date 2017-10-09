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
echo 'Formule chimique de l\'eau : FORMULE_EAU </br></br>';

/* Déclaration de variables de types différents
           
           Déclaration de variables PHP

Correct	        Incorrect	      Explications
           
           

$variable	    variable	    Une variable doit commencer par $
$Variable1	    $Variable 1	    Les espaces sont interdits
$variable_suite	$variable-suite	Le tiret est interdit
$_variable	    $-variable	    Le tiret est interdit
$variable2	    $2variable	    Il ne peut y avoir de chiffre après le $

*/

 /* $prenom = 'Hugo';  // Type string (chaine de caractères)
  $nom = "Hamon";    // Type string (chaine de caractères)
  $age = 19;    // Type entier
  $estEtudiant = true;  // Type booléen
  $cours = array('physique','chimie','informatique','philosophie'); // Type tableau
  $unEtudiant = new Etudiant (); // Objet de type Etudiant
*/
/* Pour les tableaux, on recontre le plus souvent cette notation :
$t = [item1, item2];
Exemple suit...
*/
echo '<hr>';

$tablo_des_prenoms = ['Pierre', 'Paul', 'Jacques'];
echo 'On peut le voir ensuite dans la page web :';
echo '<pre>';
print_r($tablo_des_prenoms);
echo '</pre>';



echo '<hr>';

  $prenom = 'Hugo';
  $age = 19;
 
  echo $prenom;        // Affiche 'Hugo'
  echo '<br/>';
  echo $age;        // Affiche 19
 
  $prenom = 'Hadrien';
  $age = 18;
 
  echo $prenom;        // Affiche 'Hadrien'
  echo '<br/>';
  echo $age; 
  echo '</br></br>';       // Affiche 18

$a=3;

echo 'Ma var <b>$a</b> vaut <b>' . $a . '</b>';
