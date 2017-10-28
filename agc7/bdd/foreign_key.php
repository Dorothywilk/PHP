<?php
namespace GC7;
?>
  <div class="jumbotron">
    <h3 class="meaDo">Clés étrangères</h3>
    <p class="lead mt5">
      Pour automatiser cohérences des opérations INSERT, UPDATE et DELETE entre 2 tables
    </p>
    <p>Options: RESTRICT | SET NULL | CASCADE</p>
    <p>NB:
     <ul>
       <li>IGNORE permet d'ignore le message d'erreur mais la contrainte est respectée</li>
       <li>REPLACE au lieu de INSERT force les modifs (Voir exemple)</li>
       <li>ON DUPLICATE KEY UPDATE permet une alternative (Voir exemple)</li>
     </ul>
      
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


//echo '<h3>UNION ALL</h3>Sinon, dédoublonnage automatique (DISTINCT induit)';
$sql='select * from pets limit 2999';
aff($sql);
$req($sql);


// Lignes pour tests des contraintes (Clé UNIQUE ou Foreign_Key)

//$sql='delete from pets where id =2'; // Fonctionne: La clé est sur clients vers animaux et non la réciproque
//$sql='insert into pets (id, clt_id, nom, espece, sexe, date_naissance) values (2, 1, "Jeny", "Chien", "F", "2014-07-05")'; // Si présente, insertion de Jeny refusée car contrainte d'unicité posée sur le champs pets.nom

//$sql='replace into pets (id, clt_id, nom, espece, sexe, date_naissance) values (2, 1, "Jeny", "Chien", "F", "2014-07-05")'; // Fonctionne car malgré la clé REPLACE écrase l'enregistremenet et le remplace par ces nouvelles valeurs.
// IMPORTANT: Si l'id n'était pas précisé, le nouvel enregistrement aurait la valeur id du compteur d'Auto-increment => En fait, tous les enregistrements qui normalement empêcheraient l'insertion avec INSERT, sont supprimés et ce nouvel enregistrement est créé.

// Changer date_naissance pour voir effet: 2 ranfs affectés !
//$sql='insert into pets (clt_id, nom, espece, sexe, date_naissance) values (1, "Jeny", "Chien", "F", "2014-06-05") ON DUPLICATE KEY UPDATE nom = "Jeny", date_naissance="2014-07-05"';
// Cette fois, même si présente, insertion de Jeny avec les SEULS params précisés en fin de commande

//$sql='delete from clients where id =1'; // Refusé par le système
//$sql='insert into clients (id, nom, prenom, date_naissance) values (1, "CÔTE", "Lionel", "1965-03-23")';
aff($sql);

//$req($sql);



$sql='select * from pets limit 3';
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
