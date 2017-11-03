<?php

namespace GC7;

?>
<div class="jumbotron">

  <h3 class="meaDo pb10">Requêtes préparées</h3>

  <ul class="lead mt10">
    <li>Les variables utilisateurs stockent des données, propres uniquement à la session dans
      laquelle elles auront été créées.
    </li>
    <li>...</li>
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
  <br>
</div>

