<?php
/**
 * Created by C7.
 * User: Li
 * Date: 23/10/2017
 * Time: 18:33
 */

function aff( $v )
{
	echo '<pre>';
	print_r( $v );
	// var_dump($v);
	echo '</pre>';
}

//aff( $r );
// Aff Réponse
function affR($r)
{
	// $args = func_get_args();
	// if ( count( $args ) > 1 ) {
	// 	echo 'Il existe params';
	// }
	// $ps = array_keys( (array) $args[0][0] );

	$ps = array_keys( (array) $r[0] );
	//aff( $ps );

	echo '<table class="table table-bordered table-striped table-sm">
	<thead class="grey lighten-1">

	<tr>';
	foreach ( $ps as $p ) {
		echo '<th>' . ucfirst( $p ) . '</th>';
	}
	echo '</tr></thead>';

	echo '<tr>';
	foreach ( $r as $row ) {
		foreach ( $ps as $p ) {
			echo '<td>' . $row->$p . '</td>';
		}
		echo '</tr>';
	}
	echo '</table>';
	//echo '</pre>';
}


