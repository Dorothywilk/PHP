<?php
namespace GC7;
?>
<div class="jumbotron">
  <h3 class="meaDo pb10">Vues</h3>

  <p class="lead">Requêtes de selection nommée.</p>

</div>

<div class="maingc7">

  <?php

  $pdo = pdo();
  $sql = "-- DROP VIEW IF EXISTS V_Animal_details;
-- Inutile avec OR REPLACE

  CREATE OR REPLACE VIEW V_Animal_details AS
  SELECT Animal.id, Animal.sexe, Animal.date_naissance,
         Animal.nom, Animal.commentaires, Animal.espece_id,
         Animal.race_id, Animal.mere_id, Animal.pere_id,
         Animal.disponible, Espece.nom_courant AS espece_nom,
         Race.nom AS race_nom
         FROM Animal
             INNER JOIN Espece ON Animal.espece_id = Espece.id
             LEFT JOIN Race ON Animal.race_id = Race.id;";

  affLign( $sql );
//  $pdo->query( $sql );

  $sql='SELECT nom, espece_nom, race_nom FROM V_Animal_details limit 5';
  $req( $sql );


  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>


