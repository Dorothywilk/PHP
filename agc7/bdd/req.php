<?php

// $q pour Question
//$q = 'select * from transports limit 99';
$q = 'select title, slug from categories';
echo '<mark>';
echo $q;
echo '</mark>';

// $r pur Réponse
$r = $cnx->query( $q )
         ->fetchAll( PDO::FETCH_OBJ );

// Affichage Réel
affR( $r );


