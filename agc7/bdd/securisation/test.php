<?php

namespace GC7;

?>
  <div class="jumbotron">

    <h3 class="meaDo pb10">Procédures</h3>

    <p class="lead">Ensemble d'instructions MySQl nommé.</p>
    <ul class="lead mt10">
      <li>Nécessite de redéfinir le délimiter (| ou //)
      </li>
      <li><code>DROP</code> pour supprimer une procédure stockée
      </li>
    </ul>

    <p class="lead"><code>CREATE PROCEDURE <i>nom_procedure</i> ([IN</code> | <code>OUT</code> |
      <code>INOUT <i>param</i> <i>TYPE</i>][, ...])</code>...</p>
  </div>


  <div class="maingc7">


  <?php

$pdo = pdo();

$sql = "DELIMITER | -- On change le délimiteur
CREATE PROCEDURE afficher_races()
    -- Pas de paramètres, toujours des parenthèses
BEGIN
    SELECT id, nom, espece_id, prix
    FROM Race;
-- Cette fois, le ; ne nous embêtera pas
END|
-- Et on termine bien sûr la commande CREATE PROCEDURE
-- par notre nouveau délimiteur
DELIMITER ;
-- On remet le délimiteur par défaut";
affLign( $sql );
//  $pdo->query( $sql );

$sql = "CALL afficher_races();";
$req( $sql, $pdo );

