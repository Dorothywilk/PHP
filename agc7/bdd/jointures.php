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
// Req pour initiales en maj
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


echo( '...' );
$sql = 'select * from pets';
aff( $sql );
//affR( [$sql] );
$req( $sql );

?>
<div class="jumbotron">
  <p class="h3-responsive">Les tables de référence</p>
  <?php
  $sql = 'select id, clt_id, nom, espece, sexe from pets limit 3';
  aff( 'Pets (Les 3 premiers ' . '/' . $nbr( 'pets' ) . ')' );
  $req( $sql );

  aff( 'Animal (Les 3 premiers ' . '/' . $nbr( 'animals' ) . ')' );
  $sql = 'select id, nom, espece, sexe, commentaires from animals limit 3';
  $req( $sql );

  aff( 'Animal (Les 3 premiers ' . '/' . $nbr( 'users' ) . ')' );
  $sql = 'select id, name as pseudo, email, role from users where id in (1,15,16)';
  $req( $sql );
  ?>
</div>
