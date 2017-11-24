<?php namespace GC7; ?>
<div class="jumbotron">

  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/gestion-des-utilisateurs-4"
      target="_blank">Administration</a></h1>

  <p class="lead">Utilisateurs</p>

</div>


<div class="maingc7">

  <?php

  $pdo = pdo( 'ocr2' );

  //  affLign( $sql );
  //  $pdo->query( $sql );

  $sql = "SHOW columns
FROM adoption LIKE '%date%'";
  $req( $sql, $pdo );


  $sql = "SHOW CHARACTER SET
WHERE Description LIKE '%arab%';";
  $req( $sql, $pdo );


  $sql = "SHOW columns from Espece";
  $req( $sql, $pdo );


  $sql = "DESCRIBE Espece";
  $req( $sql, $pdo );


  $sql = "SHOW CREATE TABLE Espece;
-- NB: l'option \G en fin de commande dans mySQL
-- génèrera un résultat multiligne";
  $req( $sql, $pdo );


  $sql = "SHOW triggers;
-- NB: l'option \G en fin de commande dans mySQL
-- génèrera un résultat multiligne";
  $req( $sql, $pdo );


  $sql = "SELECT TRIGGER_SCHEMA, trigger_name, ACTION_STATEMENT
FROM information_schema.TRIGGERS
WHERE TRIGGER_SCHEMA='ocr' AND trigger_name like '%adoption';
-- Liste des triggers concernant la table Adoption
-- Rappel option \G pour affichage lisible dans console MySQL";
  $req( $sql, $pdo );


  $sql = "SELECT CONSTRAINT_SCHEMA, CONSTRAINT_NAME,
TABLE_NAME, CONSTRAINT_TYPE
FROM information_schema.TABLE_CONSTRAINTS
WHERE CONSTRAINT_SCHEMA = 'ocr' AND TABLE_NAME = 'Animal';";
  $req( $sql, $pdo );


  $sql = "SELECT ROUTINE_NAME, ROUTINE_SCHEMA,
ROUTINE_TYPE, ROUTINE_DEFINITION, DEFINER, SECURITY_TYPE
FROM information_schema.ROUTINES
WHERE ROUTINE_NAME = 'maj_vm_revenus';";
  $req( $sql, $pdo );


  $sql = "EXPLAIN SELECT Animal.nom, Espece.nom_courant AS espece,
  Race.nom AS race
FROM Animal
INNER JOIN Espece ON Animal.espece_id = Espece.id
LEFT JOIN Race ON Animal.race_id = Race.id
WHERE Animal.id = 37;";
  $req( $sql, $pdo );

  ?>

  <h3 class="jumbotron pt10">Exemple de requête optimisable</h3>

  <p>Suppression d'un index s'il existe</p>
  <?php


  $sql = "SELECT if(
exists(
  SELECT DISTINCT INDEX_NAME
  FROM information_schema.statistics
  WHERE TABLE_SCHEMA = 'ocr2'
    AND TABLE_NAME = 'Adoption'
    AND INDEX_NAME LIKE 'date_reservation'
  ),
  'drop index date_reservation on Adoption',
  'select
    ''Pas de date_reservation comme index à supprimer'' Résultat;'
)
INTO @a;
-- Sortie si pas d'index à supprimer uniquement en MySQL
PREPARE stmt1 FROM @a;
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1;";
  affLign( $sql );
  $pdo->query( $sql );


  $sqlTest = "EXPLAIN SELECT Animal.nom,
Adoption.prix, Adoption.date_reservation
FROM Animal
  INNER JOIN Adoption ON Adoption.animal_id = Animal.id
WHERE date_reservation >= '2012-05-01'";
  $req( $sqlTest, $pdo );


  // ALTER TABLE table ADD INDEX index_name
  //  $sql = "ALTER TABLE Adoption ADD INDEX date_reservation( date_reservation );";

  echo '<p>Ajout d\'un index s\'il n\'existe pas déjà</p>';
  $sql = "SELECT if (
exists(
  SELECT DISTINCT INDEX_NAME
        FROM information_schema . statistics
        WHERE table_schema = 'ocr2'
AND table_name = 'Adoption' AND INDEX_NAME LIKE 'date_reservation'
    )
    , 'select ''index date_reservation exists'' _______;'
    , 'create index date_reservation on Adoption(date_reservation)')
INTO @a;
-- ______  en guise d'alias
PREPARE stmt1 FROM @a;
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1;";
  affLign( $sql );
  $pdo->query( $sql );
  $req( $sqlTest, $pdo );

  ?>
  <p>=> Observer le nombre de rangs</p>

  <div class="jumbotron pt10">
    <h3>Exemple de comparaison du plan d'execution d'une requête</h3>

    <p><i>(La colonne somme possède un index)</i></p>
  </div>
  <?php
  $sql = "SELECT if (
exists(
  SELECT DISTINCT INDEX_NAME
        FROM information_schema . statistics
        WHERE table_schema = 'ocr2'
AND table_name = 'VM_Revenus_annee_espece' AND INDEX_NAME LIKE 'somme'
    )
    , 'select ''index somme exists'' _______;'
    , 'create index somme on VM_Revenus_annee_espece(VM_Revenus_annee_espece)')
INTO @a;
-- ______  en guise d'alias
PREPARE stmt1 FROM @a;
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1;";
  affLign( $sql );
  $pdo->query( $sql );
  $req( $sqlTest, $pdo );

  $sql = "EXPLAIN SELECT *
FROM VM_Revenus_annee_espece
WHERE somme / 2 > 1000;";
  $req( $sql, $pdo );

  $sql = "EXPLAIN SELECT *
FROM VM_Revenus_annee_espece
WHERE somme > 2000;";
  $req( $sql, $pdo );


  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
