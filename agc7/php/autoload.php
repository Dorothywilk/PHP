<?php namespace Php;

spl_autoload_register( function ( $classe ) {
	$classe = str_replace( 'Php\\', 'class/', $classe );
	//echo '<h4><b>Classe ' . $classe . ' automatiquement importée</b></h4>';
	include $classe . '.php';
} );
