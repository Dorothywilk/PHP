<?php

// Toléré en PHP: Il traduit une chaine comme une valeur numérique si elle ne contient que des chiffres...

echo '119'+2;



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

 /* $prenom = 'Hugo';                                               // Type string (chaine de caractères)
  $nom = "Hamon";                                                   // Type string (chaine de caractères)
  $age = 19;                                                        // Type entier
  $estEtudiant = true;                                              // Type booléen
  $cours = array('physique','chimie','informatique','philosophie'); // Type tableau
  $unEtudiant = new Etudiant ();                                    // Objet de type Etudiant
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
 
  //echo $prenom2 . ' a ' . $age2  . ' ans';

  //echo '<hr><hr>';

  // Déclaration des variables

  $prenom = 'Hugo';
  $nom = 'Hamon';
  $identite = '';

  // On contatène $nom et $prenom dans $identite

  $identite = $prenom . '' . $nom;

  // Affiche 'Hugo Hamon'

  echo $identite;

  //Opérations mathématiques sur les variables

  // Déclaration des variables mathématiques
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
  // Incrémentation de $a
  $a++;
  // Décrémentation de $b
  $b--;

  $a= 20;
  $b= 10;
  $c= $a + $b;

  echo $c;


















/*
function nf($v) {
  return number_format( $v , 2 ,',', ' ');
}
*/