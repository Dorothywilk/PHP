<?php
namespace GC7;
?>
<div class="jumbotron">
    <h3 class="meaDo">UNION [ALL]</h3>
    <p class="lead mt5">
        Pour UNION de 2 (ou +) résultats de requêtes
    </p>
</div>
<?php
// Req pour initiales en maj
// update animal set espece = CONCAT(UCASE(SUBSTRING(espece, 1, 1)), LCASE(SUBSTRING(espece, 2)))

$req = function ( $sql ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

  $rep = $cnx->query( $sql )
    ->fetchAll( \PDO::FETCH_OBJ );
//  aff($rep);
  if ( $rep ) affR( $rep );
};

$nbr = function ( $table ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

  return $cnx->query( 'select count(*) from ' . $table )->fetch()[ 0 ];
};


$sql='(select id, nom, ("<em>Non renseigné</em>")as propriétaire, espece, sexe, "pets" as "<= Table" from pets limit 3)
UNION
(select id, nom, (select concat(users.name, " (", clt_id, ")") from users where id=clt_id) as p, espece, sexe, "animaux" from animaux where nom > "" and clt_id > 0 order by clt_id limit 66)
order by id
limit 8';
// order by id // Est prioritaire si placé avant limit 6
echo '<g>(</g>select id, nom, ("<em>Non renseigné</em>") as propriétaire, espece, sexe from <g>pets</g> limit 3<g>)</g><br>
<g>UNION</g><br>
<g>(</g>select id, nom, <mark>(</mark>select concat(users.name, " (", clt_id, ")")<br>from <mark>users</mark> where id=clt_id<mark>)</mark> as p, espece, sexe<br>from <g>animaux </g><br>where nom > "" <g>and</g> clt_id > 0 order by clt_id limit 66<g>)</g><br>order by id limit 8';
$req( $sql );

echo '<h3>UNION ALL</h3>Sinon, dédoublonnage automatique (DISTINCT induit)';
$sql='select id, nom, espece, sexe, date_naissance, "sql 1" as "Source" from pets
UNION ALL
(select id, nom, espece, sexe, date_naissance, "sql 2" from pets)
order by id, Source
limit 3';
aff('select nom, espece, sexe, date_naissance,<br>"sql 1" as "Source" from <g>pets</g>
<g>UNION ALL</g>
(select select nom, espece, sexe, date_naissance,<br>"sql 2" from <g>pets</g>)
order by id, Source
limit 3');

$req($sql);


?>
<div class="jumbotron">
  <p class="h3-responsive">Les tables de référence</p>
  <?php
  $sql = 'select id, clt_id, nom, espece, sexe from pets limit 4';
  aff( 'Pets (Les 4 premiers ' . '/' . $nbr( 'pets' ) . ')' );
  $req( $sql );

  aff( 'Animaux (Les 3 premiers ' . '/' . $nbr( 'animaux' ) . ' qui ont un propriétaire)' );
  $sql = 'select id, clt_id, nom, espece, sexe, commentaires from animaux where clt_id > ""
 limit 3';
  $req( $sql );

  aff( 'Users (Les 3 premiers ' . '/' . $nbr( 'users' ) . ')' );
  $sql = 'select id, name as pseudo, email, role from users where id in (1,15,16)';
  $req( $sql );
  ?>
</div>
