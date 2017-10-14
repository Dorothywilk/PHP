<?php

echo 'oOo';



  // Déclaration des variables
  $prenom = 'Hugo';
  $nom = 'Hamon';
  // On concatène $nom dans $prenom
  $nomComplet = $prenom . ' '. $nom;
  // Affiche 'Hugo Hamon'
  // echo $nomComplet,'<br>';



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

	$user[1]['prenom']='Hugo';
	$user[1]['age']=21;


	$user[2]['prenom']='Hadrien';
	$user[2]['age']=18;



//for ($i=1; $i<=2; $i++)
//echo'<h1 style ="color:blue">' . $user[$i]['prenom'] . '<hr><hr></h1>';


  $prenom1 = 'Hugo';
  $age1 = 21;
 
  // echo $prenom1;        // Affiche 'Hugo'
  // echo ' a ';
  // echo $age1;        // Affiche 19
  // echo ' ans' . '<hr>';


  // Avantage de la concaténation: 1 seule fois echo appelé.
  $prenom2 = 'Hadrien';
  $age2 = 18;
 
  //echo '<hr>'.$prenom2 . ' a ' . $age2  . ' ans';

//echo '<hr><hr>';

//

















/*
function nf($v) {
  return number_format( $v , 2 ,',', ' ');
}
*/