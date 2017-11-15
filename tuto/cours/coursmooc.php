<h3>
  <div class='titreCoursDo actionManShaded'>
    <a href="https://openclassrooms.com/courses/concevez-votre-site-web-avec-php-et-mysql" target="_blank" title="Lien direct su tuto d'OOC">
   Pages Test
  </a>
  </div>
</h3>
<p>
  Cette page contient du code HTML avec des balises PHP.<br />
  <?php/* Insérer du code PHP ici */ ?> Voici quelques petits tests :
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


$age = 8;

if ($age <= 12)
{
    echo "Salut gamin ! <hr>";
}


$age = 12;
 
if ($age <= 12) // SI l'âge est inférieur ou égal à 12
{
    echo "Salut gamin ! Bienvenue sur mon site !<br />";
    $autorisation_entrer = "Oui";
}
else // SINON
{
    echo "Ceci est un site pour enfants, vous êtes trop vieux pour pouvoir  entrer. Au revoir !<br />";
    $autorisation_entrer = "Non";
}
 
//$autorisation_entrer = "oki";

echo "Avez-vous l'autorisation d'entrer ? La réponse est : $autorisation_entrer<br><br>";


if ($autorisation_entrer == "Oui") // SI on a l'autorisation d'entrer
{
  echo 'C\'est oui !';
    // instructions à exécuter quand on est autorisé à entrer
}
elseif ($autorisation_entrer == "Non") // SINON SI on n'a pas l'autorisation d'entrer
{
  echo 'C\'est non !';
    // instructions à exécuter quand on n'est pas autorisé à entrer
}
else // SINON (la variable ne contient ni Oui ni Non, on ne peut pas agir)
{
    echo "Euh, je ne connais pas ton âge, tu peux me le rappeler s'il te plaît ?";
}

echo '<hr>';



// Exemple d'un questionnaire où l'on peut répondre:
echo '<h2>Aimez-vous les épinards ? Ceci est déjà un exercice de conditions</h2>';
// Oui / Non / Sans avis


$reponse = 'oui'; // Commenter/décommenter cette réponse
$reponse = 'non'; // Commenter/décommenter cette réponse
$reponse = 'je sais pas'; // Commenter/décommenter cette réponse
$reponse = 'bof'; // Commenter/décommenter cette réponse


echo '- ' . $reponse . '<br>';

if ($reponse == 'oui')
{
    echo "- G deviné... Vous êtes Popeye :<br />";
}
elseif ($reponse == 'non') // SINON SI
{
    echo '- Ah... Vous, vous êtes sans doute Olive, alors...?<br>';
}
elseif ($reponse == 'je sais pas') // SINON SI 
{ 
  echo '- Comme cela vous ne savez pas ?!?<br>';
}

else { // SINON
    echo '- Ah ?!?<br>';
}


echo '<hr>';
//On met un chiffre dans une variable
$nombre = 18; //Changer ce chiffre 

//Sinon votre chiffre est zéro
if( $nombre==0 ) {
  echo 'Votre nombre est zéro';
}

//Si ce chiffre est pair on dit votre chiffre 4 est pair
elseif ( $nombre % 2 )
{
  echo 'Votre nombre ('. $nombre .') est impair';
}

//Si ce chiffre est impair on dit votre chiffre 7 est impair
else
{
  echo 'Votre nombre ('. $nombre .') est pair';
}
echo '<hr>';

$premier='a';
// Lire que ce qu'il y a entre prarenthèses avec un ? à la fin de la phrase
if (  $premier == 'a'  )
   echo 'Oui';
else echo 'Non';

echo'<hr>';
echo'<h1>Les conditions</h1>';


//Ci-dessous, si l'âge est inférieur à 12

$age = 8;

if ($age <= 12)
{
    echo "Salut gamin !";
}

$age = 12;

echo '<hr>';

//Ci-dessous et ci-dessus pour que le résultat apparaisse il faut que la condition soit vraie.

if ($age == 12)
{
    echo "Salut fillette !";
}

echo '<hr>';

//Ci-dessous la condition n'est pas vraie donc cela me renvoie le deuxième résultat.

$age = 13;

if ($age <= 12)
{
    echo "Salut gamin !";
}

else

{
  echo 'Bonjour cher adulte !';
}

echo '<hr>';
//---------------
$age = 8;

if ($age <= 12)
{
    echo "Salut gamin !";
}

elseif ($age == 14)
  
{
  echo 'Tu as 14 ans !';
}

else
  
{
  echo 'Bonjour cher monsieur !';
}


echo '<hr>';

$age = 50;

if ($age <= 12)
{
    echo "Salut gamin !";
}

elseif ($age == 14)
  
{
  echo 'Tu as 14 ans !';
}

else
  
{
  echo 'Bonjour Monsieur !';
}

echo '<hr>';

echo'<h1>Les conditions booléennes</h1>';

$autorisation_entrer = true;

if ($autorisation_entrer == true)
{
    echo "Bienvenue petit nouveau. :o)";
}
elseif ($autorisation_entrer == false)
{
    echo "T'as pas le droit d'entrer !";
}

echo '<hr>';

$autorisation_entrer = true;

if ($autorisation_entrer)
{
    echo "Bienvenue petit nouveau. :o)";
}
else
{
    echo "T'as pas le droit d'entrer !";
}

echo '<hr>';

$autorisation_entrer = true;

if (! $autorisation_entrer)
{
echo "T'as pas le droit d'entrer !";
}

$age = 8;
$langue = "anglais";


if ($age <= 12 AND $langue == "français")
{
    echo "Bienvenue sur mon site !";
}
elseif ($age <= 12 AND $langue == "anglais")
{
    echo "Welcome to my website!";
}

echo '<hr>';

$pays = "France";

if ($pays == "France" OR $pays == "Belgique")
{
    echo "Bienvenue sur notre site !";
}
else
{
    echo "Désolés, notre service n'est pas encore disponible dans votre pays !";
}

echo '<hr>';

$variable = 23;

if ($variable == 23)
{
    echo '<strong>Bravo !</strong> Vous avez trouvé le nombre mystère !';
}

echo '<hr>';


echo str_repeat('<br>', 20);
