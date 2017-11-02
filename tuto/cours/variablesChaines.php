<?php


// Exemple avec formulaire
// include './tuto/initiation/tableMultiplication.php';


$a = 77777.7;

echo '<h1 class="is-size-1">' . number_format( $a, 2, ',', ' ' ) . '</h1>';



$n = 233333; // 17
$diviseur = 3; //3

echo '<div class="meaDo">' . $nf( $n ) . ' / ' . $nf( $diviseur ) . ' = ' . $nf( (int) ( $n / $diviseur ) ) . ' x ' . $nf( $diviseur ) . ' + ' . $nf( $n % $diviseur ) . '</div>';





/* Déclaration de variables de types différents
           
           Déclaration de variables PHP

Correct	        Incorrect	      Explications
           
           

$variable	      variable	      Une variable doit commencer par $
$Variable1	    $Variable 1	    Les espaces sont interdits
$variable_suite	$variable-suite	Le tiret est interdit
$_variable	    $-variable	    Le tiret est interdit
$variable2	    $2variable	    Il ne peut y avoir de chiffre après le $

*/

/* $prenom = 'Hugo';           // Type string (chaine de caractères)
 $nom = "Hamon";               // Type string (chaine de caractères)
 $age = 19;                    // Type entier
 $estEtudiant = true;          // Type booléen
 $cours = array('physique','chimie','informatique','philosophie'); 
                               // Type tableau
 $unEtudiant = new Etudiant ();// Objet de type Etudiant
*/

  $a = 'Dorothy' ;
  $b = 'Wilkinson';

  $qui = 'Maman';

  echo '<hr>' . $qui . ' est ' . $a .' ' . $b . '<hr>';


  // Déclaration des variables
  $rue = 'Bihet';
  $numero = 12 ;
  $codePostal = 4500 ;
  $commune = 'Jupille sur Meuse';
  $espace = str_REPEAT('&nbsp;',25);
  $pays = 'B'.$espace.'Belgium';
  // On concatène $rue dans $numero

  // Meilleure façon
  //  $adresse .= ', ' . $numero . '<br>' . $codePostal . ' <span class="espaceEntreCodePostalEtCommune">' . $commune.'</span>';

  $adresse = $rue . ', ' . $numero . '<br>' . $codePostal . ' &nbsp; ' . $commune . '<br>' .$pays;

  // Affiche 'Bihet 12'
  echo 'Rue ' .  $adresse .   '<hr>';

// Déclaration des variables
  $prenom = 'Hugo';
  $nom = 'Hamon';
  // On concatène $nom dans $prenom
  $prenom .= ' '. $nom;
  // Affiche 'Hugo Hamon'
  echo $prenom.'<hr>';






echo '<hr>';
