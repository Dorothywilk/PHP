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
  [ 0, 1, 4, 'Doro' ],
  [ 1, 2, 3, 'Jade' ]
];
echo '<table  border="1" style ="padding:10px;"><tr><td border="1"><pre>';
print_r( $f );
echo '</pre></td>';

// 1) Dessiner sur une feuille PAINT ce réseau
// (En indiquant les bg et bd) => fam1.jpg
// (Poser ces fighiers images bien-sûr dans le dossier ri)
// 2) Faire ton calcul pour le noeud (Doro)

// Rom1 entre sous Doro
// 3) Dessiner sur une feuille PAINT ce nouveau réseau fam2.jpg
// (En indiquant les bg et bd autre couleur,
// en gardant les valeurs précédentes)) => fam2.jpg
// 4) Faire ton calcul pour le noeud (Doro)

// 5) Dans le fichier insert.php (à créer, écrire
// en lignes de commentaires) les changements observés
//
// S'aider du fichier :
// C:\laragon\www\do\agc7\arbre\sqlpro\bases_representation_intervallaire.sql
// En particulier, les lignes 275 à 287


// 6) Étudier functions() avec moi (10-15 minutes)

// 7)Écrire code php de la fonction qui ajoute Rom1
// Cette function accepte un seul autre paramètre: le parent
// Donc, sera appelée par:

// Code qui sera activé alors :
// include 'insert.php';
// insert('Rom1', 1); // 1 est la bg de Doro)

echo '<td><pre>';
print_r( $f );
echo '</pre></td></tr></table>';
//
// 8) Dessiner fam3.jpg et congitmer
// qu'on a bien ce qu'on voit dans le tableau

// 9) Dès que c'est le cas, utilliser bulma
// pour améliorer la présentation de ce tableau

//10) Même tableau, mais avec foreach
// (Prendre exemple sur le .PDF vu ensemble)
