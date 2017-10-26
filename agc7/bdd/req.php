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


// Requêtes et sous-requêtes
include ('ssreq.php');




//$maReq = new Requete( (Array) $req );


//////////////////////////////////////////////////////////////////////////////////////////
include( '../class/Req.php' );
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
