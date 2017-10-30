<?php
namespace GC7;
?>
<div class="jumbotron">
  <h3 class="meaDo mt10 pb10">Clés étrangères</h3>

  <p class="lead mt10">
    Pour automatiser cohérences des opérations <code>INSERT</code>, <code>UPDATE</code> et <code>DELETE</code> entre 2 tables
  </p>

  <p>Options: <code>RESTRICT</code> | <code>SET NULL</code> | <code>CASCADE</code></p>

  <p>NB:
  <ul>
    <li><code>IGNORE</code> permet d'ignorer le message d'erreur mais la contrainte est respectée
    </li>
    <li><code>REPLACE</code> au lieu de <code>INSERT</code> force les modifs (Voir exemple)</li>
    <li><code>ON DUPLICATE KEY UPDATE</code> permet une alternative (Voir exemple)</li>
  </ul>
</div>
<?php

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
//$req($sql);

$sql = 'select * from pets limit 3';
$req( $sql );


?>
<div class="jumbotron jumbotronRef">
  <p class="h3-responsive text-center">Les tables de référence</p>
  <?php
  $sql = 'SELECT id, clt_id, nom, espece, sexe, date_naissance
FROM pets LIMIT 4';
  aff( 'Pets (Les 4 premiers /' . $nbr( 'pets' ) . ')' );
  $req( $sql );

  aff( 'Clients (Les 3 premiers /' . $nbr( 'clients' ) . ')' );
  $sql = 'SELECT id, nom, prenom, date_naissance FROM clients';
  $req( $sql );

  aff( 'Users (Les 3 premiers /' . $nbr( 'users' ) . ')' );
  $sql = 'SELECT id, name AS pseudo, email, role
FROM users WHERE id IN (1,15,16)';
  $req( $sql );
  ?>
</div>
