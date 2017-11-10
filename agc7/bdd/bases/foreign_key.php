<?php
namespace GC7;
?>
<div class="jumbotron">
  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/options-des-cles-etrangeres"
      target="_blank">Clés étrangères</a></h1>

  <p class="lead mt10">
    Pour automatiser cohérences des opérations <code>INSERT</code>, <code>UPDATE</code> et <code>DELETE</code>
    entre 2 tables
  </p>

  <p class="lead pv0 mv0">Options: <code>RESTRICT</code> | <code>SET NULL</code> |
    <code>CASCADE</code></p>

  <p class="lead mv0">NB:
  <ul>
    <li><code>IGNORE</code> permet d'ignorer le message d'erreur mais la contrainte est respectée
    </li>
    <li><code>REPLACE</code> au lieu de <code>INSERT</code> force les modifs (Voir exemple)</li>
    <li><code>ON DUPLICATE KEY UPDATE</code> permet une alternative (Voir exemple)</li>
  </ul>
</div>
<div class="maingc7">
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

  $sql = 'select * from animal limit 3';
  $req( $sql );

  ?>

</div>
</div>
