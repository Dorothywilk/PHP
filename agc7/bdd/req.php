<?php

// $q pour Question
// $q = 'select id, nom, pere from transports';
//$q = 'select title, slug from categories';
//$q = 'select nom, email from clients';

echo '<h1>oki 21 abc


</h1>';

// Trouve le père de id = 12
//$q='SELECT * FROM transports WHERE id = (SELECT pere FROM transports WHERE id = 12)';


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


$q=file_get_contents('sql/req.sql');

echo $q;

// $r pur Réponse
$r = $cnx->query( $q )
         ->fetchAll( PDO::FETCH_OBJ );

// Affichage Réel
if ( $r ) {
	affR( $r );
	aff( $r );
}
