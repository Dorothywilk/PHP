<?php
namespace GC7;
?>
<div class="jumbotron">
  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/tables-temporaires"
      target="_blank">Tables temporaires</a></h1>

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

  $pdo = pdo('ocr2');

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
  //  $pdo->query( $sql );


  $sql = "SELECT id, nom_courant, prix
FROM Espece_copy;";
  $req( $sql, $pdo );
  ?>

  <p>Attention cependant aux clés étrangères, en cas d'<code>UPDATE</code>, qui ne sont pas
    reproduites dans la table temporaire...</p>


  <h3>Création à partir de données sélectionnées</h3>

  <?php

  $sql = "CREATE TEMPORARY TABLE Animal_copy
SELECT *
FROM Animal
WHERE espece_id = 5;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "DESCRIBE Animal";
  $req( $sql, $pdo );

  $sql = "DESCRIBE Animal_copy";
  $req( $sql, $pdo );

  ?>

  <h3>Avec redéfinition de TYPE et re-création d'index (Et copie des data)</h3>

  <?php

  $sql = "DROP TABLE Animal_copy;

CREATE TEMPORARY TABLE Animal_copy (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    sexe CHAR(1),
    date_naissance DATETIME,
    nom VARCHAR(100),
    commentaires TEXT,
    espece_id INT NOT NULL,
    race_id INT,
    mere_id INT,
    pere_id INT,
    disponible BOOLEAN DEFAULT TRUE,
    INDEX (nom(10))
) ENGINE=InnoDB
SELECT *
FROM Animal
WHERE espece_id = 5;

DESCRIBE Animal_copy;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "DESCRIBE Animal";
  $req( $sql, $pdo );

  ?>

  <h3>Utilité</h3>

  <p>Réyunir en une seule table les données qui nous seront utiles pour des traitements plus
    complexes</p>

  <P>Exemple : Faire une série de statistiques sur les adoptions de chiens</P>

  <?php

  $sql = "CREATE TEMPORARY TABLE TMP_Adoption_chien
SELECT Animal.id AS animal_id, Animal.nom AS animal_nom,
       Animal.date_naissance AS animal_naissance,
       Animal.sexe AS animal_sexe,
       Animal.commentaires AS animal_commentaires,

       Race.id AS race_id, Race.nom AS race_nom,
       Client.id AS client_id, Client.nom AS client_nom,
       Client.prenom AS client_prenom,
       Client.adresse AS client_adresse,
       Client.code_postal AS client_code_postal,
       Client.ville AS client_ville, Client.pays AS client_pays,
       Client.date_naissance AS client_naissance,

       Adoption.date_reservation AS adoption_reservation,
       Adoption.date_adoption AS adoption_adoption, Adoption.prix

FROM Animal
  LEFT JOIN Race ON Animal.race_id = Race.id
  INNER JOIN Adoption ON Animal.id = Adoption.animal_id
  INNER JOIN Client ON Client.id = Adoption.client_id
WHERE Animal.espece_id = 1;";
  affLign( $sql );
  //  $pdo->query( $sql );
  //
  //  $sql = "DESCRIBE Animal";


  ?>
  <p>Bien-sûr, appliquer poser un index sur cles hamps utilisés fréquement lors des requêtes <code>SELECT</code>
  </p>

  <p>Très utile aussi pour tester sur des tables temporaires copies des normales: Comme les tables
    temporaires qd elles ont le même noms que d'autres, sont choisies en priorité dans la session,
    lors de la mise en production, le nom des tables sera le même</p>

  <p>Peut servir aussi à transmettre d'une procédures stockées à une autre, plus qu'une seule donnée
    tel que le limite le paramètre <code>OUT</code></p>

  <h3>Exemple: Procédure qui donne la liste des clients non à jour de paiement</h3>

  <?php

  $sql = "-- DELIMITER |
DROP    PROCEDURE IF EXISTS table_adoption_non_payee;
CREATE  PROCEDURE table_adoption_non_payee()
BEGIN
    DROP TEMPORARY TABLE IF EXISTS Adoption_non_payee;

    CREATE TEMPORARY TABLE Adoption_non_payee
    SELECT Client.id AS client_id,
           Client.nom AS client_nom,
           Client.prenom AS client_prenom,
           Client.email AS client_email,
           Animal.nom AS animal_nom,
           Espece.nom_courant AS espece,
           Race.nom AS race,
           Adoption.date_reservation, Adoption.date_adoption,
           Adoption.prix
    FROM Adoption
      INNER JOIN Client ON Client.id = Adoption.client_id
      INNER JOIN Animal ON Animal.id = Adoption.animal_id
      INNER JOIN Espece ON Espece.id = Animal.espece_id
      LEFT JOIN Race ON Race.id = Animal.race_id
    WHERE Adoption.paye = FALSE;
END;
-- END |
-- DELIMITER ;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "CALL table_adoption_non_payee();";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT client_id, client_nom, client_prenom, animal_nom, prix
FROM Adoption_non_payee;";
  $req( $sql, $pdo );


  ?>
  <?php
  echo str_repeat( '<br>', 25 ); // 25
  ?>

</div>
