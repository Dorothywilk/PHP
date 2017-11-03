<?php

namespace GC7;

?>
<div class="jumbotron">

  <h3 class="meaDo pb10">Procédures</h3>

  <p class="lead">...</p>
  <ul class="lead mt10">
    <li>...
    </li>
    <li>...
    </li>
  </ul>

</div>

<div class="maingc7">

  <h3>...</h3>

  <?php
  $bdd = pdo();

  $sql = "DELIMITER | -- On change le délimiteur
CREATE PROCEDURE afficher_races()
    -- toujours pas de paramètres, toujours des parenthèses
BEGIN
    SELECT id, nom, espece_id, prix
    FROM Race;
-- Cette fois, le ; ne nous embêtera pas
END|
-- Et on termine bien sûr la commande CREATE PROCEDURE par notre nouveau délimiteur";
  affLign( $sql );
//  $bdd->query( $sql );

  $sql = "afficher_races_requete";
//  $req( $sql, $bdd );


  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>

