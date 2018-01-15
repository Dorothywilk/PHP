<?php
include 'fonctionsRi.php';
/**
 * Created by C7.
 * User: Li
 * Date: 20/11/2017
 * Time: 20:08
 */

// Dans un tableau, stocker la famille
// [id][profondeur, bg, bd, nom] // NB: Les id comencent par 0
$f = [
  [ 'bg' => 1, 'bd' => 4, 'prof' => 0, 'nom' => 'Doro' ],
  [ 'bg' => 2, 'bd' => 3, 'prof' => 1, 'nom' => 'Jade' ]
];
// [ 'prof' => 2, 'bg' => 3, 'bd' => 4, 'nom' => 'Jeny' ]
// [ 'prof' => 1, 'bg' => 6, 'bd' => 7, 'nom' => 'Rom1' ]
// [ 'prof' => 1, 'bg' => 8, 'bd' => 9, 'nom' => 'mimi' ]


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
$f = insert( 'Romain', 1, $f ); // 1 est la BG de Doro)
$f = insert( 'Mimi', 1, $f ); // 1 est la BG de Doro)


$f = insert( 'Jeny', 2, $f ); // 2 est la BG de Jade)

// echo 'Parrain de Jeny : ';
// echo '<hr>';


getUpline( 'jeNY', $f );


// Ajout d'un cops à Rom1
$f = insert( 'Nico', 6, $f );
$f = insert( 'Félicien', 7, $f );
$f = insert( 'Quentin', 6, $f );
$f = insert( 'Pina', 1, $f );


?>

  <table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">
    <th style="text-align:center"> Avant</th>
    <th style="text-align:center"> Après</th>
    <tr>
      <td>
        <?php
        affGroupe( $f );
        ?>
      </td>
      <td>
        <?php

        $f = insert( 'Mère de Nico', 7, $f );
        $f = insert( 'Thierry', 8, $f );
        $f = insert( 'Christophe', 9, $f );
        $f = insert( 'Christian', 8, $f );

        affGroupe( $f );

        ?>
      </td>
    </tr>
  </table>
  <hr>

<?php

$gr = getGroupe( 1, $f );

//sort( $f );
////echo '  <table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">';
//foreach ( $f as $m ) {
//  echo '$gr[] = new Xu( \''.$m[ 'nom' ] . '\', ' . $m[ 'bg' ] . ', ' . $m[ 'bd' ] . ', ' . $m[ 'prof' ] .
//    ');<br>';
//}
//echo '</td></tr></table>';

//echo 'Groupe de';
//affGroupe( $gr );
//
//echo '<pre>';
//var_dump( $gr );
//echo '</pre>';

// affVd($gr);

//echo str_repeat( '<br>', 25 );

//
// x 8) Dessiner fam3.jpg et congitmer
// x qu'on a bien ce qu'on voit dans le tableau

//ToDoDo 9) Dès que c'est le cas, utilliser bulma
// pour améliorer la présentation de ce tableau

// x 10) Même tableau, mais avec foreach
// x (Prendre exemple sur le slide 25 du .PDF vu ensemble)
// x 11)Mettre dans l'ordrede 'lecture du ver de terre'
//
// Suppr demembres
//
