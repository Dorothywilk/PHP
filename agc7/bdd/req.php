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
    'sql' => 'getPere1.sql',
    'item' => 'Marin'
];
$maReq = new Requete((Array)$req);
affR($maReq);
//aff($maReq);

echo 'Oki';

// Affichage Réel
if (isset($r)) {
    affR($r);
//aff( $r );
}
