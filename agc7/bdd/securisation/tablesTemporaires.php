<?php
namespace GC7;
?>
<div class="jumbotron">
  <h3 class="meaDo pb10">Tables temporaires</h3>

  <p class="lead">Valables que pour la cession en cours</p>

  <div class="lead">
    <ul>
      <li>Ne peuvent pas utiliser de clés étrangères</li>
      <li>Ne peuvent être référencée 2 fois dans la même session</li>
    </ul>
    <p>Elles ne concluent pas une transaction, contrairement aux tables normales (Mais <code>CREATE
        TEMPORY t_table</code>ne sera pas annulé par l'éventuel<code>ROLLBACK</code>).</p>
  </div>

  <p class="lead"><code>DROP TEMPORARY t_table</code></p>
</div>

<div class="maingc7">
  <?php

  $pdo = pdo();
  $sql = "CREATE TEMPORARY TABLE TMP_Animal (
    id INT UNSIGNED PRIMARY KEY,
    nom VARCHAR(30),
    espece_id INT UNSIGNED,
    sexe CHAR(1)
);";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "DESCRIBE TMP_Animal;";
  $req( $sql, $pdo );

  $sql = "-- Pas besoin de spécifier qu'elle est temporaire
ALTER TABLE TMP_Animal
ADD COLUMN date_naissance DATETIME;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "DESCRIBE TMP_Animal;";
  $req( $sql, $pdo );
  ?>

  
  <h3>Rôles principaux</h3>

  <p>Copie conforme de la structure :</p>
  <?php
  $sql = "CREATE TABLE IF NOT EXISTS Espece_copy
LIKE Espece;";
  affLign( $sql );
  $pdo->query( $sql );
  ?>
  <p>Copie des données que l'on veut</p>
  <?php
  $sql = "INSERT INTO Espece_copy
SELECT * FROM Espece
WHERE prix < 100;";
  affLign( $sql );


  $sql = "SELECT id, nom_courant, prix
FROM Espece_copy;";
  $req( $sql, $pdo );


  echo str_repeat( '<br>', 28 ); // 28
  ?>

</div>
