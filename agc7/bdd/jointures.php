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
//  aff($rep);
  affR( $rep );
};

$nbr = function ( $table ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

  return $cnx->query( 'select count(*) from ' . $table )->fetch()[ 0 ];
};


echo( 'Factures avec pseudos (Sous-requête dans SELECT)' );
$sql = 'select id as num, clt_id,
(select name from users where users.id=factures.clt_id)
as pseudo, date, total from factures limit 3';
//aff( $sql );
//$req( $sql );

?>
<div class="jumbotron">
  <p class="h3-responsive">Les tables de référence</p>
  <?php
  $sql = 'select id, nom, espece, sexe from pets limit 3';
  aff( 'Pets (Les 3 premiers ' . '/' . $nbr( 'pets' ) . ')' );
  $req( $sql );

  aff( 'Clients' );
  $sql = 'select id, user_id, nom, prenom, date_naissance from clients';
  $req( $sql );

  aff( 'Factures' );
  $sql = 'select concat("00",id) as num, clt_id, date, total from factures';
  $req( $sql );
  ?>
</div>
