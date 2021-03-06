<?php
namespace GC7;
?>
<div class="jumbotron">

  <h1 class="meaDo mt10 pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/regroupement"
      target="_blank">Regroupement</a></h1>

  <p class="lead mt10">
    Regroupement de lignes en fonction d'un critère, voire de plusieurs
  </p>

  <p class="lead pv0">
    <code>GROUP BY</code>
  </p>
</div>

<div class="maingc7">

  <?php


  $sql2 = "SELECT (select nom_courant from espece where id=espece_id),
COUNT(*) AS 'Nombre'  FROM animal
GROUP BY espece_id";
  $req( $sql2 );


  $sql1 = "SELECT (select nom_courant from espece where id=espece_id),
COUNT(*) AS 'Mâles'  FROM animal
where sexe='M'
GROUP BY espece_id";
  $req( $sql1 );


  $sql = 'SELECT Espece.nom_courant, COUNT(animal.espece_id) AS nb_animaux
FROM Animal
  RIGHT JOIN Espece ON Animal.espece_id = Espece.id
  -- RIGHT puisque la table Espece est à droite.
GROUP BY nom_courant
ORDER BY nb_animaux desc;';
  $req( $sql );


  $sql = "SELECT nom_courant, COUNT(*) as nb_animaux
FROM Animal
INNER JOIN Espece ON Espece.id = Animal.espece_id
GROUP BY nom_courant";
  //aff( $sql );
  //$req( $sql );


  $sql = "SELECT sexe, COUNT(*) as nb_animaux
FROM Animal
GROUP BY sexe";
  $req( $sql );


  // Regroupement sur plusieurs critères

  $sql = "SELECT nom_courant, sexe, COUNT(*) as nb_animaux
FROM Animal
INNER JOIN Espece ON Espece.id = Animal.espece_id
GROUP BY nom_courant, sexe";
  $req( $sql );


  $sql = '-- Super-agrégat WITH ROLLUP

SELECT nom_courant, sexe, COUNT(*) as nb_animaux
FROM Animal
INNER JOIN Espece ON Espece.id = Animal.espece_id
where sexe is not null
GROUP BY sexe, nom_courant WITH ROLLUP';
  $req( $sql );


  $sql = 'SELECT nom_courant, COUNT(*) AS "Nombre"
FROM animal
INNER JOIN Espece ON Espece.id = Animal.espece_id
GROUP BY nom_courant WITH ROLLUP';
  $req( $sql );


  $sql = '-- Utilisation de <g>COALESCE</g> (Remplace NULL par la chaîne)

SELECT COALESCE(nom_courant, "<g>Total :</g>"), COUNT(*) as "nb d\'animaux"
FROM Animal
INNER JOIN Espece ON Espece.id = Animal.espece_id
GROUP BY nom_courant WITH ROLLUP';
  $req( $sql );


  $sql = '-- Utilisation de HAVING

SELECT nom_courant, COUNT(*) as nombre
FROM Animal
  INNER JOIN Espece ON Espece.id = Animal.espece_id
GROUP BY nom_courant
having nombre > 15;';
  $req( $sql );


  $sql = '-- Prix moyen d\'un chien ou d\'un chat, par espèce et en général

SELECT coalesce(nom_courant, "Moyenne Pondérée") AS Espèce,
round(AVG(Race.prix),2) AS "prix moyen"
FROM Race
  INNER JOIN Espece
  ON Race.espece_id = Espece.id
WHERE Espece.nom_courant IN ("Chat", "Chien")
GROUP BY Espece.nom_courant WITH ROLLUP';
  $req( $sql );

  $sql = '-- Combien avons-nous de perroquets mâles et femelles,
-- et quels sont leurs noms ?

select sexe, count(nom) as nb, group_concat(nom SEPARATOR ", ") Nom
from animal
  INNER JOIN espece on espece.id = espece_id
where nom_courant like "%perroquet%"
group by sexe
order by sexe desc';
  $req( $sql );


  $sql = '-- Coût, par espèce et au total, de l\'adoption de
-- Parlotte, Spoutnik, Caribou, Cartouche, Cali, Canaille, Yoda,
-- Zambo et Lulla

SELECT Espece.nom_courant,
SUM(COALESCE(Race.prix, Espece.prix)) AS somme
FROM Animal
  INNER JOIN Espece ON Espece.id = Animal.espece_id
  LEFT JOIN Race ON Race.id = Animal.race_id
WHERE Animal.nom IN ("Parlotte", "Spoutnik", "Caribou",
"Cartouche", "Cali", "Canaille", "Yoda", "Zambo", "Lulla")
GROUP BY Espece.nom_courant WITH ROLLUP';
  $req( $sql );


  ?>
  <div class="jumbotron jumbotronRef">
    <p class="h3-responsive text-center">Les tables de référence</p>
    <?php
    $sql = 'select Id, Sexe, Nom, Commentaires, Espece_id, Race_id
from animal limit 3';
    aff( 'Animal (Les 3 premiers /' . $nbr( 'animal' ) . ')' );
    $req( $sql );

    aff( 'Race (Les 3 premiers /' . $nbr( 'race' ) . ')' );
    $sql = 'select * from race limit 3';
    $req( $sql );

    aff( 'Espèce (Les 3 premiers /' . $nbr( 'espece' ) . ')' );
    $sql = 'select * from espece limit 3';
    $req( $sql );

    aff( 'Espèce (Les 3 premiers /' . $nbr( 'espece' ) . ')' );
    $sql = "select id, nom_courant, nom_latin,
concat(left(description, 28), '...'), prix from espece limit 3";
    $req( $sql );
    ?>

  </div>
</div>
