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
function affR( $r )
{ //aff( $r );
	// $args = func_get_args(); // Réc arguments

	$ps = array_keys( (array) $r[0] ); // Get les clefs, nom des propriété
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
		foreach ( $row as $p ) { // p comme propriété
			echo '<td>' . $p . '</td>';
		}
		echo '</tr>';
	}

	echo '</table>';
}


















