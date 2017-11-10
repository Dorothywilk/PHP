<?php
namespace GC7;
?>
<div class="jumbotron">
  <h1 class="meaDo mt10 pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/union-de-plusieurs-requetes"
      target="_blank">UNION [ALL]</a></h1>

  <p class="lead mt10">
    Pour UNION de 2 (ou +) résultats de requêtes
  </p>
</div>
<div class="maingc7">
  <?php
  // Req pour initiales en maj
  // update animal set espece = CONCAT(UCASE(SUBSTRING(espece, 1, 1)), LCASE(SUBSTRING(espece, 2)))

  $pdo = pdo( 'ocr' );

  $sql = '(SELECT animal.id, animal.nom, ("<em>Non renseigné</em>") AS propriétaire,
espece_id, sexe,
"animal" AS "< Table"
FROM animal limit 3)
UNION
(select adoption.animal_id, adoption.prix,
    (select concat(client.nom, " (", adoption.client_id, ")")
from client
where client.id=adoption.client_id) as p, adoption.animal_id,
prix, "adoption"
from adoption
where client_id > 0 order by adoption.client_id limit 70)
order by id limit 8';
  // order by id // Est prioritaire si placé avant limit 6
  $req( $sql, $pdo );

  echo '<h3>UNION ALL</h3>Sans cette option, dédoublonnage automatique ( = DISTINCT induit)</h3>';
  $sql = 'select id, nom, espece_id, sexe, date_naissance, "sql 1" as "Source"
from animal
UNION ALL
(SELECT id, nom, espece_id, sexe, date_naissance, "sql 2" FROM animal)
order by id, Source
limit 3';
  affLign( 'SELECT id, nom, espece, sexe, date_naissance, "sql 1" AS "Source"
FROM <g>pets</g>
<g>UNION ALL</g>
(SELECT id, nom, espece, sexe, date_naissance, "sql 2"<br>FROM <g>pets</g>)
ORDER BY id, Source
LIMIT 3' );
  $pdo->query( $sql );

  ?>
</div>
