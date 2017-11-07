<?php
namespace GC7;
?>
<div class="jumbotron">
  <h3 class="meaDo pb10">Vues</h3>

  <p class="lead">Requêtes de selection nommée.</p>

  <p class="lead">Attention: Restrictions :</p>
  <ul>
    <li>Pas de sous-requête dans le FROM</li>
    <li>Pas de variables</li>
    <li>Les tables mentionnées doivent exister, au moins lors de la création de la vue.</li>
  </ul>
  <p class="lead">Mais peut utiliser une autre vue, comme une requête.</p>
<>  <p class="lead">NB: La vue n'est générée qu'au moment de sa création... En cas de changement ultérieur de la table, la vue ne sera pas modifiée (Sauf si re-création avec <code>OR&nbsp;REPLACE</code> ou <code>DROP</code> / <code>CREATE</code>.</p>
</></div>

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

  $sql = 'SELECT nom, espece_nom, race_nom FROM V_Animal_details limit 5';
  $req( $sql );


  $sql = 'SHOW TABLES;';
  $req( $sql );


  $sql = 'DESCRIBE V_Animal_details;';
  $req( $sql );


  echo '<h3>Vue avec agrégation</h3>';
  $sql = "CREATE OR REPLACE VIEW V_Nombre_espece
AS SELECT Espece.id, nom_courant, COUNT(Animal.id) AS nb
FROM Espece
LEFT JOIN Animal ON Animal.espece_id = Espece.id
GROUP BY Espece.id;";

  affLign( $sql );
  $pdo->query( $sql );

  $sql = 'SELECT * FROM V_Nombre_espece';
  $req( $sql );


  echo '<h3>Vue sur une vue</h3>';
  $sql = "CREATE OR REPLACE VIEW V_Chien
AS SELECT id, sexe, date_naissance, nom, commentaires,
          espece_id, race_id, mere_id, pere_id, disponible
FROM Animal
WHERE espece_id = 1;";

  affLign( $sql );
  $pdo->query( $sql );

  $sql = "CREATE OR REPLACE VIEW V_Chien_race
AS SELECT id, sexe, date_naissance, nom, commentaires,
          espece_id, race_id, mere_id, pere_id, disponible
FROM V_Chien
WHERE race_id IS NOT NULL;";

  affLign( $sql );
  $pdo->query( $sql );

  $sql = 'SELECT * FROM V_Chien_race limit 3';
  $req( $sql );


  echo '<h3>Vue ...</h3>';
  $sql = "CREATE OR REPLACE VIEW V_Espece_dollars
AS SELECT id, nom_courant, nom_latin, description,
          ROUND(prix*1.31564, 2) AS prix_dollars
FROM Espece;";

  affLign( $sql );
  $pdo->query( $sql );

  $sql = 'SELECT * FROM V_Espece_dollars';
  $req( $sql );


  echo str_repeat( '<br>', 28 ); // 28
  ?>

</div>
