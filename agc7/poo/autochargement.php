<?php namespace Poo;

spl_autoload_register( function ( $classe ) {
	$classe = str_replace( 'Poo\\', 'class/', $classe );
	echo '<h4><b>Classe ' . $classe . ' automatiquement importée</b></h4>';
	include $classe . '.php';
} );

$gt1308 = new Voiture( 'Simca' );
echo 'Ma bonne vieille caisse était une ' . strtoupper( $gt1308->getMarque().' 1308 GT' );
echo '<hr>';

$peter = new Kid;
echo '<code>&nbsp;$peter = new Kid;<br>&nbsp;
echo $peter;</code><br>
=> ' . $peter;
echo '<hr>';



