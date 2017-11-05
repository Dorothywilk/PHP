<div class='titreCoursDo actionManShaded'>
  <a href="https://apprendre-php.com/tutoriels/tutoriel-7-les-tableaux-ou-arrays.html" target="_blank" title="Lien direct su tuto d'Emacs">Les Array()</a></div>
<?php

$valeurs=range(1,49);
           
$valeurs = array_flip($valeurs);
echo'<pre>';
for ($i=1; $i<3; $i++){
    print_r( array_rand($valeurs,6));
}
echo'</pre>';
























//array_push ($couleurs, 555); // ajoute un item à la fin du tableau

//array_unshift ($couleurs, 555); // ajoute un item au début du tableau


// array_shift($couleurs); // supprime du tableau sa première valeur

// array_pop($couleurs); // supprime du tableau sa dernière valeur

//$couleurs = array_unique($couleurs); // Ôte les doubles







echo '<hr>';

foreach ($valeurs as $k => $c) {
//    echo $k. ' => '.$c.'<br>';
}
