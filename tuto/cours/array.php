<div class='titreCoursDo actionManShaded'>
  <a href="https://apprendre-php.com/tutoriels/tutoriel-7-les-tableaux-ou-arrays.html" target="_blank" title="Lien direct su tuto d'Emacs">Les Array()</a></div>

<?php

/*Déclaration d'un tableau

La déclaration d'un tableau vide se fait de la même manière qu'une variable, c'est à dire avec un signe dollars ($) et un nom. Le format du nom doit respecter les mêmes règles de déclaration qu'une variable. Nous identifierons ensuite le tableau par le nom que nous lui avons attribué.

Pour déclarer un nouveau tableau, il suffit d'utiliser la structure de langage array(). Cette fonction prend en paramètres facultatifs (séparés par une virgule), les valeurs que l'on souhaite insérer dans le tableau pour l'initialiser. Si rien n'est précisé en paramètre, le tableau créé sera vide. Voici 3 exemples de déclaration et d'initialisation de tableaux.*/
?>

  <h3>Déclaration d'un tableau vide</h3><br>

  <?php

  $fruits = [];
 
  // Déclaration d'un tableau indexé numériquement
  $legumes = ['carotte','poivron','aubergine','chou'];
 
?>
    <center>
      <h2>Ajout d'une nouvelle entrée dans un tableau</h2>
    </center><br>

    <?php 
//Pour ajouter une nouvelle valeur dynamiquement à la fin des tableaux précédents, il suffit de procéder comme expliqué dans l 'exemple suivant :
 // Ajout de 1 ou 2 légumes au tableu indexé numériquement
  
  $legumes[] = 'salade';
  $legumes[] = 'choux-rouge'; 

echo '<pre>';
   print_r($legumes);
echo '</pre>';
  
// Déclaration d'un tableau associatif
  $identite = [
 
      'nom' => 'Hamon', 
      'prenom' => 'Hugo', 
      'age' => 19, 
      'estEtudiant' => true
  ];
?>
    <br>
    <center>
      <h2>Ajout d'une nouvelle entrée dans un tableau associatif</h2>
    </center><br>

    <?php 
// Ajout de la taille de la personne dans le tableau associatif
  $identite['taille'] = 180;

  $adresse = [
           'rue'=>'Azebois',
           'cp'=>6230,
           'ville'=>'Thiméon' 
  ];

  $identite['adresse'] = $adresse;
echo '<pre>';
   print_r($identite);
echo '</pre>';
?>

    <br>
    <center>
      <h2>Ajout d'une nouvelle entrée dans un tableau associatif d'un tableau associatif ou mutlidimensionnels</h2>
    </center><br>

    <?php 
echo $identite['age'] . '<br>'; 
echo 'Rue d\' '. $identite['adresse']['rue']. '<br>' . $identite['adresse']['cp']. ' - ' . $identite['adresse']['ville'].'<br>';
?>
    <br>
    <center>
      <h2>Tableau particulier : la chaîne de caractères</h2>
    </center><br>
    <?php 

  $chaine = 'Bonjour le monde !';

echo $chaine . '<br>';

echo $chaine [3];
?>
    <center>
      <h2>Parcourir un tableau</h2>
    </center>
    <br>
    <?php

// Affichage des légumes
  foreach($legumes as $cle =>$valeur) {
 
    echo $cle ,' : ', $valeur ,'<br/>';
  }
 
echo '<hr>';
  // Affichage de l'identité de la personne
 // array_pop($identite); // Enlève le tableau $adresse du tableau $identite car dans l'exemple du tuto il n'y avait qu'un tableau

//Le print_r c'est pour afficher le tableau en back end et le foreach en frond end

//Ceci est un affichage clé / valeur, la cle" est dans le tableau

// foreach($identite as $cle => $valeur) {
//   echo $cle ,' : ', $valeur ,'<br/>';
// }

//  echo '<hr>';

//  foreach($adresse as $cle => $valeur) { // // echo $cle ,' : ', $valeur ,'<br/>'; // }






  foreach($identite as $cle => $valeur) {
    
    if (is_array($valeur)){
      echo $cle.' :';
      foreach($valeur as $cle => $val) {
           echo '<li>'.$cle ,' : ', $val ,'</li>';
        }
    }
    else echo $cle ,' : ', $valeur ,'<br/>';
    
  }

echo '<hr>';

// Calcul de la taille du tableau $legumes
 $tailleLegumes = count($legumes);  // 6
 

sort($legumes);

  // Parcours du tableau
  for($i=0; $i<$tailleLegumes; $i++)
  {
    echo $i.' : '. $legumes[ $i ] ,'<br/>';  
  }

//Ci-dessous pour afficher si oui ou non, qq chose se trouve dans un tableau

$onCherche = 'Azebois';
$dans = 'adresse';


if (in_array($onCherche, $$dans))
      {
        echo $onCherche . ' existe dans le tableau '. $dans;
      }
else  { 
        echo $onCherche . ' n\'existe pas dans le tableau '. $dans;
      };

//Afficher le contenu d'un tableau

//Lorsque l'on développe, il arrive très souvent que l'on veuille afficher le contenu d'un tableau dans le but de pouvoir débugguer un programme. Pour cela, PHP introduit la fonction print_r() qui assure cette fonction. Afin de respecter l'indentation à l'affichage, nous préfixons le résultat de cette fonction par les balises <pre> et </pre>. Le code qui suit affiche le contenu de notre tableau associatif $identite.

//count() et sizeof() retournent toutes les deux la taille du tableau passé en paramètre.
//sort() trie les éléments d'un tableau du plus petit au plus grand.
//rsort() trie les éléments d'un tableau du plus grand au plus petit.
//in_array() permet de vérifier qu'une valeur est présente dans un tableau.
//array_rand() extrait une ou plusieurs valeurs du tableau au hasard.
//current() retourne la valeur de l'élément courant du tableau (où se trouve le pointeur)



//TodoDo https://openclassrooms.com/courses/concevez-votre-site-web-avec-php-et-mysql/fonctionnement-d-un-site-ecrit-en-php
//https://openclaswww


echo str_repeat( '<br>', 28 ); // 28
