<?php

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

//$q = import 'req.sql';


$req = [
  'sql'  => 'sql/getPere.sql',
  'item' => 'Parachute'
];

$q=sprintf(file_get_contents($req['sql']), $req['item']);







echo $q;

// $r pur Réponse
$r = $cnx->query( $q )
         ->fetchAll( PDO::FETCH_OBJ );

// Affichage Réel
if ( $r ) {
	affR( $r );
//	aff( $r );
}
