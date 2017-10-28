<?php
namespace GC7;
?>
<div class="jumbotron">
  <h1 class="h1-responsive meaDo">Sous-requêtes</h1>
</div>
<?php
$req= function ($sql) {
  $cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

  $rep = $cnx->query( $sql )
    ->fetchAll( \PDO::FETCH_OBJ );
  affR($rep);
};


echo ('Factures avec pseudos (Sous-requête dans SELECT)');
$sql = 'select id as num, clt_id,
(select name from users where users.id=factures.clt_id)
as pseudo, date, total from factures limit 3';
aff($sql);
$req($sql);


echo('Facture de GrCOTE7 (Sous-requête dans WHERE)');
$sql = 'select id as num, clt_id, date, total
from factures
where clt_id=(select id from users where name="GrCOTE7")';
aff($sql);
$req($sql);

echo '<mark>Les 2 premières peuvent être réalisées avec jointures, pas celle ci-dessous)</mark><br>';
echo('Facture du dernier client (Sous-requête dans WHERE)');
$sql = 'select concat("00",id) as num, clt_id, date, total
from factures where id=(select max(id) from clients)';
aff($sql);
$req($sql);

echo('Pseudos des users qui sont aussi clients (Sous-requête corrélée)');
$sql = 'select name as pseudo, email
from users
where id in (
select user_id from clients
where clients.user_id = users.id
)';
aff($sql);
$req($sql);

echo('Les 3 premiers users n\'ayant pas de facture<br>(Sous-requête corrélée)');
$sql = 'select id, name as pseudo, email
from users
where id not in  (
	select id from factures
	where factures.clt_id = users.id
) limit 3';
aff($sql);
$req($sql);



echo('Idem précédent mais avec [NOT] EXITS<br>(Sous-requête corrélée)');
$sql = 'select id, name as pseudo, email
from users
where not exists  (
	select * from factures
	where factures.clt_id = users.id
) limit 3';
aff($sql);
$req($sql);










?>
<div class="jumbotron">
  <p class="h3-responsive">Les 3 tables de référence</p>
<?php
aff('Users (Les 3 premiers)');
$sql = 'select id, name as pseudo, email, role from users where id in (1,15,16)';
$req($sql);

aff('Clients');
$sql = 'select id, user_id, nom, prenom, date_naissance from clients';
$req($sql);

aff('Factures');
$sql = 'select concat("00",id) as num, clt_id, date, total from factures';
$req($sql);
?>
</div>
