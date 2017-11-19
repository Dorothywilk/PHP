<?php

namespace GC7;

//ToDoLi: Msg: Améliorer ce code... Lien GHub...
?>
<div class="jumbotron">

  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/gestion-des-utilisateurs-4"
      target="_blank">Administration</a></h1>

  <p class="lead">Utilisateurs</p>

</div>


<div class="maingc7">

  <?php

  $pdo = pdo();

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

  <?php

  $sql = "DROP INDEX ind_date_reservation ON adoption;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "EXPLAIN SELECT Animal.nom,
Adoption.prix, Adoption.date_reservation
FROM Animal
  INNER JOIN Adoption ON Adoption.animal_id = Animal.id
WHERE date_reservation >= '2012-05-01'";
  $req( $sql, $pdo );


  $sql = "ALTER TABLE Adoption
ADD INDEX ind_date_reservation (date_reservation);";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "EXPLAIN SELECT Animal.nom,
Adoption.prix, Adoption.date_reservation
FROM Animal
  INNER JOIN Adoption ON Adoption.animal_id = Animal.id
WHERE date_reservation >= '2012-05-01'";
  $req( $sql, $pdo );

  
  echo str_repeat( '<br>', 25 ); // 28
  ?>
</div>
