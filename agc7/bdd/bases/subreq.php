<?php
namespace GC7;
?>
<div class="jumbotron">
  <h1 class="meaDo pb10"><a
      href="https://openclassrooms.com/courses/administrez-vos-bases-de-donnees-avec-mysql/sous-requetes"
      target="_blank">Sous-requêtes</a></h1>
</div>
<div class="maingc7">
  <?php

  $pdo = pdo( 'laravel' );
  echo '<h5>Factures avec pseudos (Sous-requête dans SELECT)</h5>';
  $sql = 'SELECT id AS num, clt_id,
  (SELECT name FROM users WHERE users.id=factures.clt_id) AS pseudo,
   date, total
FROM factures
LIMIT 3';
  $req( $sql, $pdo );

  echo '<h5>Facture de GrCOTE7 (Sous-requête dans WHERE)</h5>';
  $sql = 'select concat("00",id) as num, clt_id, date, total
from factures
where clt_id=(select id from users where name="GrCOTE7")';
  $req( $sql, $pdo );

  echo '<mark class="mt10">Les 2 premières peuvent être réalisées avec jointures, pas celle
ci-dessous)</mark><br>';
  echo '<h5 class="mt10">Facture du dernier client (Sous-requête dans WHERE)</h5>';
  $sql = 'select concat("00",id) as num, clt_id, date, total
from factures where id=(select max(id) from clients)';
  $req( $sql, $pdo );

  echo '<h5>Pseudos des users qui sont aussi clients (Sous-requête corrélée)</h5>';
  $sql = 'SELECT users.id AS "User Id",
       ( SELECT CONCAT("00", clients.id, " | ", nom) FROM clients
       WHERE clients.user_id = users.id ) AS "Numéro & Nom client",
       name AS pseudo, email
FROM users
WHERE users.id IN ( SELECT user_id FROM clients
                    WHERE clients.user_id = users.id )';
  $req( $sql, $pdo );

  echo '<h5>Les 3 premiers users n\'ayant pas de facture<br>(Sous-requête corrélée)</h5>';
  $sql = 'select id, name as pseudo, email
from users
where id not in  (
	select id from factures
	where factures.clt_id = users.id
) limit 3';
  $req( $sql, $pdo );

  echo '<h5>Idem précédent mais avec [NOT] EXITS<br>(Sous-requête corrélée)</h5>';
  $sql = 'select id, name as pseudo, email
from users
where not exists  (
	select * from factures
	where factures.clt_id = users.id
) limit 3';
  $req( $sql, $pdo );


  ?>
  <div class="jumbotron jumbotronRef">
    <h3 class="h3-responsive text-center">Les 3 tables de référence</h3>
    <?php
    aff( 'Users (Les 3 premiers)' );
    $sql = 'select id, name as pseudo, email, role from users where id in (1,15,16)';
    $req( $sql, $pdo );

    aff( 'Clients' );
    $sql = 'select id, user_id, nom, prenom, date_naissance from clients';
    $req( $sql, $pdo );

    aff( 'Factures' );
    $sql = 'select concat("00",id) as num, clt_id, date, total from factures';
    $req( $sql, $pdo );
    ?>
  </div>
</div>
