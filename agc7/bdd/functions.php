<?php
namespace GC7;
?>
  <div class="jumbotron">
    <h3>Fonctons natives MySQL</h3>
    <p class="lead">
      Mathématiques, chaînes, etc...
    </p>
  </div>
<?php

$req = function ( $sql ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

  $cnx = $cnx->query( $sql );
  $rep =$cnx->fetchAll( \PDO::FETCH_OBJ );
    
//  aff($rep);
  if ( $rep ) {
    affR( $rep );
  }
  if (preg_match('/INSERT|UPDATE|REPLACE|DELETE/i', $sql)) {
               $nbra = $cnx->rowCount(); // Nombre de rangs affectés
               $plur = ($nbra > 1 ) ? 's' : ''; // Pluriel
               echo '=> ' . $nbra . ' rang' . $plur . ' affecté' . $plur . '<hr>';
  }
  
};

$nbr = function ( $table ) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

  return $cnx->query( 'select count(*) from ' . $table )->fetch()[ 0 ];
};


$sql='select * from pets limit 2999';
aff($sql);
$req($sql);



?>
    <div class="jumbotron">
      <p class="h3-responsive">Les tables de référence</p>
      <?php
  $sql = 'select id, clt_id, nom, espece, sexe, date_naissance from pets limit 4';
  aff( 'Pets (Les 4 premiers ' . '/' . $nbr( 'pets' ) . ')' );
  $req( $sql );

  aff( 'Clients (Les 3 premiers ' . '/' . $nbr( 'clients' ) .')');
  $sql = 'select id, nom, prenom, date_naissance from clients';
  $req( $sql );
  
//  aff( 'Animaux (Les 3 premiers ' . '/' . $nbr( 'animaux' ) . ' qui ont un propriétaire)' );
//  $sql = 'select id, clt_id, nom, espece, sexe, commentaires from animaux where clt_id > ""
// limit 3';
//  $req( $sql );

  aff( 'Users (Les 3 premiers ' . '/' . $nbr( 'users' ) . ')' );
  $sql = 'select id, name as pseudo, email, role from users where id in (1,15,16)';
  $req( $sql );
  ?>
    </div>
