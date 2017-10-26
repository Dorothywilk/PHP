<?php
namespace GC7;

//$q = "
//Procedure RecherchePeres (in i integer, inout reponse string)
//begin
//   reponse = reponse + ', ' + (SELECT name
//                               FROM transports
//                               WHERE id = i)
//if i = 0
//then
//   return
//else
//   i = (SELECT pere
//        FROM transports
//        WHERE id = i)
//end
//
//";

include( '../class/Req.php' );

$sql = 'select id, name as pseudo, email from users where id in (1,15,16)';
aff('Users');
req($sql);

$sql = 'select id, id_user, nom, prenom, date_naissance from clients';
aff('Clients');
req($sql);

$sql = 'select id as num, clt_id, date, total from factures';
aff('Factures');
req($sql);
























function req($sql) {
$cnx = new \PDO( 'mysql:host=localhost;dbname=laravel;charset=utf8', 'root', '' );

$r = $cnx->query( $sql )
    ->fetchAll( \PDO::FETCH_OBJ );
  affR($r);
}

//$maReq = new Requete( (Array) $req );


//////////////////////////////////////////////////////////////////////////////////////////
// Exemple requête simple
//$req = [
//  'sql' => 'req'
//];
//
//$maReq = new Requete( (Array) $req );
//echo $maReq->sql;
//affR( $maReq->réponse );

//////////////////////////////////////////////////////////////////////////////////////////
// Exemple requête père
//$req = [
//  'sql' => 'getPere1',
//  'item' => 'Transport'
//  //  'item' => 'Marin'
//];
//$maReq = new Requete( (Array) $req );
//aff('Recherche Père');
//affR( $maReq );


// Affichage Réel
if ( isset( $r ) ) {
  affR( $r );
//aff( $r );
}


//ToUpLi Macro formatAndSave ds PhpS
