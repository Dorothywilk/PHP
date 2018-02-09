<?php namespace Gc7;

spl_autoload_register( function ( $classe ) {
	echo '<h4><b>Classe ' . $classe . ' automatiquement importée</b></h4>';
	spl_autoload( 'class/' . ucfirst( strtolower( str_replace( 'Gc7\\', '', $classe ) ) ) );
} );

$gt1308 = new Camion( 'Simca' );
echo $gt1308->getMarque();
echo '<hr>';

$peter = new Kid;
echo '<hr>';
echo $peter;

