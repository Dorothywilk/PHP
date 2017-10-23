<?php


// $q pour Question
$q = 'select * from transports limit 7';
// $q = 'select * from categories limit 7';
aff( $q );

// $r pur Réponse
$r = $cnx->query( $q )
	   ->fetchAll( PDO::FETCH_OBJ );

// aff( $r );


// Affichage Réel
affR( $r );


function affR()
{
	$args = func_get_args();
	if ( count( $args ) > 1 ) {
		echo 'Il existe params';
	}

	$ps = array_keys( (array) $args[0][0] );


	//echo '<tr>';
	//echo' </tr>';
	//echo '<tr>';

	echo '<table class="table table-bordered table-striped table-sm">
	<thead class="grey lighten-1">
	<tr>';
	foreach ( $ps as $p ) {
		echo '<th>' . ucfirst( $p ) . '</th>';
	}
	echo '</tr></thead>';


	foreach ( $args[0] as $k=>$row ) {
		echo
			'<td>'.($k).' --- ' . $row->id . '</td>
		<td>'.($k).' --- ' .  $row->nom . '</td>
		<td>' . $row->pere . '&nbsp;</td>';

		echo '</tr>';
	}
	echo '</table>';
	//echo '</pre>';
}
