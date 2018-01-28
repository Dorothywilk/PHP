<h3>
  <div class='titreCoursDo actionManShaded'>
    <a href="https://openclassrooms.com/courses/concevez-votre-site-web-avec-php-et-mysql" target="_blank" title="Lien direct su tuto d'OOC">
   Pages Test
  </a>
  </div>
</h3>

<?php
const LOCOMOTIVE = 8;
const WAGON = 4;

$n=2; // Nbre de wagons

// r = 8 + 4 x n
for ($n=1; $n<=5; $n++) {
  $r = LOCOMOTIVE + WAGON * $n; 
  echo 'Pour '.$n.' wagons, il y a un total de '.$r.' roues.<br>';
}
echo '<hr>';

$r = 24; // Nbre de roues;
// n = (r - 8) / 4;
$n = ($r - LOCOMOTIVE) / WAGON;

  echo 'Pour '.$r.' roues, il y a un total de '.$n.' wagons.<br>';


echo str_repeat('<br>', 20);
?>
  <hr> Cette page contient du code HTML avec des balises PHP.<br />
  <?php /* Insérer du code PHP ici */ ?> Voici quelques petits tests :
    </p>

    <hr>

    <ul>
      <li style="color: blue;">Texte en bleu</li>
      <li style="color: red;">Texte en rouge</li>
      <li style="color: green;">Texte en vert</li>
    </ul>
    <hr>


    <h1>Affichage de texte avec PHP</h1>


    <hr>

    <p>
      Cette ligne a été écrite entièrement en HTML.<br />
      <?php echo "Celle-ci a été écrite entièrement en PHP."; ?>
    </p>

    <hr>
    <h1>Ma page web</h1>
    <p>Aujourd'hui nous sommes le
      <?php
//  date_default_timezone_set('UTC');
  echo date('d/m/Y à H:i:s'),
  '<br>',
  date('d/m/Y à H:i:s', mktime(13,05,00,7,7,1990));
  ?>.</p>
    <hr>
    <h1>Les variables</h1>

    <?php

        /* Encore du PHP
        Toujours du PHP */
echo 'Ceci est du texte PHP <br />';
echo 'Ceci est du <strong>texte</strong> PHP <hr>';

$age_du_visiteur = 17;
echo 'Le visiteur a ';
echo $age_du_visiteur;
echo ' ans.<br>';


$age_du_visiteur = 17; 
echo 'Le visiteur a <strong class="fdRougeDo">' . $age_du_visiteur . '</strong> ans. <hr>';


$nombre = 2 + 4; // $nombre prend la valeur 6
echo 'L\'addition sera ';
echo $nombre;
$nombre = 5 - 1; // $nombre prend la valeur 4
echo '<br>La soustraction sera ';
echo $nombre;
$nombre = 3 * 5; // $nombre prend la valeur 15
echo '<br>La multiplication sera ';
echo $nombre;
$nombre = 10 / 2; // $nombre prend la valeur 5
echo '<br>La division sera ';
echo $nombre;

// Allez on rajoute un peu de difficulté
$nombre = 3 * 5 + 1; // $nombre prend la valeur 16
echo '<br>La multiplication sera ';
echo $nombre;

$nombre = (1 + 2) * 2; // $nombre prend la valeur 6
echo '<br>La multiplication sera ';
echo $nombre;

echo '<hr>';

$nombre = 2 + 4; // $nombre prend la valeur 6
echo 'L\'addition sera ' .  $nombre ;

$nombre = 5 - 1; // $nombre prend la valeur 4
echo '<br>La soustraction sera ' .  $nombre;

$nombre = 3 * 5; // $nombre prend la valeur 15
echo '<br>La multiplication sera ' .  $nombre;

$nombre = 10 / 2; // $nombre prend la valeur 5
echo '<br>La division sera  ' .  $nombre;


// Allez on rajoute un peu de difficulté
$nombre = 3 * 5 + 1; // $nombre prend la valeur 16
echo '<br>La multiplication sera ';
echo $nombre;

$nombre = (1 + 2) * 2; // $nombre prend la valeur 6
echo '<br>La multiplication sera ';
echo $nombre . '<hr>';


$nombre = 10;
$resultat = ($nombre + 5) * $nombre; // $resultat prend la valeur 150

echo $resultat . '<hr>';

$nombre = 10 % 5;
echo $nombre;
// $nombre prend la valeur 0 car la division tombe juste
$nombre = 17897 % 3; // $nombre prend la valeur 1 car il reste 1
echo $nombre . '<hr>';

echo str_repeat('<br>', 20);
