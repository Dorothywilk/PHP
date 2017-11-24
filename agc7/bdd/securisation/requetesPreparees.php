<?php

namespace GC7;

?>
<div class="jumbotron">

  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/requetes-preparees"
      target="_blank">Requêtes préparées</a></h1>

  <p class="lead">Modèle de requête nommée qui empêchent les injections SQL, et améliorent la
    performance si une même requête au moins est exécutée plusieurs fois par la même session.</p>
  <ul class="lead mt10">
    <li>Les variables utilisateurs stockent des données, propres uniquement à la session dans
      laquelle elles auront été créées.
    </li>
    <li>Comme les variables utilisateurs, une requête préparée n'existe que pour la session qui la
      crée.
    </li>
  </ul>

  <p class="lead">Syntaxe:
    <code>SET nom_req_preparee</code><br>
    <code>PREPARE '</code>(sql)<code>'</code>
    <br>Puis<code>EXECUTE</code>...</p>
</div>

<div class="maingc7">

  <h3>Variables Utilisateur</h3>

  <?php
  $bdd = pdo();

  $sql = "SET @age = 24;
SET @salut = 'Hello World ! ' , @poids = 7.8;";
  affLign( $sql );
  $bdd->query( $sql );

  $sql = "SELECT @age, @poids, @salut;";
  $req( $sql, $bdd );
  ?>


  <h3>Opérateur 'assignation</h3>
  <?php

  $sql = "SELECT @age := 32, @poids := 48.15, @perroquet := 4;";
  $pdo = $req( $sql );

  ?>


  <h3>Exemples d'utilisation</h3>

  <?php

  $sql = "SELECT id, sexe, nom, commentaires, espece_id
FROM Animal
WHERE espece_id = @perroquet;
-- On sélectionne les perroquets";
  $req( $sql, $pdo );


  $pdo = pdo();
  $sql = "-- On crée une variable contenant le taux de conversion
-- des euros en dollars
SET @conversionDollar = 1.31564;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = 'select @conversionDollar;';
  $req( $sql, $pdo );

  $sql = "SELECT nom, prix AS prix_en_euros,
-- On sélectionne le prix des races, en euros et en dollars .
ROUND( prix * @conversionDollar, 2 ) AS prix_en_dollars
-- En arrondissant à deux décimales
FROM Race;";
  $req( $sql, $pdo );

  ?>

  <h3>Requêtes préparées</h3>

  <?php

  $pdo = pdo('ocr2');

  $sql = 'SET @uid := 1, @aid=8';
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "-- Exemple de requête préparée:
PREPARE select_adoption
FROM 'SELECT * FROM Adoption
WHERE client_id = ? AND animal_id = ?';";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "EXECUTE select_adoption USING @uid, @aid";
  $req( $sql, $pdo );

  // ###################################################################

  $pdo = pdo();

  $sql = "-- Exemple utilisant une variable utilisateur
-- pour la requête elle-même
SET @req = 'SELECT * FROM Race LIMIT 3'";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "PREPARE select_race
FROM @req;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "EXECUTE select_race";
  $req( $sql, $pdo );
  ?>

  <h3>Exemple plus complet</h3>

  <?php

  $pdo = pdo();
  $sql = "SET @colonne = 'nom';";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SET @req_animal =
  CONCAT( 'SELECT id,', @colonne, '
           FROM Animal WHERE id = ?' );";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "PREPARE select_col_animal
FROM @req_animal;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SET @id = 2;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "EXECUTE select_col_animal USING @id;";
  $req( $sql, $pdo );

  $sql = "-- Suppression de la requête préparée

DEALLOCATE PREPARE select_col_animal";
  affLign( $sql );
  $pdo->query( $sql );

  ?>
  <hr>
  <h3>Usage et utilité</h3>

  <?php

  try {
    $id = 1;

    // On se connecte
//  $bdd = new PDO('mysql:host=localhost;dbname=elevage', 'sdz', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION ));
    $bdd = pdo();

    // On prépare la requête
    $requete = $bdd->prepare( "SELECT id, nom
FROM animal WHERE id = :id" );

    // On lie la variable $id définie au-dessus au paramètre :id de la requête préparée
    $requete->bindvalue( ':id', $id, \PDO::PARAM_STR );

    //On exécute la requête
    $requete->execute();

    // On récupère le résultat
    if ( $requete->fetch() ) {
      echo 'L\'animal d\'id ' . $id . ' existe !';
    }
  } catch ( Exception $e ) {
    die( 'Erreur : ' . $e->getMessage() );
  }

  echo str_repeat( '<br>', 3 ); // 30
  ?>
</div>

