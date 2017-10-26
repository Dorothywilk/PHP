<?php
namespace GC7;
?>
<div class="jumbotron">
  <h1>Jointure et sous-requêtes</h1>
  <p class="lead">
    <i class="fa fa-edit"></i> Pour mises à jour (UPDATE)
  </p>
</div>
<?php
// Req pour initiale en maj
// update animal set espece = CONCAT(UCASE(SUBSTRING(espece, 1, 1)), LCASE(SUBSTRING(espece, 2)))

$req = function ( $sql ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

  $rep = $cnx->query( $sql )
    ->fetchAll( \PDO::FETCH_OBJ );
  affR( $rep );
};


echo( 'Factures avec pseudos (Sous-requête dans SELECT)' );
$sql = 'select id as num, clt_id,
(select name from users where users.id=factures.clt_id)
as pseudo, date, total from factures limit 3';
aff( $sql );
$req( $sql );


?>
<div class="jumbotron">
  <p class="h3-responsive">Les 3 tables de référence</p>
  <?php
  aff( 'Users (Les 3 premiers)' );
  $sql = 'select id, name as pseudo, email, role from users where id in (1,15,16)';
  $req( $sql );

  aff( 'Clients' );
  $sql = 'select id, user_id, nom, prenom, date_naissance from clients';
  $req( $sql );

  aff( 'Factures' );
  $sql = 'select concat("00",id) as num, clt_id, date, total from factures';
  $req( $sql );
  ?>
</div>
