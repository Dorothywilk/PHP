<?php

// $q pour Question
 $q = 'select id, nom, pere from transports limit 7, 2';
 //$q = 'select title, slug from categories';
//$q = 'select nom, email from clients';

echo $q;

// $r pur Réponse
$r = $cnx->query( $q )
         ->fetchAll( PDO::FETCH_OBJ );

// Affichage Réel
affR( $r );


$t=[
  'prenom'  	=>  'Jade',
  'nom'		=>	'W.',
];

echo $t['prenom'] . ' ' . $t['nom'];

aff($t);

affR([$t]);
