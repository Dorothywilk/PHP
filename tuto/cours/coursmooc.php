<h2>Page de test</h2>

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
echo 'Le visiteur a <strong class="fdRougeDo">' . $age_du_visiteur . '</strong> ans.';

  ?>
