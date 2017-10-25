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

include('../class/Req.php');

$req = [
  'sql'  => 'getPere.sql',
  'item' => 'Parachute'
];

$maReq = new Requete((Array) $req);



//$q=sprintf(file_get_contents($req['sql']), $req['item']);




affR($maReq);
aff($maReq);


//echo $q;

// $r pur Réponse
//$r = $cnx->query( $q )
//         ->fetchAll( PDO::FETCH_OBJ );

// Affichage Réel
if ( isset($r) ) {
	affR( $r );
//	aff( $r );
}
