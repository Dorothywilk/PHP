<div class="gino">Texte avant le formulaire éte 123456789</div>

<div class="learning">Texte avant le formulaire Été</div>

<form method="POST" action="./tuto/cours/uuutraitement2.php">

  <fieldset>

    <!-- Titre du fieldset -->
    <legend>&nbsp; Vos coordonnées &nbsp;</legend>

    <label for="prenom">Quel est votre prénom ?<br></label>
    <input type="text" name="prenom" id="prenom"/><br>

    <input type="submit" value="Envoyer" id="submit"/><br>

  </fieldset>

</form>

<hr>

<?php

$a=5;
$b=7;

//$resultat = ($a+$b) * ($a+$b);

$resultat = pow ( $a+$b , 2);

$resultat2 = pow ( $a , 2) + 2*$a*$b + pow ( $b , 2);

echo $resultat. ' '. $resultat2;



