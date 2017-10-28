<?php
namespace GC7;

//
//$subject = "abcdef";
//$pattern = '/^def/';
//preg_match($pattern, $subject, $matches, PREG_OFFSET_CAPTURE, 3);
//print_r($matches);


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
//include ('subreq.php');

// Jointures et sous-requêtes
//include ('joints.php');

// UNION de plusieurs requêtes
//include ('union.php');

// Clés étrangèes (Foreign Keys)
//include ('foreign_key.php');

// Fonctions natives MySQL
//include ('functions.php');
//include ('functionsAgregation.php');
//include ('regroupement.php');
//include ('date.php');
//include ('calculsDate.php');
include ('tests.php');




//$maReq = new Requete( (Array) $req );



//////////////////////////////////////////////////////////////////////////////////////////
//include( '../class/Req.php' );
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
