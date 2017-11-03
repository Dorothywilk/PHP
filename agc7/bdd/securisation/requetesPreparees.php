<?php

namespace GC7;

?>
<div class="jumbotron">

  <h3 class="meaDo pb10">Requêtes préparées</h3>

  <ul class="lead mt10">
    <li>Les variables utilisateurs stockent des données, propres uniquement à la session dans
      laquelle elles auront été créées.
    </li>
    <li>Comme les variables utilisateurs, une requête préparée n'existe que pour la session qui la
      crée.
    </li>
  </ul>

  <p class="lead">...</span></p>

</div>

<div class="maingc7">

  <h3>Variables Utilisateur</h3>

  <?php
  $sql = 'SET @age = 24;';
  $pdo = $req( $sql );

  $sql = "SET @salut = 'Hello World !' , @poids = 7.8;";
  $pdo = $req( $sql, $pdo );

  $sql = "SELECT @age, @poids, @salut;";
  $req( $sql, $pdo );

  ?>


  <h3>Opérateur 'assignation</h3>

  <?php

  $sql = "SELECT @age := 32, @poids := 48.15, @perroquet := 4;";
  $req( $sql, $pdo );


  ?>


  <h3>Exemple d'utilisation</h3>

  <?php

  $sql = "  SELECT id, sexe, nom, commentaires, espece_id
  FROM Animal
  WHERE espece_id = @perroquet;
  -- On sélectionne les perroquets
";
  $req( $sql, $pdo );

  $sql = "  SET @conversionDollar = 1.31564;
  -- On crée une variable contenant le taux de conversion
  -- des euros en dollars";
  $req( $sql, $pdo );

  $sql = "SELECT nom, prix AS prix_en_euros,
  -- On sélectionne le prix des races, en euros et en dollars.
  ROUND(prix * @conversionDollar, 2) AS prix_en_dollars
  -- En arrondissant à deux décimales
  FROM Race;";
  $req( $sql, $pdo );
  ?>

  <h3>Requête préparée</h3>

  <?php

  $sql = "-- exemple de requête préparée:
PREPARE select_adoption
FROM 'SELECT * FROM Adoption WHERE client_id = ? AND animal_id = ?';";
  $req( $sql, $pdo );


  $sql = "-- Excemple utilisant des variables utilisateur
SET @req = 'SELECT * FROM Race';
PREPARE select_race
FROM @req;";
  $req( $sql, $pdo );

  $sql = "SET @colonne = 'nom';";
  $req( $sql, $pdo );

  $sql = "SET @req_animal =
  CONCAT('SELECT ', @colonne, ' FROM Animal WHERE id = ?');
PREPARE select_col_animal
FROM @req_animal;";
  $req( $sql, $pdo );

  $sql = "EXECUTE nom_requete [USING @parametre1, @parametre2, ...];";
  //  $req( $sql, $pdo );

  ?>

  <h3>Usage et utilité</h3>


  <br>
</div>

