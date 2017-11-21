<?php
/**
 * Created by C7.
 * User: Li
 * Date: 20/11/2017
 * Time: 20:08
 */

// Dans un tableau, stocker la famille
// [id][profondeur, bg, bd, nom] // NB: Les id comencent par 0
$f = [
  [ 'prof' => 0, 'bg' => 1, 'bd' => 4, 'nom' => 'Doro' ],
  [ 'prof' => 1, 'bg' => 2, 'bd' => 3, 'nom' => 'Jade' ]
];
  // [ 'prof' => 1, 'bg' => 4, 'bd' => 5, 'nom' => 'Rom1' ]


// include 'tuto/cours/ri/functions.php';

// x 1) Dessiner sur une feuille PAINT ce réseau
// x (En indiquant les bg et bd) => fam1.jpg
// x (Poser ces fighiers images bien-sûr dans le dossier ri)
// x 2) Faire ton calcul pour le noeud (Doro)

// x Rom1 entre sous Doro
// x 3) Dessiner sur une feuille PAINT ce nouveau réseau fam2.jpg
// x (En indiquant les bg et bd autre couleur,
// x en gardant les valeurs précédentes)) => fam2.jpg
// x 4) Faire ton calcul pour le noeud (Doro)

// x 5) Dans le fichier insert.php (à créer, écrire
// x en lignes de commentaires) les changements observés
//
// x S'aider du fichier :
// x C:\laragon\www\do\agc7\arbre\sqlpro\bases_representation_intervallaire.sql
// x En particulier, les lignes 275 à 287


// x 6) Étudier functions() avec moi (10-15 minutes)

// x 7)Écrire code php de la fonction qui ajoute Rom1
// x Cette function accepte un seul autre paramètre: le parent
// x Donc, sera appelée par:

// x Code qui sera activé alors :
 include 'insert.php';
 $f = insert('Rom1', 0, $f); // 0 est l' id de Doro)
 $f = insert('Mimi', 0, $f); // 0 est l' id de Doro)



 $f = insert('Jeny', 1,  $f); // 1 est l'id de Jade)

echo 'Parrain de Jeny : ';

echo '<hr>';


getUpline('jeNy', $f);


/**
* Retourne la Upline d'un membre
*/
function getUpline($nom, $f){
  
// La upline d'un membre
foreach($f as $m){
  if ( strtolower($m['nom'])==strtolower($nom) ) {
    $bg = $m['bg'];
    $bd = $m['bd'];
  }
}
echo $bg.' '.$bd.'<hr>';

  foreach($f as $m){
      if ($m['bg']<=$bg and $m['bd']>$bd)
    echo $m['nom'].'<br>';
  }
}

echo '<table border="1" style ="padding:10px;"><tr><td>';


//sort($f);
foreach($f as $m){
  echo $m['nom'].'<br>' . $m['bg'].' - ' . $m['bd'].'<hr>';
}
echo '</td></tr></table>';

//
// x 8) Dessiner fam3.jpg et congitmer
// x qu'on a bien ce qu'on voit dans le tableau

// 9) Dès que c'est le cas, utilliser bulma
// pour améliorer la présentation de ce tableau

//10) Même tableau, mais avec foreach
// (Prendre exemple sur le slide 25 du .PDF vu ensemble)
