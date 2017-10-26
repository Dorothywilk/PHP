<?php
namespace GC7;


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


echo '<mark>Les 2 premières peuvent être réalisées avec jointures, pas celle ci-dessous)</mark><br>';
echo('Facture du dernier client (Sous-requête corrélée)');
$sql = 'select concat("00",id) as num, clt_id, date, total
from factures where id=(select max(id) from clients)';
aff($sql);
$req($sql);










echo '<hr>';
?>
<div class="jumbotron">
  <p class="h3-responsive">Les 3 tables de référence</p>
<?php
aff('Users');
$sql = 'select id, name as pseudo, email from users where id in (1,15,16)';
$req($sql);

aff('Clients');
$sql = 'select id, id_user, nom, prenom, date_naissance from clients';
$req($sql);

aff('Factures');
$sql = 'select concat("00",id) as num, clt_id, date, total from factures';
$req($sql);
?>
</div>
