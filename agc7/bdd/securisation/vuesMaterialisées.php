<?php
namespace GC7;
?>
<div class="jumbotron">
  <h3 class="meaDo pb10">Vues matérialisées</h3>

  <p class="lead">Vue (Requête <code>SELECT</code>) à laquelle on donne un nom, avec données
    stockées.</p>

  <p class="lead">À mettre à jour évidemment...</p>
  <ul>
    <li>Sur demande</li>
    <li>Automatiquement, à chaque changement dans l'une des tables référencée</li>
  </ul>
</div>

<div class="maingc7">
  <?php

  $pdo = pdo();
  $sql = "CREATE TABLE IF NOT EXISTS VM_Revenus_annee_espece
ENGINE = InnoDB
SELECT YEAR(date_reservation) AS annee, Espece.id AS espece_id,
       SUM(Adoption.prix) AS somme,
       COUNT(Adoption.animal_id) AS nb
FROM Adoption
  INNER JOIN Animal ON Animal.id = Adoption.animal_id
  INNER JOIN Espece ON Animal.espece_id = Espece.id
GROUP BY annee, Espece.id;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT * FROM VM_Revenus_annee_espece limit 7";
  $req( $sql );

  ?>
  <p class="load">Au passage, on peut alors faire aisément :</p>

  <?php
  $sql = "select coalesce(annee, 'Total:') as Année,
       count(*) as Nb,
       sum(somme) 'total:'
from vm_revenus_annee_espece
group by annee with rollup";
  $req( $sql );


  ?>
  Mise à jour avec une procédure (Sur demande)<br>
  La même requête que celle de l'instanciation.
  <?php

  $sql = "DROP PROCEDURE IF EXISTS maj_vm_revenus;
-- DELIMITER |
CREATE PROCEDURE maj_vm_revenus()
BEGIN
    TRUNCATE VM_Revenus_annee_espece;

    INSERT INTO VM_Revenus_annee_espece
    SELECT YEAR(date_reservation) AS annee,
           Espece.id AS espece_id, SUM(Adoption.prix) AS somme,
           COUNT(Adoption.animal_id) AS nb
    FROM Adoption
    INNER JOIN Animal ON Animal.id = Adoption.animal_id
    INNER JOIN Espece ON Animal.espece_id = Espece.id
    GROUP BY annee, Espece.id;
END;
-- END |
-- DELIMITER ;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "CALL maj_vm_revenus();";
  affLign( $sql );
  $pdo->query( $sql );
  //$req( $sql );


  ?>
  Mise à jour automatique<br>
  La même requête que celle de l'instanciation.
  <?php

  $sql = "DROP PROCEDURE IF EXISTS maj_vm_revenus;
-- DELIMITER |
CREATE PROCEDURE maj_vm_revenus()
BEGIN
    TRUNCATE VM_Revenus_annee_espece;

    INSERT INTO VM_Revenus_annee_espece
    SELECT YEAR(date_reservation) AS annee,
           Espece.id AS espece_id, SUM(Adoption.prix) AS somme,
           COUNT(Adoption.animal_id) AS nb
    FROM Adoption
    INNER JOIN Animal ON Animal.id = Adoption.animal_id
    INNER JOIN Espece ON Animal.espece_id = Espece.id
    GROUP BY annee, Espece.id;
END;
-- END |
-- DELIMITER ;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "CALL maj_vm_revenus();";
  affLign( $sql );
  $pdo->query( $sql );
  //$req( $sql );


  echo str_repeat( '<br>', 28 ); // 28
  ?>

</div>
