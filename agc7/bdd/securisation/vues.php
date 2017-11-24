<?php
namespace GC7;
?>
<div class="jumbotron">
  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/vues"
      target="_blank">Vues</a></h1>

  <p class="lead">Requêtes de selection nommée et stockée (Pas ses rédsultats).</p>

  <p class="lead">Les requête d'insertion, etc... sont réalisées sur les tables référencées par la
    vue.</p>

  <p class="lead">Attention: Restrictions :</p>
  <ul>
    <li>Pas de sous-requête dans le FROM</li>
    <li>Pas de variables</li>
    <li>Les tables mentionnées doivent exister, au moins lors de la création de la vue.</li>
  </ul>
  <p class="lead">Mais peut utiliser une autre vue, comme une requête.</p>

  <p class="lead">NB: La vue n'est générée qu'au moment de sa création... En cas de changement
    ultérieur de la table, la vue ne sera pas modifiée (Sauf si re-création avec <code>OR&nbsp;REPLACE</code>
    ou <code>DROP</code> / <code>CREATE</code>.</p>

  <P class="lead">Permet par exemple de créer une interface entre applis et la BdD ou encore de
    limiter la vue de certaines colonnes à certains utilisateurs</P>
</></div>

<div class="maingc7">

  <?php

  $pdo = pdo( 'ocr2' );


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
  $pdo->query( $sql );

  $sql = 'SELECT nom, espece_nom, race_nom FROM V_Animal_details limit 5';
  $req( $sql, $pdo );


  $sql = 'SHOW TABLES;';
  $req( $sql, $pdo );


  $sql = 'DESCRIBE V_Animal_details;';
  $req( $sql, $pdo );


  echo '<h3>Vue avec agrégation</h3>';
  $sql = "CREATE OR REPLACE VIEW V_Nombre_espece
AS SELECT Espece.id, nom_courant, COUNT(Animal.id) AS nb
FROM Espece
LEFT JOIN Animal ON Animal.espece_id = Espece.id
GROUP BY Espece.id;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = 'SELECT * FROM V_Nombre_espece';
  $req( $sql, $pdo );


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
  affLign( $sql );
//  $req( $sql, $pdo );

    $sql = 'SELECT id, sexe, date_naissance, nom, commentaires
FROM V_Chien_race limit 3';
    $req( $sql, $pdo, 1 );

    $sql = 'SELECT id, espece_id, race_id, mere_id, pere_id, disponible
FROM V_Chien_race limit 3';
    $req( $sql, $pdo, 1 );

  ?>

  <h3>Une vue s'utilise comme une table</h3>

  <?php

  $sql = "SELECT Race.nom, COUNT(V_Chien_race.id)
FROM Race
  INNER JOIN V_Chien_race ON Race.id = V_Chien_race.race_id
GROUP BY Race.nom;";
  $req( $sql, $pdo );


  echo '<h3>Vue avec chaîne</h3>';
  $sql = "CREATE OR REPLACE VIEW V_Espece_dollars
AS SELECT id, nom_courant, nom_latin, description,
          ROUND(prix*1.31564, 2) AS prix_dollars
FROM Espece;";

  affLign( $sql );
  $pdo->query( $sql );

  $sql = 'SELECT * FROM V_Espece_dollars';
  $req( $sql, $pdo );


  echo '<h3>Vue avec tri</h3>
<p>Fonctionne bien sauf pour les <code>LIMIT</code>dont le comportement est indéfini</p>';
  $sql = "CREATE OR REPLACE VIEW V_Race
AS SELECT Race.id, nom, Espece.nom_courant AS espece
FROM Race
INNER JOIN Espece ON Espece.id = Race.espece_id
ORDER BY nom;";

  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT *
FROM V_Race;
-- Sélection sans ORDER BY, on prend l'ORDER BY de la définition";
  $req( $sql, $pdo );

  $sql = "SELECT *
FROM V_Race
ORDER BY espece;
-- Sélection avec ORDER BY,
-- c'est celui-là qui sera pris en compte";
  $req( $sql, $pdo );


  echo '<h3>Usage pour simplifier lecture si requête complexe</h3>
<p>Exemple: Connaître les espèces qui rapportent le plus, années après années</p>';
  $sql = "CREATE OR REPLACE VIEW V_Revenus_annee_espece
AS SELECT YEAR(date_reservation) AS annee,
   Espece.id AS espece_id,
   SUM(Adoption.prix) AS somme, COUNT(Adoption.animal_id) AS nb
FROM Adoption
  INNER JOIN Animal ON Animal.id = Adoption.animal_id
  INNER JOIN Espece ON Animal.espece_id = Espece.id
GROUP BY annee, Espece.id;";
  affLign( $sql );
  $pdo->query( $sql );

  $sql = "SELECT * FROM V_Revenus_annee_espece";
  $req( $sql, $pdo );

  echo 'Avec une requête simple maintenant :';

  $sql = "SELECT annee, SUM(somme) AS total
FROM V_Revenus_annee_espece
GROUP BY annee;";
  $req( $sql, $pdo );

  echo 'Ou pour chaque espèce :';
  $sql = "SELECT Espece.nom_courant AS espece, SUM(somme) AS total
FROM V_Revenus_annee_espece
  INNER JOIN Espece
  ON V_Revenus_annee_espece.espece_id = Espece.id
GROUP BY espece;";
  $req( $sql, $pdo );

  echo 'Ou encore, la moyenne que rapporte la vente d\'un individu pour chaque espèce :';
  $sql = "SELECT Espece.nom_courant AS espece,
       SUM(somme)/SUM(nb) AS moyenne
FROM V_Revenus_annee_espece
  INNER JOIN Espece
  ON V_Revenus_annee_espece.espece_id = Espece.id
GROUP BY espece;";
  $req( $sql, $pdo );

  ?>

  <h3>Algorythmes</h3>
  <ul>
    <li><code>UNDEFINED</code> (Défaut qui laisse MySQL choisir son algoryhtme)</li>
    <li><code>MERGE</code> Fusionne les résultats des requêtes sous-jacente, pas toujours possible,
      notemment s'il y a des fonctions d'agrégation par exemple, ou autres (<code>DISTINCT</code>,
      <code>LIMIT</code>, <code>HAVING</code>, <code>UNION</code>, ou sous-requête dans la clause
      <code>SELECT</code>.
    </li>
    <li><code>TEMPTABLE</code> Créée une table intermédiaire temporaire (Moins performant)</li>
  </ul>

  <p>Exemple avec <code>MERGE</code> = Fusion<br>(Comportement choisi par MySQL par défaut quand
    cela est possible)</p>
  <?php


  $sql = "SELECT nom, date_naissance, pere_id
FROM V_Chien
WHERE pere_id IS NOT NULL;";
  $req( $sql, $pdo );

  echo '<h3><=></h3>';

  $sql = "SELECT nom, date_naissance, pere_id
FROM Animal
WHERE espece_id = 1
AND pere_id IS NOT NULL;";
  $req( $sql, $pdo );

  ?>

  <h4>Conditions pour qu'une vue permette de modifier des données (Requêtes <code>UPDATE</code>),
    d'en insérer (<code>INSERT</code>) ou d'en effacer (<code>DELETE</code>)</h4>
  <ul>
    <li>Ne doit modifier qu'une seule table</li>
    <li>Doit avoir utilisé l'algorythme MERGE (Choisi par MySQL ou l'utilisateur)</li>
    <li>Si la vue est elle-même définie à partir d'une autre vue qui ne permet pas la modification
    </li>
    <li>Si la clause <code>WHERE</code> de la vue contient une sous-requête faisant référence à une
      des tables de la clause <code>FROM</code>.
    </li>
    <li>Pour INSERT:
      <ul>
        <li>les colonnes n'ayant pas de valeur par défaut (et non NULL) doivent ête référencées par
          la vue.
        </li>
        <li>Si jointure, elles ne peuvent être qu'internes, et l'insertion sur une seule table</li>
      </ul>
    </li>
  </ul>
  Options de la vue: <code>WITH [LOCAL | CASCADED] CHECK OPTION</code> :<br>
  Modifications et insertions doivent répondre aux conditions de la vue définies par sa clause
  <code>WHERE</code>

  <h3>Exemple:</h3>
  <code>
    CREATE OR REPLACE VIEW V_Animal_stagiaire<br>
    AS SELECT id, nom, sexe, date_naissance, espece_id, race_id, mere_id, pere_id, disponible<br>
    FROM Animal<br>
    WHERE espece_id = 2<br>
    WITH CHECK OPTION;</code>
  n'acceptera que des opérations (<code>UPDATE</code> ou <code>INSERT</code>) avec espece_id = 2<br>
  <ul>
    <li><code>LOCAL</code>Seules les conditions de la vue sont vérifiées</li>
    <li><code>CASCADED</code>Les conditions des vues sous-jacentes éventuelles sont également
      vérifiées. C'est l'option par défaut.
    </li>
  </ul>
  <?php


  echo str_repeat( '<br>', 28 ); // 28
  ?>

</div>
