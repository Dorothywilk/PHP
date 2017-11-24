<?php
namespace GC7;
?>
<div class="jumbotron">
  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/triggers"
      target="_blank"><a
        href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/triggers"
        target="_blank">Triggers (Déclencheurs)</a></h1>

  <p class="lead">Permettent de déclencher des actions qd une table est modifiée, et celles-ci,
    avant ou après le déclencheur.</p>

  <p class="lead">Ne peuvent contenir de transactions, ni de requêtes préparées. Ne peuvent non plus
    utiliser de procédures qui renvoie des informations</p>

  <p class="lead"><code>CREATE TRIGGER nom_trigger moment_trigger evenement_trigger<br>
      ON nom_table FOR EACH ROW<br>
      corps_trigger;</code></p>
  <h3 class="lead">NB: Installer .ocr/ocr2.sql</h3>
</div>

<div class="maingc7">
  <h3 class="lead">Exemple : </h3>

  <?php

  $pdo = pdo();
  $sql = "

-- Création de la table Erreur
CREATE TABLE IF NOT EXISTS Erreur (
    id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    erreur VARCHAR(255) UNIQUE);

  DROP TRIGGER IF EXISTS before_insert_animal;
-- Trigger déclenché par l'insertion
-- DELIMITER |
CREATE TRIGGER before_insert_animal BEFORE INSERT
ON Animal FOR EACH ROW
BEGIN
    IF NEW.sexe IS NOT NULL   -- le sexe n'est ni NULL
    AND NEW.sexe != 'M'       -- ni 'M'
    AND NEW.sexe != 'F'       -- ni 'F'
    AND NEW.sexe != 'A'       -- ni 'A'
       THEN
  INSERT INTO Erreur (erreur) VALUES
 ('Erreur : Sexe doit valoir \'M\', \'F\', \'A\' ou NULL.');
    END IF;
-- END; |
END;

DROP TRIGGER IF EXISTS before_update_animal;
-- Trigger déclenché par la modification
CREATE TRIGGER before_update_animal BEFORE UPDATE
ON Animal FOR EACH ROW
BEGIN
    IF NEW.sexe IS NOT NULL   -- le sexe n'est ni NULL
    AND NEW.sexe != 'M'       -- ni 'M'âle
    AND NEW.sexe != 'F'       -- ni 'F'emelle
    AND NEW.sexe != 'A'       -- ni 'A'utre
      THEN
        SET NEW.sexe = NULL;
    END IF;
-- Instructions
-- END; |
END;";

  affLign( $sql );
  $pdo->query( $sql );

  $sql = "UPDATE Animal
SET sexe = 'M'  -- Sera remplacé / null sauf si A, M ou F
WHERE id = 20;  -- l'animal 20 est Balou, un mâle";
  affLign( $sql );
  $pdo->query( $sql );


  $sql = "SELECT id, sexe, date_naissance, nom
FROM Animal
WHERE id = 20;";
  $req( $sql, $pdo );


  $sql = "INSERT INTO Animal (nom, sexe, date_naissance, espece_id)
VALUES ('Babar', 'A', '2011-08-04 12:34', 3);";
  affLign( $sql );
  ?>
  <p>Cette requête n'est pas executée.</p>

  <hr>

  <h3>Champs d'applications:</h3>
  <ul>
    <li>Vérification des données</li>
    <li>Mise à jour d'autre données pendant une modification de données</li>
    <li>Historisation des données et archives</li>
  </ul>


  <?php
  //  $pdo->query( $sql );

  echo str_repeat( '<br>', 28 ); // 28
  ?>
</div>


