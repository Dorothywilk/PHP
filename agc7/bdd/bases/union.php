<?php
namespace GC7;
?>
<div class="jumbotron">
  <h3 class="meaDo mt10 pb10">UNION [ALL]</h3>

  <p class="lead mt10">
    Pour UNION de 2 (ou +) résultats de requêtes
  </p>
</div>
<?php
// Req pour initiales en maj
// update animal set espece = CONCAT(UCASE(SUBSTRING(espece, 1, 1)), LCASE(SUBSTRING(espece, 2)))

$sql = '(SELECT id, nom, ("<em>Non renseigné</em>") AS propriétaire, espece, sexe,
"pets" AS "< Table"
FROM pets limit 3)
UNION
(select id, nom, (select concat(users.name, " (", clt_id, ")")
from users where id=clt_id) as p, espece, sexe, "animaux"
from animaux
where nom > "" and clt_id > 0 order by clt_id limit 66)
order by id limit 8';
// order by id // Est prioritaire si placé avant limit 6
echo '<g>(</g>SELECT id, nom, ("<em>Non renseigné</em>") AS propriétaire, espece, sexe,
"pets" AS "< Table"
FROM <g>pets
</g> LIMIT 3<g>)</g>
<g>UNION</g>
<g>(</g>SELECT id, nom, <mark>(</mark>SELECT CONCAT(users.name, " (", clt_id, ")")
FROM <mark>users</mark> WHERE id=clt_id<mark>)</mark> AS p, espece, sexe<br>FROM <g>animaux </g><br>WHERE nom > "" <g>AND</g> clt_id > 0 ORDER BY clt_id LIMIT 66<g>)</g><br>ORDER BY id LIMIT 8';
$req( $sql );

echo '<h3>UNION ALL</h3>Sinon, dédoublonnage automatique (DISTINCT induit)';
$sql = 'select id, nom, espece, sexe, date_naissance, "sql 1" as "Source"
from pets
UNION ALL
(SELECT id, nom, espece, sexe, date_naissance, "sql 2" FROM pets)
order by id, Source
limit 3';
aff( 'SELECT id, nom, espece, sexe, date_naissance, "sql 1" AS "Source"
FROM <g>pets</g>
<g>UNION ALL</g>
(SELECT id, nom, espece, sexe, date_naissance, "sql 2"<br>FROM <g>pets</g>)
ORDER BY id, Source
LIMIT 3' );
$req( $sql );


?>
<div class="jumbotron jumbotronRef">
  <h3 class="h3-responsive text-center">Les tables de référence</h3>
  <?php
  $sql = 'SELECT id, clt_id, nom, espece, sexe FROM pets LIMIT 4';
  aff( 'Pets (Les 4 premiers /' . $nbr( 'pets' ) . ')' );
  $req( $sql );

  aff( 'Animaux (Les 3 premiers /' . $nbr( 'animaux' ) . ' qui ont un propriétaire)' );
  $sql = 'SELECT id, clt_id, nom, espece, sexe, commentaires
FROM animaux WHERE clt_id > "" LIMIT 3';
  $req( $sql );
  aff( 'Users (Les 3 premiers /' . $nbr( 'users' ) . ')' );
  $sql = 'SELECT id, name AS pseudo, email, role
FROM users WHERE id IN (1,15,16)';
  $req( $sql );
  ?>
</div>
