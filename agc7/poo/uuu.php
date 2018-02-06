<?php

//unset( $_POST );
//$_POST[ 'choix' ] = 2;

if ( isset( $_POST ) && array_key_exists( 'choix', $_POST ) && ! array_key_exists( 'choixUuu', $_POST ) &&
     isset( $_POST ) && array_key_exists( 'choix', $_POST ) && ! array_key_exists( 'choixUuu', $_POST )
) {

	$choix = substr( $_POST[ 'choix' ], 0, min( strlen( $_POST[ 'choix' ] ), 2 ) );
	
}
else {
	$choix = 123;
}

echo '$_POST[\'choix\'] : <b>' . $choix . '</b>';

