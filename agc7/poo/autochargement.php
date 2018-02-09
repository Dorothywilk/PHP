<?php namespace Poo;


//echo str_replace('\\', '/',strtolower(__NAMESPACE__));


spl_autoload_register( function ( $classe ) {
	$classe = str_replace( 'Poo\\', 'class/', $classe );
	echo '<h4><b>Classe ' . $classe . ' automatiquement importée</b></h4>';
	include $classe . '.php';
} );

$gt1308 = new Voiture( 'Simca' );
echo 'Ma bonne vieille 1308 GT était une ' . strtoupper( $gt1308->getMarque() );
echo '<hr>';

$peter = new Kid;
echo '<code>&nbsp;$peter = new Kid;<br>&nbsp;
echo $peter;</code><br>
=> ' . $peter;
echo '<hr>';



